-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 07, 2020 lúc 07:58 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kienphong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-06 23:53:57', '2020-02-06 23:53:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 11, 'ActionScheduler', '', '', '', '2020-02-07 00:39:54', '2020-02-07 00:39:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 12, 'ActionScheduler', '', '', '', '2020-02-07 00:40:00', '2020-02-07 00:40:00', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 11, 'ActionScheduler', '', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 11, 'ActionScheduler', '', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 12, 'ActionScheduler', '', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 12, 'ActionScheduler', '', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 13, 'ActionScheduler', '', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(9, 13, 'ActionScheduler', '', '', '', '2020-02-07 01:42:01', '2020-02-07 01:42:01', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(10, 13, 'ActionScheduler', '', '', '', '2020-02-07 01:42:01', '2020-02-07 01:42:01', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(11, 14, 'ActionScheduler', '', '', '', '2020-02-07 01:42:01', '2020-02-07 01:42:01', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(12, 14, 'ActionScheduler', '', '', '', '2020-02-07 02:43:05', '2020-02-07 02:43:05', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(13, 14, 'ActionScheduler', '', '', '', '2020-02-07 02:43:05', '2020-02-07 02:43:05', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(14, 22, 'ActionScheduler', '', '', '', '2020-02-07 02:43:05', '2020-02-07 02:43:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(15, 22, 'ActionScheduler', '', '', '', '2020-02-07 05:27:37', '2020-02-07 05:27:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(16, 22, 'ActionScheduler', '', '', '', '2020-02-07 05:27:39', '2020-02-07 05:27:39', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(17, 100, 'ActionScheduler', '', '', '', '2020-02-07 05:27:39', '2020-02-07 05:27:39', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(18, 100, 'ActionScheduler', '', '', '', '2020-02-07 06:27:49', '2020-02-07 06:27:49', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(19, 100, 'ActionScheduler', '', '', '', '2020-02-07 06:27:49', '2020-02-07 06:27:49', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(20, 122, 'ActionScheduler', '', '', '', '2020-02-07 06:27:49', '2020-02-07 06:27:49', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kienphongjf', 'yes'),
(2, 'home', 'http://localhost/kienphongjf', 'yes'),
(3, 'blogname', 'Kien Phong JF', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tranthithanhtra8@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=119&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:2;s:47:\"show-current-template/show-current-template.php\";i:3;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '119', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1596585236', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:1:{s:19:\"wp_inactive_widgets\";a:0:{}}', 'yes'),
(103, 'cron', 'a:19:{i:1581058713;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1581060469;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1581061198;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581062038;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581076438;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581100471;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581119637;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581119655;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581119657;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581120000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581122071;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581122081;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581122397;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581128733;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"64fe7e19c11c6aa5ae4105b856a866cd\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:15;}}}}i:1581128759;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"c4b66550e50f6ae8347c6592ebc1a4d1\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:21;}}}}i:1581129863;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"24daa8f49584a6f1b1395d475758a1de\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:23;}}}}i:1581132871;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582331731;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581057054;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581033748;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_timeout_browser_d065cfce6faf939329d1e9fed273f193', '1581638056', 'no'),
(123, '_site_transient_browser_d065cfce6faf939329d1e9fed273f193', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"80.0.3987.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1581638057', 'no'),
(125, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1581097662', 'no'),
(128, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(130, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1581076464', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(131, '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Feb 2020 09:54:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.4-alpha-47196\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"The Month in WordPress: January 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/02/the-month-in-wordpress-january-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Feb 2020 09:54:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8316\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:338:\"Following an action-packed December, 2020 is off to a fine start with some new releases and announcements. Read on to find out what happened in the WordPress project in January. Release of Gutenberg 7.2 &#38; 7.3 Gutenberg 7.2, the first Gutenberg release of 2020, was deployed on January 8th and included over 180 pull requests [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5943:\"\n<p>Following an action-packed December, 2020 is off to a fine start with some new releases and announcements. Read on to find out what happened in the WordPress project in January.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Release of Gutenberg 7.2 &amp; 7.3</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2020/01/09/whats-new-in-gutenberg-8-january/\">Gutenberg 7.2</a>, the first Gutenberg release of 2020, was deployed on January 8th and included over 180 pull requests from more than 56 contributors. This was followed soon after by <a href=\"https://make.wordpress.org/core/2020/01/22/whats-new-in-gutenberg-22-january/\">Gutenberg 7.3</a>. New features include a new Buttons block, support in adding links to Media &amp; Text block images, improvements to the Navigation and Gallery blocks, performance improvements, and accessibility enhancements. These releases also included many additional enhancements, fixes, new APIs, documentation, and more.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Proposal for an XML Sitemaps Feature Plugin</h2>\n\n\n\n<p>In June last year, a team of contributors <a href=\"https://make.wordpress.org/core/2019/06/12/xml-sitemaps-feature-project-proposal/\">proposed</a> a feature plugin that would bring standardized XML sitemaps to WordPress Core. Since then, the team has been working to bring this to reality and <a href=\"https://make.wordpress.org/core/2020/01/27/feature-plugin-xml-sitemaps/\">have now published a working plugin</a> to demonstrate this new capability.</p>\n\n\n\n<p>The plugin is still in development, but the included features already provide much-needed functionality from which all WordPress sites can benefit. You can install the plugin from your WordPress dashboard or <a href=\"https://wordpress.org/plugins/core-sitemaps/\">download it here</a>.</p>\n\n\n\n<p>Want to get involved in bringing this feature to Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, report any issues you find <a href=\"https://github.com/GoogleChromeLabs/wp-sitemaps/issues\">on GitHub</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>A New Block-Based Themes Meeting</h2>\n\n\n\n<p>The Theme Review Team has <a href=\"https://make.wordpress.org/themes/2020/01/29/new-bi-weekly-block-based-themes-meeting/\">announced</a> that they will be holding bi-weekly meetings in the #themereview channel focused on discussing block-based themes. If you are interested in discussing themes within the context of Gutenberg’s full-site editing framework, this will be the place to do so! The first meeting will be held on Wednesday, February 5, at 16:00 UTC.</p>\n\n\n\n<p>Want to get involved with the Theme Review Team or <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">become a reviewer</a>? Follow <a href=\"https://make.wordpress.org/themes/\">their blog</a>, and join the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>The Core team has started work on WordPress 5.4 and kicked off their planning with <a href=\"https://make.wordpress.org/core/2020/01/14/wordpress-5-4-planning-roundup/\">a summary post</a>. You can follow all the v5.4 updates by watching <a href=\"https://make.wordpress.org/core/tag/5-4/\">the version tag</a> on the Core team blog.</li><li>The inaugural <a href=\"https://2020.asia.wordcamp.org/\">WordCamp Asia</a> event is taking place in February. This will be the largest WordPress event in the region, bringing together around 1,500 WordPress enthusiasts from around the world.</li><li>Two WordPress community leaders, <a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> and <a href=\'https://profiles.wordpress.org/andreamiddleton/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>andreamiddleton</a>, <a href=\"https://wordpress.org/news/2020/01/wordpress-leaders-nominated-for-cmx-awards/\">were nominated for CMX awards</a> due to their work on the WordPress project, with <a href=\'https://profiles.wordpress.org/andreamiddleton/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>andreamiddleton</a> winning the award for Executive Leader of a Community Team.</li><li><a href=\"https://make.wordpress.org/core/2020/01/29/lazy-loading-images-in-wordpress-core/\">A feature plugin has been proposed</a> that introduces lazy-loading images to WordPress Core, which will be a huge step forward in improving performance all across the web.</li><li>The Core team has put together <a href=\"https://make.wordpress.org/core/handbook/tutorials/faq-for-new-contributors/\">an extensive and informative FAQ</a> to help new contributors get involved in contributing to the project.</li><li>One key priority for Gutenberg is the ability to control the block editor. There are already a number of APIs that control the experience, but there is a lack of consistency and missing APIs. <a href=\"https://make.wordpress.org/core/2020/01/23/controlling-the-block-editor/\">A method to address this</a> has been proposed.</li><li>The Design team <a href=\"https://make.wordpress.org/design/2020/01/24/gutenberg-phase-2-friday-design-update-43/\">published detailed information</a> on the recent design improvements in Gutenberg.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"People of WordPress: Robert Cheleuka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/01/people-of-wordpress-robert-cheleuka/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 Jan 2020 15:26:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8300\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:385:\"You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories. Meet Robert Cheleuka Robert is a self-taught graphic and motion designer turned web [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8428:\"\n<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Robert Cheleuka</strong></h2>\n\n\n\n<p>Robert is a self-taught graphic and motion designer turned web designer (and aspiring web developer) from Malawi, Africa. Over the years, he has grown fond of WordPress and has become a loyal user. Still, the journey is rough.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2020/01/DSC08818.jpg?resize=632%2C790&#038;ssl=1\" alt=\"Robert Cheleuka\" class=\"wp-image-8303\" data-recalc-dims=\"1\" /><figcaption>Robert Cheleuka</figcaption></figure>\n\n\n\n<h3><strong>Malawi</strong></h3>\n\n\n\n<p>Malawi is one of the poorest countries in the world. A tiny landlocked country with a population of 17 million, it’s largely rural and still considered a developing country. The average entry-level monthly pay for most skilled jobs is about $110. If you&#8217;re employed full-time in the creative industry and if you’re very lucky, you might be able to earn more than that. Employees earning more than $300 a month are rare to non-existent.</p>\n\n\n\n<p>Robert has been a freelance graphic designer since about 2011. He started by doing gigs from his dorm in college and from home. Earnings from his freelance jobs increased his interest in entrepreneurship and he started to consider starting his own creative agency.</p>\n\n\n\n<h3><strong>How Robert was introduced to WordPress</strong></h3>\n\n\n\n<p>Robert first came into contact with WordPress in 2014 when he and a friend started a local tech blog. Before that, all he knew was basic, outdated HTML from high school and some knowledge of Adobe Dreamweaver. They decided to use WordPress, and their new blog looked like it came from the future. They used a theme from the repo and got such positive feedback from the blog they decided to open a content and media publishing agency.</p>\n\n\n\n<p>While they got a few web redesign jobs thanks to the exposure the blog brought, they lacked the administrative and business skills needed and ended up going their separate ways. Then in his first real job after college Robert finally took it upon himself to learn the ins and outs of WordPress. He learned how to install WordPress on a server and did some research on customizing themes. </p>\n\n\n\n<p>With that knowledge alone he got his first web design clients and started earning nearly as much as he did at his job. Robert soon realized that free WordPress themes would only take him so far, especially with his limited code skills.</p>\n\n\n\n<p>Because in Malawi only people who travel abroad have access to credit cards, paying for premium themes was impossible. Like many WordPress designers in developing countries, Robert turned to using pirated themes instead. He knew that was both unsafe and unethical, and decided to learn how to code. Knowing how to build themes from scratch would surely help him rise above the competition. </p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?fit=632%2C632&amp;ssl=1\" alt=\"\" class=\"wp-image-8304\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?w=1080&amp;ssl=1 1080w, https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?resize=300%2C300&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?resize=1024%2C1024&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?resize=768%2C768&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<h3><strong>The WordPress community from Robert’s perspective</strong></h3>\n\n\n\n<p>Robert doesn’t have a lot of interaction with the WordPress community. Although he would search for solutions from blogs about WordPress he had never actually talked to or asked anyone from the community for a solution.&nbsp;</p>\n\n\n\n<p>Robert believes that this isolation is the result of a glass ceiling &#8212; the WordPress community is partially online and partially in-person, but there isn’t a local group in Malawi. And because Malawi, like many other developing nations, lacks a way to pay online many can’t access premium support, online learning, or most other types of professional development. No matter how welcoming the people of WordPress might be, it can still feel like it mostly belongs to those with enough privilege to conduct business on the internet.</p>\n\n\n\n<h3><strong>WordPress &amp; inclusion</strong></h3>\n\n\n\n<p>As most freelancers know, it’s really hard to learn while you also still need to earn. Add pitching to clients and shipping graphic design projects… there are only so many hours in a day.</p>\n\n\n\n<p>Robert didn’t have a programming background and had always been more of a creative person. In order to grow as a web designer/developer, he needed to learn PHP. Again, without access to a credit card, that was complicated. Also, free coding training wasn’t as widely available as it is now.</p>\n\n\n\n<p>Robert wishes that more developers would consider alternative ways for users who cannot pay for courses, themes, or plugins (whether that’s because of available infrastructure or otherwise). He wishes that WordPress tutors and developers would open up ways to accommodate aspiring learners in developing countries who cannot access plugins, courses, and themes, to be able to give back and to participate at another level.</p>\n\n\n\n<p>WordPress has allowed him to build an income he would have no other way of earning and it makes a huge difference. He believes sharing stories like his will hopefully make WordPress products and services become more universally available. In addition, he hopes that more aspiring, self-taught developers will find courage in reaching out to connect with others out there.</p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Alison Rothwell (<a href=\'https://profiles.wordpress.org/wpfiddlybits/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Josepha Haden (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>), Siobhan Cunningham (<a href=\'https://profiles.wordpress.org/siobhanseija/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>siobhanseija</a>), Topher DeRosia (<a href=\'https://profiles.wordpress.org/topher1kenobe/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>topher1kenobe</a>)</p>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=632%2C474&#038;ssl=1\" alt=\"\" class=\"wp-image-7025\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?w=1024&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=300%2C225&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=768%2C576&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\">\n<p> <em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em> </p>\n</div>\n</div>\n\n\n\n<p> <em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em> </p>\n\n\n\n<p><br></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8300\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"WordPress Leaders Nominated for CMX Awards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/news/2020/01/wordpress-leaders-nominated-for-cmx-awards/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Jan 2020 21:42:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Awards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8288\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"Two members of the WordPress leadership team were nominated for excellent work in their field in the first ever Community Industry Awards. Andrea Middleton is nominated for Executive Leader of a Community Team and Josepha Haden Chomphosy is nominated for Community Professional of the Year. CMX is one of the largest professional organizations dedicated to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4014:\"\n<p>Two members of the WordPress leadership team were nominated for excellent work in their field in the first ever Community Industry Awards. <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a> is nominated for <a href=\"https://cmxhub.com/awards-executive\">Executive Leader of a Community Team</a> and <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> is nominated for <a href=\"https://cmxhub.com/awards-professional\">Community Professional of the Year</a>.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?fit=632%2C281&amp;ssl=1\" alt=\"\" class=\"wp-image-8292\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?w=2412&amp;ssl=1 2412w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?resize=300%2C133&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?resize=1024%2C455&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?resize=768%2C341&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?resize=1536%2C683&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?resize=2048%2C910&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<p><a href=\"https://cmxhub.com/\">CMX</a> is one of the largest professional organizations dedicated to community builders. The awards were open to public nomination, and finalists were chosen by panels of their peers in the CMX community.</p>\n\n\n\n<p>Andrea has been a vital community strategist for the WordPress project since 2011. Her work to build and support a vibrant community has played a part in the success around the popular open source CMS. Her work is sponsored by Automattic, where she leads a team that focuses on educational efforts, funding, and in-person community-driven events that serve a global base.</p>\n\n\n\n<p>Josepha has been the Executive Director of the WordPress project since 2019. Her work to coordinate and guide volunteer efforts spans 20 teams and involves thousands of volunteers. Her work is also sponsored by Automattic, where she leads the open source division that focuses on all aspects of open source contribution including design, development, volunteer engagement, and the health of the overall WordPress ecosystem.</p>\n\n\n\n<h2>Votes are Open</h2>\n\n\n\n<p>Final recipients are chosen with open voting — if you feel like either Andrea or Josepha have had an impact on your careers, your trajectory in the WordPress project, or the health of WordPress as a whole, there are three ways you can show your support:</p>\n\n\n\n<ul><li>Stop by and vote for them (Andrea&nbsp;<a href=\"https://href.li/?https://cmxhub.com/awards-executive\">here</a>, Josepha&nbsp;<a href=\"https://href.li/?https://cmxhub.com/awards-professional\">here</a>)!</li><li>Share this post with your own communities!</li><li>Tweet some inspirational thoughts about your time/experience/learnings with WordPress (using&nbsp;#WordPress, naturally)!</li></ul>\n\n\n\n<h2>Thank You Notes</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>A lot of care and passion goes into making the WordPress Project as fantastic as it is. I think these awards are a reflection of how wonderful the community and ecosystem are, and I appreciate everyone&#8217;s continued trust in my stewardship!</p><cite>Josepha Haden Chomphosy</cite></blockquote>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>WordPress community organizers are some of the most generous and creative people in the world — working with them is exciting and interesting every day. I’m humbled by this nomination; thank you!</p><cite>Andrea Middleton</cite></blockquote>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8288\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: December 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2020/01/the-month-in-wordpress-december-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Jan 2020 17:05:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8282\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:353:\"As 2019 draws to a close and we look ahead to another exciting year let’s take a moment to review what the WordPress community achieved in December. WordPress 5.3.1 and 5.3.2 Releases The WordPress 5.3.1 security and maintenance release was announced on December 13. It features 46 fixes and enhancements. This version corrects four security [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8186:\"\n<p>As 2019 draws to a close and we look ahead to another exciting year let’s take a moment to review what the WordPress community achieved in December.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.3.1 and 5.3.2 Releases</h2>\n\n\n\n<p>The WordPress 5.3.1 security and maintenance release was announced on December 13. It features 46 fixes and enhancements. This version corrects four security issues in WordPress versions 5.3 and earlier. Shortly afterwards, WordPress 5.3.2 was released, addressing a couple high severity Trac tickets, and includes 5 fixes and enhancements, so you’ll want to upgrade. You can read more about these releases in the announcements for <a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-1-security-and-maintenance-release/\">5.3.1</a> and <a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\">5.3.2</a>.</p>\n\n\n\n<h2>Update on the Nine Core Projects for 2019</h2>\n\n\n\n<p>At the end of 2018, <a href=\'https://profiles.wordpress.org/matt/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>matt</a> <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">announced</a> the nine projects that would be the main focus areas for Core development in the next year. Have we made progress? Yes! <a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> <a href=\"https://make.wordpress.org/core/2019/12/06/update-9-projects-for-2019/\">posted a full update</a> on the team’s work. In brief, two of the projects have been completed and shipped in major releases, four are targeted for release in versions 5.4 and 5.5 of WordPress, and the remaining three have seen significant progress but are not yet slated for completion. These will continue to see progress throughout 2020.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordPress Major Release Calendar</h2>\n\n\n\n<p>The Core team has published <a href=\"https://make.wordpress.org/core/2019/11/21/tentative-release-calendar-2020-2021/\">a tentative release calendar</a> for 2020 and 2021. This is intended to provide the community with more information about what lies ahead.</p>\n\n\n\n<p>The schedule is considered tentative because there are always variables that could affect these plans — not least that the Core team may need more time to finish the work planned for a release.</p>\n\n\n\n<h2>Initial Documentation for Block-Based WordPress Themes</h2>\n\n\n\n<p>The Gutenberg team has started working on <a href=\"https://github.com/WordPress/gutenberg/pull/18890/files\">the initial documentation</a> for what block-based themes might look like, marking a significant change in the way themes are conceptualized. With full-site editing now a realistic goal for WordPress, themes will certainly look different in the future.</p>\n\n\n\n<p>Want to help shape the future of block-based themes in WordPress Core? Following <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> is a good start! You can also join in on the discussion <a href=\"https://make.wordpress.org/themes/2019/12/04/questions-about-the-future-of-themes/\">on this blog post</a>, or help out with the work to <a href=\"https://github.com/WordPress/gutenberg/blob/master/lib/demo-block-templates/index.html\">create a demo space for experimentation with the future of themes</a>. As always, contribution to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a> is open to everyone! Join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a> to see what other people are saying, and contribute your own thoughts.</p>\n\n\n\n<h2>Gutenberg Updates Abound</h2>\n\n\n\n<p>It’s been a busy month for Gutenberg! Version 7.0, including a new navigation block, <a href=\"https://make.wordpress.org/core/2019/11/27/whats-new-in-gutenberg-27-november/\">was announced</a> on November 27. This was followed by <a href=\"https://make.wordpress.org/core/2019/12/11/whats-new-in-gutenberg-11-december/\">version 7.1</a>, announced on December 11; it includes 161 merged pull requests that offer a fresh UI to new users, an option to switch between edit and navigation modes, captions for the table block, and many other enhancements.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Arrival of the BuddyPress Beta Tester Plugin</h2>\n\n\n\n<p>On December 2, <a href=\"https://buddypress.org/2019/12/bp-beta-tester-1-0-0/\">the BuddyPress Beta Tester plugin</a> was added to the WordPress.org plugins directory. This feature is a great way for the WordPress community to provide early feedback on releases.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/plugins/bp-beta-tester/\">download the plugin</a> now. If you find that something is not working as expected during your beta tests, let the BuddyPress team know by submitting a ticket on the <a href=\"https://buddypress.trac.wordpress.org/newticket\">Development Tracker</a> or posting a new topic in the BuddyPress <a href=\"https://buddypress.org/support/\">support forums</a>.​​</p>\n\n\n\n<h2>An Update on the Block Directory in the WordPress Editor&nbsp;</h2>\n\n\n\n<p>The Design team received lots of excellent feedback on the <a href=\"https://make.wordpress.org/design/2019/07/11/block-directory-in-wp-admin-concepts/\">early concepts for the Block Directory</a>. This feedback was incorporated into a Version 1 update to the <a href=\"https://make.wordpress.org/design/tag/block-directory/\">#block-directory</a> project. The Block Directory is to be included in WordPress 5.5, which is slated for August 2020. To learn more about the Block Directory, check out <a href=\"https://make.wordpress.org/design/2019/12/19/block-directory-in-wp-admin-v1/\">this announcement post</a> and help out by sharing your feedback. </p>\n\n\n\n<p>Want to get involved in building the Block Directory? Follow <a href=\"https://make.wordpress.org/design/\">the Design team blog</a>. If you have a block you’d like to include in the directory you can <a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines/\">submit it following the information here</a>. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li><a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines/\">Guidelines for the Block Directory</a> have been drafted; the team is actively working on them now.</li><li>The<a href=\"https://make.wordpress.org/community/2020-wordpress-global-community-sponsorship-program/\"> Global Community Sponsorship Program for 2020</a> has been announced.&nbsp;</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/12/09/do-not-contact-reviewers-outside-of-the-wordpress-org-system-about-your-review/\">has published a reminder</a> for developers about the proper way to communicate with reviewers.</li><li>The Community Team is in the process of <a href=\"https://make.wordpress.org/community/2019/12/05/community-team-reps-for-2020/\">selecting new team reps</a>.</li><li><a href=\"https://meetup.com/pro/wordpress\">The WordPress meetup program</a> crossed the 800-group mark this month and includes groups from more than 100 countries.</li><li>The team that helped to create the 2019 State of the Word slide deck <a href=\"https://wordpress.org/news/2019/12/state-of-the-word-the-story-of-the-slides/\">shared how the slides were created using Gutenberg</a>, powered by the Slides plugin.&nbsp;</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8282\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 5.3.2 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Dec 2019 22:42:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8275\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:391:\"WordPress 5.3.2 is now available! This maintenance release features 5 fixes and enhancements. WordPress 5.3.2 is a short-cycle maintenance release. The next major release will be&#160;version 5.4. You can download WordPress 5.3.2 by clicking the button at the top of this page, or visit your&#160;Dashboard → Updates&#160;and click&#160;Update Now. If you have sites that support [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2874:\"\n<p>WordPress 5.3.2 is now available!</p>\n\n\n\n<p>This maintenance release features 5 fixes and enhancements.</p>\n\n\n\n<p>WordPress 5.3.2 is a short-cycle maintenance release. The next major release will be&nbsp;version 5.4.</p>\n\n\n\n<p>You can download WordPress 5.3.2 by clicking the button at the top of this page, or visit your<strong>&nbsp;Dashboard → Updates</strong>&nbsp;and click&nbsp;<strong>Update Now</strong>.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h2>Maintenance updates</h2>\n\n\n\n<p>Shortly after&nbsp;<a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-1-security-and-maintenance-release/\">WordPress 5.3.1 was released</a>, a couple of high severity Trac tickets were opened. The Core team scheduled this quick maintenance release to resolve these issues.</p>\n\n\n\n<p>Main issues addressed in 5.3.2:</p>\n\n\n\n<ul><li>Date/Time: Ensure that&nbsp;<code>get_feed_build_date()</code>&nbsp;correctly handles a modified post object with invalid date.</li><li>Uploads: Fix file name collision in&nbsp;<code>wp_unique_filename()</code>&nbsp;when uploading a file with upper case extension on non case-sensitive file systems.</li><li>Media: Fix PHP warnings in&nbsp;<code>wp_unique_filename()</code>&nbsp;when the destination directory is unreadable.</li><li>Administration: Fix the colors in all color schemes for buttons with the&nbsp;<code>.active</code>&nbsp;class.</li><li>Posts, Post Types: In&nbsp;<code>wp_insert_post()</code>, when checking the post date to set&nbsp;<code>future</code>&nbsp;or&nbsp;<code>publish</code>&nbsp;status, use a proper delta comparison.</li></ul>\n\n\n\n<p>For more information,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;type=!task+(blessed)&amp;resolution=fixed&amp;milestone=5.3.2&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">browse the full list of changes on Trac</a>&nbsp;or check out the&nbsp;<a href=\"https://wordpress.org/support/wordpress-version/version-5-3-2/\">version 5.3.2 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks!</h2>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.3.2:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion hulse</a>, <a href=\"https://profiles.wordpress.org/eden159/\">eden159</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8275\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"State of the Word: the story of the slides\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2019/12/state-of-the-word-the-story-of-the-slides/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Dec 2019 19:27:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8233\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"Curious about the Gutenberg powered slides used during State of the Word? This post uncovers some technical and design aspects of the project!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Ella van Durpe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11767:\"\n<p>During the State of the Word at WordCamp US 2019, Matt Mullenweg shared that Gutenberg was used to create his slides and the presentation was powered by the Slides plugin. Using WordPress to power a slide deck isn’t an obvious choice, so we wanted to showcase the process and give some tips for making slide layouts using Gutenberg.</p>\n\n\n\n<p><em>This post is co-written by Ella and <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie</a>, who (along with <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a></em> <em>and a cast of supporters) helped create this year’s State of the Word slide deck.</em></p>\n\n\n\n<h2>How it Started</h2>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/ellatrix/\">Ella Van Durpe</a> was selected to speak at <a href=\"https://www.youtube.com/watch?v=ZNWNhUPrqB4\">JSConf</a> and ReactEurope and wanted slides for her presentation.&nbsp;</p>\n\n\n\n<p>In the past, she’d used Reveal.js to create slides and enjoyed the freedom to create anything using HTML, CSS and JavaScript. These languages were comfortable, familiar, and also can be published on the web in their native format.&nbsp;</p>\n\n\n\n<p>For these new presentations, she wanted to use Reveal.js again but didn’t feel like writing all the HTML by hand. Creating blocks of content visually, without having to actually write any code, which can be published natively to the web, is exactly what Gutenberg was built for.</p>\n\n\n\n<p>The plugin was prototyped quickly, with hardcoded styles on the slides and zero options. At the end of each presentation, Ella shared a brief demo of the Gutenberg-based slides and the audience was amazed.</p>\n\n\n\n<figure class=\"wp-block-embed-twitter wp-block-embed is-type-rich is-provider-twitter\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\" data-width=\"550\" data-dnt=\"true\"><p lang=\"en\" dir=\"ltr\">.<a href=\"https://twitter.com/ellatrx?ref_src=twsrc%5Etfw\">@ellatrx</a> any chance you might open source this? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://t.co/6hygMpBqUA\">https://t.co/6hygMpBqUA</a></p>&mdash; Pascal Birchler (@swissspidy) <a href=\"https://twitter.com/swissspidy/status/1131573525612048385?ref_src=twsrc%5Etfw\">May 23, 2019</a></blockquote><script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n</div></figure>\n\n\n\n<p>As WordCamp US approached, Ella suggested that her plugin be used for State of the Word. Since it was such a hit with her audience members, it seemed like this would be a great chance to share it with the WordPress community as a whole.</p>\n\n\n\n<span id=\"more-8233\"></span>\n\n\n\n<h2>How it Works</h2>\n\n\n\n<h3>Technical information</h3>\n\n\n\n<p>The plugin registers a custom post type called “presentation” and a new “slide” block. The slide block is a sort of enhanced “Group” block, which is restricted to the root of the post, but you can put any other block inside it. As a result, you have a post filled with only slides at the root and slides filled with content. This maps perfectly to the Reveal.js markup, which requires content in HTML section elements.</p>\n\n\n\n<p>Since these slides each have their own design, the theme styles are disabled and styling is set from each slide. A custom presentation template is provided by the plugin to render the custom post on the front-end.</p>\n\n\n\n<p>Then Ella added options to style the slides. For example, she added options to control the slide background and font, at both the document level and individual slide level. She also added Reveal.js options, which allow you to change the transition style and speed. Lastly, she added a custom CSS field to allow style overwrites.</p>\n\n\n\n<p>For the State of the Word, she also added speaker notes and a speaker view.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?fit=632%2C363&amp;ssl=1\" alt=\"\" class=\"wp-image-8271\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?w=1256&amp;ssl=1 1256w, https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?resize=300%2C172&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?resize=1024%2C588&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?resize=768%2C441&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<h3>How it&#8217;s Designed</h3>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?fit=632%2C515&amp;ssl=1\" alt=\"\" class=\"wp-image-8262\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?w=1114&amp;ssl=1 1114w, https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?resize=300%2C245&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?resize=1024%2C835&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?resize=768%2C626&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<p>The inspiration for the slide designs came from Blue Note album covers (which were also the inspiration for the <a href=\"https://www.slideshare.net/photomatt/state-of-the-word-2011/\">2011 State of the Word slides</a>). These album covers inspired the recent “About” page in WordPress core and the starter content for the new Twenty Twenty theme. This style consists of strong, geometric shapes and simple forms with clean lines. Photography and bold typography are at the heart of this look.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?fit=632%2C541&amp;ssl=1\" alt=\"\" class=\"wp-image-8267\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?w=3586&amp;ssl=1 3586w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?resize=300%2C257&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?resize=1024%2C877&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?resize=768%2C658&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?resize=1536%2C1316&amp;ssl=1 1536w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?resize=2048%2C1754&amp;ssl=1 2048w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<p>Various color palettes and font pairings were explored before selecting the best combination for the presentation.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?fit=632%2C407&amp;ssl=1\" alt=\"\" class=\"wp-image-8259\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?w=1311&amp;ssl=1 1311w, https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?resize=300%2C193&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?resize=1024%2C660&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?resize=768%2C495&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<p>A strong photographic element was needed for the slides. Past WordCamps are a great source of photos, so we dug through years of photo galleries to find just the right shots. With colors, fonts, and photos, we laid the foundation to build the deck.</p>\n\n\n\n<h2>Tips for Making Gutenberg Slides</h2>\n\n\n\n<h3>Tip One: columns are your friends</h3>\n\n\n\n<p>If you want slides with a precise layout, use columns. As you can see here, we used a 3 column layout to center content within a slide:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8260\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?w=874&amp;ssl=1 874w, https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?resize=300%2C168&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?resize=768%2C431&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h3>Tip Two: spacer blocks are useful</h3>\n\n\n\n<p>Want to really unlock the power of columns? Combine them with the spacer block! We used spacer blocks to position content over background images, like in this slide:</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?w=632&#038;ssl=1\" alt=\"\" class=\"wp-image-8264\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?w=865&amp;ssl=1 865w, https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?resize=300%2C171&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?resize=768%2C438&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h3>Tip Three: test on large screens</h3>\n\n\n\n<p>It’s important to preview and test your slides as you go. Make sure to design for the size and aspect ratio of the projector you’ll be using and do a visual check in presentation mode from time to time.</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?fit=632%2C405&amp;ssl=1\" alt=\"\" class=\"wp-image-8269\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?w=1096&amp;ssl=1 1096w, https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?resize=300%2C192&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?resize=1024%2C657&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?resize=768%2C493&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\n\n\n<h3>Tip Four: check your videos</h3>\n\n\n\n<p>A good demo video is integral to showcase new features. Joen Asmussen has a great post on <a href=\"https://automattic.design/2019/11/12/good-ui-demo-videos/\">creating effective demo videos</a>.</p>\n\n\n\n<h2>Lessons learned</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I’d love to make the art directed compositions easier to create. </em></p><cite><em>Mel Choyce-Dwan</em></cite></blockquote>\n\n\n\n<p>As Gutenberg evolves, one big improvement is that art direction will get easier. Even with the improvements this year, creating some layouts in Gutenberg was trickier than expected. For the more complicated compositions, we relied on SVGs. Eventually, the need for hacks will dissolve away, and a new world of exciting possibilities will open for everyone.</p>\n\n\n\n<p>Browsers offered one of our biggest learnings in this presentation, more than they would if you use Keynote or Powerpoint, for example (tools most of us have used). Often, we found that what we created in the editor varied a when viewed full-screen. We were able to mitigate this by updating the plugin to use a fixed size, instead of using the entire browser window.</p>\n\n\n\n<h2>Wrapping it up</h2>\n\n\n\n<p>If you would like to check out the State of the Word, you can watch the <a href=\"https://wordpress.tv/2019/11/03/2019-state-of-the-word/\">video</a> and read all about it in a <a href=\"https://ma.tt/2019/11/state-of-the-word-2019/\">post</a>.</p>\n\n\n\n<p>The Slides plugin is not only available on the plugin repo, but you can also get the code from <a href=\"https://github.com/WordPress/slides\">GitHub</a> and <a href=\"https://translate.wordpress.org/projects/wp-plugins/slide/\">help translate</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8233\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 5.3.1 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2019/12/wordpress-5-3-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Dec 2019 00:07:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8203\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"WordPress 5.3.1 is now available! This security and maintenance release features 46 fixes and enhancements. Plus, it adds a number of security fixes—see the list below. WordPress 5.3.1 is a short-cycle maintenance release. The next major release will be version 5.4. You can download WordPress 5.3.1 by clicking the button at the top of this page, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12709:\"\n<p>WordPress 5.3.1 is now available!</p>\n\n\n\n<p>This security and maintenance release features 46 fixes and enhancements. Plus, it adds a number of security fixes—see the list below.</p>\n\n\n\n<p>WordPress 5.3.1 is a short-cycle maintenance release. The next major release will be version 5.4.</p>\n\n\n\n<p>You can download WordPress 5.3.1 by clicking the button at the top of this page, or visit your<strong>&nbsp;Dashboard → Updates</strong>&nbsp;and click&nbsp;<strong>Update Now</strong>.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h2>Security updates</h2>\n\n\n\n<p>Four security issues affect WordPress versions 5.3 and earlier; version 5.3.1 fixes them, so you’ll want to upgrade. If you haven’t yet updated to 5.3, there are also updated versions of 5.2 and earlier that fix the security issues.</p>\n\n\n\n<ul><li>Props to <a href=\"https://danielbachhuber.com/\">Daniel Bachhuber</a> for finding an issue where an unprivileged user could make a post sticky via the REST API.</li><li>Props to <a href=\"https://blog.ripstech.com/authors/simon-scannell\">Simon Scannell of RIPS Technologies</a> for finding and disclosing an issue where cross-site scripting (XSS) could be stored in well-crafted links.</li><li>Props to the <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://wordpress.org/\">WordPress.org</a> Security Team for hardening <code>wp_kses_bad_protocol()</code> to ensure that it is aware of the named colon attribute.</li><li>Props to <a href=\"https://twitter.com/ducnt_\">Nguyen The Duc</a> for discovering a stored XSS vulnerability using block editor content.</li></ul>\n\n\n\n<h2>Maintenance updates</h2>\n\n\n\n<p>Here are a few of the highlights:</p>\n\n\n\n<ul><li>Administration: improvements to admin form controls height and alignment standardization (see related <a href=\"https://make.wordpress.org/core/2019/12/11/admin-form-controls-height-and-alignment-standardization-in-wordpress-5-3-1/\">dev note</a>), dashboard widget links accessibility and alternate color scheme readability issues (see related <a href=\"https://make.wordpress.org/core/2019/12/10/alternate-color-schemes-changes-in-wordpress-5-3-1/\">dev note</a>).</li><li>Block editor: fix Edge scrolling issues and intermittent JavaScript issues.</li><li>Bundled themes: add customizer option to show/hide author bio, replace JS based smooth scroll with CSS (see related <a href=\"https://make.wordpress.org/core/2019/12/08/twenty-twenty-animated-scroll-changes-in-wordpress-5-3-1/\">dev note</a>) and fix Instagram embed CSS.</li><li>Date/time: improve non-GMT dates calculation, fix date format output in specific languages and make&nbsp;<code>get_permalink()</code>&nbsp;more resilient against PHP timezone changes.</li><li>Embeds: remove CollegeHumor oEmbed provider as the service doesn&#8217;t exist anymore.</li><li>External libraries: update <code>sodium_compat</code>.</li><li>Site health: allow the remind interval for the admin email verification to be filtered.</li><li>Uploads: avoid thumbnails overwriting other uploads when filename matches, and exclude PNG images from scaling after upload.</li><li>Users: ensure administration email verification uses the user&#8217;s locale instead of the site locale.</li></ul>\n\n\n\n<p>For more information, <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=5.3.1&amp;order=priority\">browse the full list of changes on Trac</a> or check out the&nbsp;<a href=\"https://wordpress.org/support/wordpress-version/version-5-3-1/\">version 5.3.1 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks!</h2>\n\n\n\n<p>In addition to the security researchers mentioned above, thank you to everyone who contributed to WordPress 5.3.1:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/aljullu/\">Albert Juhé Lluveras</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/viper007bond/\">Alex Mills</a>, <a href=\"https://profiles.wordpress.org/anantajitjg/\">Anantajit JG</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Norén</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">andraganescu</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/aravindajith/\">aravindajith</a>, <a href=\"https://profiles.wordpress.org/archon810/\">archon810</a>, <a href=\"https://profiles.wordpress.org/ate-up-with-motor/\">Ate Up With Motor</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/boga86/\">Boga86</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/xendo/\">Dademaru</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion hulse</a>, <a href=\"https://profiles.wordpress.org/ehtis/\">ehtis</a>, <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">epiqueras</a>, <a href=\"https://profiles.wordpress.org/fabifott/\">Fabian</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/flaviozavan/\">flaviozavan</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz (Greg) Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/grzegorzjanoszka/\">Grzegorz.Janoszka</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/ispreview/\">ispreview</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/macmanx/\">James Huff</a>, <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/studiotwee/\">Jasper van der Meer</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jeremyclarke/\">Jer Clarke</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/justdaiv/\">justdaiv</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kharisblank/\">Kharis Sulistiyono</a>, <a href=\"https://profiles.wordpress.org/ixkaito/\">Kite</a>, <a href=\"https://profiles.wordpress.org/kyliesabra/\">kyliesabra</a>, <a href=\"https://profiles.wordpress.org/lisota/\">lisota</a>, <a href=\"https://profiles.wordpress.org/lukaswaudentio/\">lukaswaudentio</a>, <a href=\"https://profiles.wordpress.org/maciejmackowiak/\">Maciej Mackowiak</a>, <a href=\"https://profiles.wordpress.org/marcelo2605/\">marcelo2605</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/mayanksonawat/\">mayanksonawat</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/miette49/\">miette49</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mihdan/\">mihdan</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/msaari/\">Mikko Saari</a>, <a href=\"https://profiles.wordpress.org/gdragon/\">Milan Petrovic</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nextscripts/\">NextScripts</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/noyle/\">noyle</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/quicoto/\">Ricard Torres</a>, <a href=\"https://profiles.wordpress.org/murgroland/\">Roland Murg</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/samuelfernandez/\">SamuelFernandez</a>, <a href=\"https://profiles.wordpress.org/sathyapulse/\">sathyapulse</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scvleon/\">scvleon</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/sgr33n/\">SGr33n</a>, <a href=\"https://profiles.wordpress.org/simonjanin/\">simonjanin</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/steevithak/\">steevithak</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/dufresnesteven/\">Steve Dufresne</a>, <a href=\"https://profiles.wordpress.org/subratamal/\">Subrata Mal</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tanvirul/\">Tanvirul Haque</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/timon33/\">timon33</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/spaceshipone/\">Timothée Brosille</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/veminom/\">Veminom</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/waleedt93/\">waleedt93</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a>, <a href=\"https://profiles.wordpress.org/wpgurudev/\">wpgurudev</a>, and <a href=\"https://profiles.wordpress.org/tollmanz/\">Zack Tollman</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8203\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:63:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"People of WordPress: Jill Binder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/12/people-of-wordpress-jill-binder/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Dec 2019 23:27:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Interviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8192\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:377:\"You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories. Meet Jill Binder Jill Binder never meant to become an activist. She insists [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Josepha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12123:\"\n<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Jill Binder</strong></h2>\n\n\n\n<p>Jill Binder never meant to become an activist. She insists it was an accident.</p>\n\n\n\n<p>Despite that, Jill has led the Diversity Outreach Speaker Training working group in the WordPress Community team since 2017. This group is dedicated to increasing the number of women and other underrepresented groups who are stepping up to become speakers at WordPress Meetups, WordCamps, and events.&nbsp;</p>\n\n\n\n<h2><strong>Jill’s back story</strong></h2>\n\n\n\n<h3><strong>Internship</strong></h3>\n\n\n\n<p>Jill’s WordPress story begins in 2011, in Vancouver, Canada.&nbsp;Jill secured an internship for her college program, working on a higher education website that was built in WordPress.&nbsp;As a thank you, her practicum advisor bought Jill a ticket to WordCamp Vancouver 2011: Developer’s Edition. After that Jill began freelancing&nbsp; with WordPress as a Solopreneur.&nbsp;</p>\n\n\n\n<h3><strong>First steps in the WordPress community</strong></h3>\n\n\n\n<p>The following year her internship advisor, who had become a client, was creating the first ever BuddyCamp for BuddyPress. He asked Jill to be on his organizing team. At that event she also moderated a panel that had Matt Mullenweg on it. Then, Jill was invited to be on the core organizing team for WordCamp Vancouver.</p>\n\n\n\n<p>Part of this role meant reviewing and selecting speakers. From 40 speaker applications that could be a fit the team had to pick only 14 to speak.</p>\n\n\n\n<h2><strong>The diversity challenge when selecting speakers</strong></h2>\n\n\n\n<p>For anyone who has organized a conference, you know that speaker selection is hard. Of the 40 applications, 7 were from women, and the lead organizer selected 6 of those to be included in the speaker line up.</p>\n\n\n\n<p>At this point Jill wasn’t aware that very few women apply to speak at tech conferences and suggested selection should be made on the best fit for the conference. The team shared that not only did they feel the pitches were good and fit the conference, but they also needed to be accepted or the Organizers would be criticized for a lack of diversity.</p>\n\n\n\n<p>Selecting women for fear of criticism is embarrassing to admit, but that’s how people felt in 2013.</p>\n\n\n\n<p>By the time the event happened, though, the number of women speakers dropped to 4. And with an additional track being added, the number of speakers overall was up to 28. Only 1 speaker in 7 was a woman (or 14%) and attendees did ask questions and even blogged about the lack of representation.</p>\n\n\n\n<h2><strong>What keeps women from applying?</strong></h2>\n\n\n\n<p>Later that year at&nbsp; WordCamp San Francisco—the biggest WordCamp at the time (before there was a WordCamp US)—Jill took the opportunity to chat with other organizers about her experience. She found out that many organizers had trouble getting enough women to present.</p>\n\n\n\n<p>Surprisingly Vancouver had a high number of women applicants in comparison to others, and the consensus was more would be accepted&nbsp; if only more would apply.</p>\n\n\n\n<p>Jill decided that she&nbsp; needed to know why this was happening? Why weren’t there more women applying? She started researching, reading, and talking to people.</p>\n\n\n\n<p>Though this issue is complex, two things came up over and over:</p>\n\n\n\n<ul><li>“What would I talk about?”</li><li>“I’m not an expert on anything. I don’t know enough about anything to give a talk on it.”</li></ul>\n\n\n\n<h2><strong>A first workshop with encouraging results</strong></h2>\n\n\n\n<p>Then Jill had an idea. She brought up the issue at an event and someone suggested that they should get women together in a room and brainstorm speaker topics.</p>\n\n\n\n<p>So Jill became the lead of a small group creating a workshop in Vancouver: the talented Vanessa Chu, Kate Moore Hermes, and Mandi Wise. In one of the exercises that they created, participants were invited to brainstorm ideas—this proved that they had literally a hundred topic ideas and the biggest problem then became picking just one!</p>\n\n\n\n<p>In the first workshop, they focussed on:</p>\n\n\n\n<ul><li>Why it matters that women (<em>added later: diverse groups</em>) are in the front of the room</li><li>The myths of what it takes to be the speaker at the front of the room (aka beating impostor syndrome)</li><li>Different presentation formats, especially story-telling</li><li>Finding and refining a topic</li><li>Tips to become a better speaker</li><li>Leveling up by speaking in front of the group throughout the afternoon</li></ul>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/12/image-2.png?w=632&#038;ssl=1\" alt=\"women gathering to discussion presentation topics\" class=\"wp-image-8195\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2019/12/image-2.png?w=600&amp;ssl=1 600w, https://i2.wp.com/wordpress.org/news/files/2019/12/image-2.png?resize=300%2C200&amp;ssl=1 300w\" sizes=\"(max-width: 600px) 100vw, 600px\" data-recalc-dims=\"1\" /><figcaption>Vancouver Workshop 2014</figcaption></figure>\n\n\n\n<h2><strong>Leading to workshops across North America and then the world</strong></h2>\n\n\n\n<p>Other cities across North America heard about the workshop and started hosting them, adding their own material.</p>\n\n\n\n<p>Many women who initially joined her workshop wanted help getting even better at public speaking. So Jill&#8217;s Vancouver team added in some material created from the other cities and a bit more of their own. Such as:</p>\n\n\n\n<ul><li>Coming up with a great title</li><li>Writing a pitch that is more likely to get accepted</li><li>Writing a bio</li><li>Creating an outline</li></ul>\n\n\n\n<p>At WordCamp Vancouver 2014—only one year since Jill started—there were 50% women speakers and 3 times the number of women applicants! Not only that, but this WordCamp was a Developer’s Edition, where it’s more challenging to find women developers in general, let alone those who will step up to speak.</p>\n\n\n\n<h3><strong>More work is needed!</strong></h3>\n\n\n\n<p>Impressive as those results were, the reason Jill is so passionate about this work is because of what happened next:</p>\n\n\n\n<ul><li>Some of the women who attended the workshop stepped up to be leaders in the community and created new content for other women.</li><li>A handful of others became WordCamp organizers. One year Vancouver had an almost all-female organizing team – 5 out of 6!</li><li>It also influenced local businesses. One local business owner loved what one of the women speakers said so much that he hired her immediately. She was the first woman developer on the team, and soon after she became the Senior Developer.</li></ul>\n\n\n\n<h2><strong>Diversity touches on many levels</strong></h2>\n\n\n\n<p>Jill has seen time and again what happens when different people speak at the front of the room. More people feel welcome in the community. The speakers and the new community members bring new ideas and new passions that help to make the technology we are creating more inclusive. And together we generate new ideas that benefit everyone.</p>\n\n\n\n<p>This workshop was so successful, with typical results of going from 10% to 40-60% women speakers at WordCamps, that the WordPress Global Community Team asked Jill to promote it and train it for women and all diverse groups around the world. In late 2017, Jill started leading the Diverse Speaker Training group (<a href=\"https://make.wordpress.org/community/tag/wpdiversity/\">#wpdiversity</a>).</p>\n\n\n\n<p>Dozens of community members across the world have now been trained to lead the workshop. With now dozens of workshops worldwide, for WordPress and other open source software projects as well, there is an increase in speaker diversity.&nbsp;</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?fit=632%2C474&amp;ssl=1\" alt=\"Diverse Speaker Training group \" class=\"wp-image-8196\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?w=2048&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?resize=300%2C225&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?resize=1024%2C768&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?resize=768%2C576&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?resize=1536%2C1152&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2019/12/image-3.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>WordCamp US 2019</figcaption></figure>\n\n\n\n<p>As a result of the success, Jill is now sponsored to continue the program. The first sponsor is Automattic. She’s proud of how the diversity represented on the stage adds value not only to the brand but also in the long-term will lead to the creation of a better product. She’s inspired by seeing the communities change as a result of the new voices and new ideas at the WordPress events.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Jill’s leadership in the development and growth of the Diversity Outreach Speaker Training initiative has had a positive, measurable impact on WordPress community events worldwide. When WordPress events are more diverse, the WordPress project gets more diverse — which makes WordPress better for more people.”</em></p><cite><em> Andrea Middleton, Community organizer on the WordPress open source project</em></cite></blockquote>\n\n\n\n<h3><strong>Resources:</strong></h3>\n\n\n\n<ul><li>The Workshop: <a href=\"http://diversespeakers.info/\">http://diversespeakers.info/</a></li><li>More information: <a href=\"https://tiny.cc/wpdiversity\">https://tiny.cc/wpdiversity</a></li><li><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/speakers/building-a-diverse-speaker-roster/\">How to build a diverse speaker roster</a></li><li><a href=\"https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/\">Diversity Outreach Speaker Training Team</a></li></ul>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Alison Rothwell (<a href=\"https://profiles.wordpress.org/wpfiddlybits/\">@wpfiddlybits</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\">@yvettesonneveld</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>), Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\">@topher1kenobe</a>)</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"https://lh6.googleusercontent.com/fq6qus5qmviDZaznrQnW-4wcbSs6NSrqeqEEGnPjgi2WJrVevNm4Em4KsP-VVH_0kMgWuNtW7mm_V9-hKtrrJFohRi6KrUXAoLHjrymChCltMr9fuh4dBIu_0SqNPts0MZgcvh_W\" alt=\"\" width=\"153\" height=\"115\" /></figure></div>\n\n\n\n<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by </em><a href=\"https://profiles.wordpress.org/topher1kenobe/\"><em>Topher DeRosia</em></a><em>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>\n\n\n\n<p></p>\n\n\n\n<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\n\n\n\n<p><em><strong>Correction: December 7, 2019</strong><br>The original article mentioned the team Jill lead, but did not mention the team members who joined her. Those have been added. Apologies to Vanessa, Kate, and Mandi. <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> </em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8192\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"The Month in WordPress: November 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2019/12/the-month-in-wordpress-november-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Dec 2019 08:38:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8156\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:330:\"November has been a big month in the WordPress community. New releases, big events, and a push for more contributors have characterized the work being done across the project — read on to find out more! The release of WordPress 5.3 “Kirk” WordPress 5.3 was released on November 12, and is available for download or [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8119:\"\n<p>November has been a big month in the WordPress community. New releases, big events, and a push for more contributors have characterized the work being done across the project — read on to find out more!</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>The release of WordPress 5.3 “Kirk”</h2>\n\n\n\n<p><a href=\"https://wordpress.org/news/2019/11/kirk/\">WordPress 5.3 was released</a> on November 12, and is <a href=\"https://wordpress.org/download/\">available for download</a> or update in your dashboard! Named “Kirk,” after jazz multi-instrumentalist Rahsaan Roland Kirk, 5.3 enhances the block editor with <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">new APIs</a> and <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">theme-related features</a>, adds more intuitive interactions, and improves accessibility in a number of areas — including <a href=\"https://make.wordpress.org/core/2019/10/18/noteworthy-admin-css-changes-in-wordpress-5-3/\">CSS in the dashboard</a>, the <a href=\"https://make.wordpress.org/core/2019/10/14/improvements-in-media-component-accessibility-in-wordpress-5-3/\">media manager</a>, <a href=\"https://make.wordpress.org/core/2019/09/23/core-widgets-new-aria-current-attribute-in-wordpress-5-3/\">core widgets</a>, and <a href=\"https://core.trac.wordpress.org/query?focuses=~accessibility&amp;milestone=5.3&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=id\">dozens of other areas</a>.</p>\n\n\n\n<p>You can read the full details of all the included enhancements in the <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">5.3 Field Guide</a>.</p>\n\n\n\n<p>Along with 5.3 came <a href=\"https://wordpress.org/themes/twentytwenty/\">the new Twenty Twenty theme</a>, which gives users more design flexibility and integrates with the block editor. For more information about the improvements to the block editor, expanded design flexibility, the Twenty Twenty theme, and to see the huge list of amazing contributors who made this release possible, read <a href=\"https://wordpress.org/news/2019/11/kirk/\">the full announcement</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>. You can also <a href=\"https://make.wordpress.org/core/2019/11/15/5-3-retrospective-call-for-feedback/\">provide feedback</a> on the 5.3 release process.</p>\n\n\n\n<h2>At Last! bbPress 2.6!</h2>\n\n\n\n<p><a href=\"https://bbpress.org/blog/2019/11/bbpress-2-6/\">bbPress 2.6 was released</a> on November 12 after a little over six years in development. This new release includes per-forum moderation, new platforms to import from, and an extensible engagements API. You can read more about all of this in <a href=\"https://codex.bbpress.org/\">the bbPress codex</a>.</p>\n\n\n\n<p><a href=\"https://bbpress.org/blog/2019/11/bbpress-2-6-1-is-out/\">Version 2.6.1</a> and <a href=\"https://bbpress.org/blog/2019/11/bbpress-2-6-2-is-out/\">2.6.2</a> quickly followed, both of which fixed a number of bugs that required immediate attention.</p>\n\n\n\n<p>Want to get involved in building bbPress? Follow <a href=\"https://bbpress.org/blog/\">the bbPress blog</a> and join the #bbpress channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>State of the Word</h2>\n\n\n\n<p><a href=\"https://2019.us.wordcamp.org/\">WordCamp US 2019</a> was held in St. Louis, MO this year on November 1-3. At the event, <a href=\'https://profiles.wordpress.org/matt/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>matt</a> gave his annual State of the Word address, during which he shared what had been accomplished in the past year, announced what is coming next, and shared several ways to get involved.</p>\n\n\n\n<p>You can watch <a href=\"https://www.youtube.com/watch?v=LezbkeV059Q&amp;t=21s\">the State of the Word</a> as well as <a href=\"https://www.youtube.com/watch?v=fFsVbAo8HwI\">the Q&amp;A session at the end</a>, and <a href=\"https://ma.tt/2019/11/state-of-the-word-2019/\">read Matt’s recap</a> of the address. If you didn’t make it to St. Louis, you can still <a href=\"https://www.youtube.com/playlist?list=PL1pJFUVKQ7ETHl165LvLVXfB3yBZEzV-q\">watch all the sessions</a> at your leisure.</p>\n\n\n\n<h2>Five for the Future</h2>\n\n\n\n<p>During the State of the Word, Matt announced that there is now <a href=\"https://wordpress.org/five-for-the-future/\">a dedicated landing page for Five for the Future</a>, which features the people and organizations that commit at least it 5% of their resources to the WordPress open source project. There are many ways to contribute to WordPress, such as core development, marketing, translation, training, and community organizing, among many other important paths to contribution.</p>\n\n\n\n<p>Five for the Future welcomes individuals and organizations, and highlights all the incredible ways we build WordPress together. For more information, visit <a href=\"https://wordpress.org/five-for-the-future/\">the Five for the Future page</a>.<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>After releasing WordPress 5.3, the Core team announced <a href=\"https://make.wordpress.org/core/2019/11/21/tentative-release-calendar-2020-2021/\">a tentative release schedule</a> for 2020 and 2021.</li><li>The Core team has announced <a href=\"https://make.wordpress.org/core/2019/11/28/new-css-focus-in-core/\">a new CSS focus</a> to complement the existing ones for PHP and JavaScript — this focus comes with dedicated tags, targeted work, and a new #core-css Slack channel.</li><li>Version 2.2 of the WordPress Coding Standards <a href=\"https://github.com/WordPress/WordPress-Coding-Standards/releases/tag/2.2.0\">has been released</a> — this new release is ready for WordPress 5.3, includes five brand new sniffs, and plenty of new command-line documentation.</li><li>The latest update to the Theme Review Coding Standards, <a href=\"https://github.com/WPTRT/WPThemeReview/releases/tag/0.2.1\">v0.2.1</a>, is compatible with v2.2 of the WordPress Coding Standards, and helps authors to build more standards-compatible themes.</li><li><a href=\"https://2019.us.wordcamp.org/2019/11/11/wordcamp-us-2020/\">The WordCamp US team has announced</a> the dates for next year’s event in St. Louis, MO — WordCamp US 2020 will be held on October 27-29. This will be the first time that the event will be held during the week and not on a weekend. The team has also announced a Call for Organizers. If you are interested in joining the team, <a href=\"https://2020.us.wordcamp.org/2019/11/21/join-the-wcus-2020-organizing-team/\">learn more</a>.&nbsp;</li><li>The WP Notify project, which is building a unified notification system for WordPress Core, <a href=\"https://make.wordpress.org/core/2019/11/29/wp-notify-hiatus-till-january-2020/\">is on hiatus</a> until January 2020.</li><li>A working group on the Community Team <a href=\"https://make.wordpress.org/community/2019/11/25/handbook-update-how-to-improve-the-diversity-of-your-wordpress-events/\">has updated their Handbook</a> to help organizers create more diverse events.</li><li>The WP-CLI team <a href=\"https://make.wordpress.org/cli/2019/11/12/wp-cli-v2-4-0-release-notes/\">released v2.4.0</a> of the WordPress command-line tool. This release includes support for WordPress 5.3 and PHP 7.4.</li><li>Gutenberg development continues rapidly with <a href=\"https://make.wordpress.org/core/2019/11/27/whats-new-in-gutenberg-27-november/\">the latest 7.0 release</a> including an early version of the navigation menus block, among other enhancements and fixes.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"8156\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordPress 5.2.4 Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2019/11/wordpress-5-2-4-update/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Nov 2019 04:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7787\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"Late-breaking news on the 5.2.4 short-cycle security release that landed October 14. When we released the news post, I inadvertently missed giving props to Simon Scannell of RIPS Technologies for finding and disclosing an issue where path traversal can lead to remote code execution. Simon has done a great deal of work on the WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1102:\"\n<p>Late-breaking news on the<a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\"> 5.2.4 short-cycle security release </a>that landed October 14. When we released the news post, I inadvertently missed giving props to Simon Scannell of <a href=\"https://blog.ripstech.com/\">RIPS Technologies</a> for finding and disclosing an issue where path traversal can lead to remote code execution. </p>\n\n\n\n<p>Simon has done a <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\">great</a> <a href=\"https://wordpress.org/news/2019/03/wordpress-5-1-1-security-and-maintenance-release/\">deal</a> of <a href=\"https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/\">work</a> on the WordPress project, and failing to mention his contributions is a huge oversight on our end.</p>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing</a> vulnerabilities, which gave us time to fix them before WordPress sites could be attacked.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 07 Feb 2020 06:54:20 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Mon, 03 Feb 2020 09:54:06 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20200206234948\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(132, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1581076465', 'no'),
(133, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1581033265', 'no'),
(134, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1581076468', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(135, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: Gutenberg 7.4 Adds New Color Controls, Link UI, and Block Scaffolding for Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=97032\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/gutenberg-7-4-adds-new-color-controls-link-ui-and-block-scaffolding-for-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4443:\"<p class=\"has-drop-cap\">The Gutenberg development team <a href=\"https://make.wordpress.org/core/2020/02/05/whats-new-in-gutenberg-5-february/\">launched version 7.4 of the plugin</a> yesterday.  The update includes a few user-facing features:  a text color control for the group block, background-color control for the columns block, and a new link UI for rich text components.  For developers, the team introduced a script for launching a block plugin from the command line.</p>\n\n\n\n<p>After a dramatic increase in speed in the <a href=\"https://wptavern.com/gutenberg-7-3-brings-navigation-block-colors-block-collections-api-and-dynamic-post-blocks\">last update</a>, version 7.4 continues down the same path.  When tested against a post with approximately 36,000 words and 1,000 blocks, page load speeds dropped from 5.461s to 5.037s and keypress events from 34.63ms to 34.54ms.  This is not a significant reduction, but every improvement helps.</p>\n\n\n\n<p>The update includes over two dozen bug fixes and several enhancements.  Work toward the navigation block continues. The experience is slowly getting better, but it still doesn&rsquo;t feel ready for production.</p>\n\n\n\n<p>The team also launched an early, experimental <a href=\"https://github.com/WordPress/gutenberg/pull/19883\">mechanism for handling global styles</a>, a feature that may be complete this year.  <a href=\"https://wptavern.com/key-takeaways-from-the-first-future-of-themes-meeting\">Global styles</a> would allow themes to set default colors, typographical settings, and potentially more.  Theme authors should keep an eye on the development of this feature and offer feedback.</p>\n\n\n\n<h2>Group Block Gets Text Color Control</h2>\n\n\n\n<img />Changing the text color for an entire group.\n\n\n\n<p>The Gutenberg team once again cleans up one of my biggest gripes.  When using the group block in the past, end-users could not apply a text color to every sub-element of the group block.  Instead, they had to add a text color to any blocks within the group.  It was a painstaking process at times, particularly with groups of many blocks.</p>\n\n\n\n<p>With this change in version 7.4, users can apply a <a href=\"https://github.com/WordPress/gutenberg/pull/19181\">text color to the entire group</a> at once, and that color should trickle down to sub-blocks.  Of course, users can still change the color of inner blocks if necessary.</p>\n\n\n\n<h2>Columns Block Gets Background Color Control</h2>\n\n\n\n<img />Customizing the background color on a columns block.\n\n\n\n<p>Gutenberg 7.4 adds the <a href=\"https://github.com/WordPress/gutenberg/pull/17813\">background color control to the columns block</a>.  This makes it work similarly to the group block by adding a background color to the entire containing block.  Unfortunately, it did not receive the same text color control in this release.</p>\n\n\n\n<p>Currently, there is still no way to add background and text colors to an individual column.  End-users can only add a color on the sub-blocks within a column.  The feature is a step in the right direction, but it&rsquo;s still missing some essential color options.</p>\n\n\n\n<h2>Link UI Updated</h2>\n\n\n\n<img />Inserting a link into a paragraph with the new UI.\n\n\n\n<p>This is a minor change but welcome.  The link UI for rich text, a component used for blocks such as paragraphs, <a href=\"https://github.com/WordPress/gutenberg/pull/19686\">now has the same UI</a> as the navigation and button blocks.  The consistency is nice, but I am a fan of the improvement overall.  </p>\n\n\n\n<p>The UI change is subtle, but it already feels slightly more comfortable after a day of use.</p>\n\n\n\n<h2>Block Scaffolding for Developers</h2>\n\n\n\n<img />Initial JavaScript file for an auto-created block plugin.\n\n\n\n<p>For developers who want to jump-start a new block plugin, the Gutenberg team <a href=\"https://www.npmjs.com/package/create-wordpress-block\">released an official script</a> for getting started.  By running the <code>npm init @wordpress/block</code> command, the script will install and run you through setting up a custom block.  The script creates an entire plugin folder, including the necessary PHP, CSS, and JavaScript files.</p>\n\n\n\n<p>This script is ideal for building single-block plugins, which will eventually be exposed via the official WordPress block directory.  Because it creates an entire plugin, it is probably not the best route for creating new blocks within an existing plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Feb 2020 21:06:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"Post Status: Syed Balkhi on Awesome Motive’s acquisition of All In One SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=76000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://poststatus.com/syed-balkhi-on-awesome-motives-acquisition-of-all-in-one-seo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2279:\"<p>Syed Balkhi joins me to discuss the acquisition of AIO SEO.</p>\n\n\n\n<p>All in One SEO is one of the most widely used plugins in the WordPress ecosystem, with more than two million installs.</p>\n\n\n\n<p>In the <a href=\"https://semperplugins.com/all-in-one-seo-is-now-part-of-the-awesome-motive-family/\">announcement post</a>, Syed says the entire All in One SEO team is joining Awesome Motive, aside from founder Michael Torbert:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Aside from new ownership change, it’s business as usual. You can continue to use the plugin that you love without any interruptions.</p><p>With the exception of Michael, the entire All in One SEO team joined Awesome Motive. This means that you are still being supported by the same talented people.</p><p>On top of that, we have added more team members from Awesome Motive who will be working on the All in One SEO project, including me.</p><p>In a near future release, you will see a small plugin design refresh in the WordPress admin area.</p><p>With our experience and a dedicated team, we will be adding several new features and improvements to the All in One SEO WordPress plugin in the near future.</p></blockquote>\n\n\n\n\n\n\n\n<p><strong>Some of the questions he answers:</strong></p>\n\n\n\n<ul><li>So who is your target customer with All in One SEO?</li><li>How is the model structured? You’re directing strategy… is there a partner you\'re working with?</li><li>How does your vision for AIO SEO compare to what you see in Yoast SEO?</li><li>How do you envision the free/premium divide?</li><li>What are the first three things you plan to do?</li><li>How did the conversation with Michael start? Did you approach him? Did he approach you? Tell me a story.</li><li>How far do you think you can scale this business model?</li><li>What do you think about the consolidation we’re seeing in the plugin ecosystem — the consolidation you’re a major player in?</li></ul>\n\n\n\n<p><strong>Links:</strong></p>\n\n\n\n<ul><li><a href=\"https://awesomemotive.com/\">Awesome Motive</a></li><li><a href=\"https://wordpress.org/plugins/all-in-one-seo-pack/\">AIO SEO on WP.org</a></li><li><a href=\"https://semperplugins.com/all-in-one-seo-is-now-part-of-the-awesome-motive-family/\">Acquisition announcement</a></li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Feb 2020 19:14:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Key Takeaways From the First ‘Future of Themes’ Meeting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96997\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/key-takeaways-from-the-first-future-of-themes-meeting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10639:\"<p>There are few clear answers.</p>\n\n\n\n<p>As members of the <a href=\"https://wptavern.com/join-the-future-of-wordpress-themes-conversation-theme-review-team-to-hold-biweekly-discussions\">core design, editor, and theme review teams joined</a> for the <a href=\"https://make.wordpress.org/themes/2020/02/03/block-based-themes-meeting-agenda-for-february-5/\">inaugural biweekly meeting</a> that may decide the fate, at least in part, of WordPress themes, it became clear that there is no structured game plan.  There are many ideas.  There are several moving pieces.  There are components and teams and ideas that must all coalesce and build something that has never been done before in WordPress.</p>\n\n\n\n<p>There is room for both excitement and concern.</p>\n\n\n\n<p>It is not necessarily a bad thing to be in an early experimental stage.  However, WordPress is a mature product.  It <em>feels</em> like there should be something more concrete about the future of one of its most integral parts &mdash; themes.</p>\n\n\n\n<p>That is what these meetings are for.  They are about building bridges between various teams and making some decisions.  One of the problems going forward will be cutting through the noise.</p>\n\n\n\n<p><strong>Takeaway #1:</strong> there are still more questions than there are answers.</p>\n\n\n\n<h2>Moving Forward With Block-Based Themes</h2>\n\n\n\n<p>If there is one thing that almost feels like a foregone conclusion it is that we are transitioning into a future where themes will be built entirely of blocks.  Even the meeting was dubbed the &ldquo;Block-Based Themes Meeting,&rdquo; despite <a href=\"https://make.wordpress.org/themes/2020/01/29/new-bi-weekly-block-based-themes-meeting/#comment-43993\">some pushback</a> that such a meeting name was biased.</p>\n\n\n\n<p>This is no surprise.  Block-based themes are where we are going.  The real question is how that will work and what level of control theme authors will ultimately have over their creations.</p>\n\n\n\n<p>Kjell Reigstad, a design director for Automattic, kicked off the meeting with an introduction of block-based themes and what the meeting would cover.  &ldquo;As most of you probably know, Gutenberg is in the process of <a href=\"https://make.wordpress.org/core/2019/09/05/defining-content-block-areas/\">expanding beyond the editor</a>,&rdquo; he said.  &ldquo;As we&rsquo;ve already seen, Gutenberg allows for a great deal of user-customization inside of post and page content. It allows any user to create custom layouts all by themselves, and style adjustments too. These will all usually be retained even after a user switches themes.&rdquo;</p>\n\n\n\n<p>Full-site editing seeks to bring blocks to the entire site, which is traditionally the domain of themes.  &ldquo;By turning elements like the header and footer into block areas, users will have the flexibility to place any sort of content wherever they want,&rdquo; said Reigstad.  &ldquo;It allows for a lot of creativity!  They&rsquo;ll theoretically be able to click and edit their header in place, or change their sites entire color scheme without needing to jump into an entirely separate interface.&rdquo;</p>\n\n\n\n<p><strong>Takeaway #2:</strong>  block-based themes are happening.</p>\n\n\n\n<h2>The Definition of Block-Based Themes</h2>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>Live Demo Q&amp;A from <a href=\"https://gutenbergtimes.com/theme-templates-full-site-editing-experience-enrique-piqueras/\">The Gutenberg Times</a>.\n\n\n\n<p>After a quick introduction of how the meeting would work, Jeff Ong, designer at Automattic, filled in the details of how block-based themes work.  Currently, such themes are experimental and must be activated by ticking the full-site editing (FSE) checkbox via the Gutenberg plugin&rsquo;s Experiments settings screen.</p>\n\n\n\n<p>&ldquo;Once you&rsquo;ve activated this FSE experiment option, a few major changes will occur in how WordPress behaves,&rdquo; said Ong.  &ldquo;WordPress will look for HTML templates inside of a block-templates directory of your theme, instead of using the PHP templates, to determine how your site will appear.&rdquo;</p>\n\n\n\n<p>This was not a new concept to the people present.  Most have explored the <a href=\"https://wptavern.com/initial-documentation-for-block-based-wordpress-themes-proposed\">initial documentation for block-based themes</a> over the past two months.</p>\n\n\n\n<p>This part of the meeting was more about providing information.  The following are key links for further exploration of full-site editing and block-based themes:</p>\n\n\n\n<ul><li><a href=\"https://github.com/WordPress/gutenberg/projects/35\">Full-Site Editing Project</a></li><li><a href=\"https://github.com/WordPress/gutenberg/issues?utf8=%E2%9C%93&q=label%3A%22New+Block%22+label%3A%22%5BFeature%5D+Full+Site+Editing%22+\">Full-Site Editing Tickets</a></li><li><a href=\"https://github.com/WordPress/theme-experiments\">Theme Experiments Repository</a></li><li><a href=\"https://developer.wordpress.org/block-editor/developers/themes/block-based-themes/\">Block-Based Themes Documentation</a></li></ul>\n\n\n\n<h2>Global Styles Are a Part of the Process</h2>\n\n\n\n<img />Example mockup from the primary <a href=\"https://github.com/WordPress/gutenberg/issues/19255\">global styles ticket</a>.\n\n\n\n<p>Tammy Lister, experience designer at Automattic, introduced <a href=\"https://github.com/WordPress/gutenberg/projects/40\">global styles</a>, a feature coming to the Gutenberg plugin and eventually core WordPress.  She described global styles as being at the &ldquo;what goes into the cake&rdquo; stage, meaning the team is still deciding what the feature will entail.</p>\n\n\n\n<p>&ldquo;So what are global styles?&rdquo; Lister began.  &ldquo;In short, it&rsquo;s style you can apply across your site right there in the browser. Pretty neat! Think of it as a kit full of component tools you can activate and take advantage of. Tried, tested and ready to go. It&rsquo;s your decorating kit to get your site space just the way you want it.&rdquo;</p>\n\n\n\n<p>At the moment, the baseline for the &ldquo;kit&rdquo; includes text, background, and primary colors in which themes can set the defaults.  The baseline would also include typographical settings for changing the font size, scale, and alignment.</p>\n\n\n\n<p>&ldquo;However, is that enough?&rdquo; asked Lister.  &ldquo;This is currently a big question. There needs to be exploration on what are common things needed and what needs to be available.&rdquo;</p>\n\n\n\n<p>Another argument for the biggest question award would be whether global styles are a necessary feature for core WordPress at all.  With the possibility that users can directly manipulate templates in the WordPress admin, adding styles to the mix may make some theme authors feel like they will be permanently sitting in the back seat.</p>\n\n\n\n<p>Lister made it clear that global styles should not go too far.  &ldquo;These are tools available in the editor, so addressing what is needed or not is key, over allowing everything and creating a complicated experience,&rdquo; she said.  &ldquo;A personal point I&rsquo;m thinking about here is how when I had a crowded art box I could never find that &lsquo;one pencil&rsquo; I wanted, we want to avoid that.&rdquo;</p>\n\n\n\n<p><strong>Takeaway #3:</strong>  End-users will likely be able to set global styles from the WordPress admin.  For many, this level of power will be a good thing.  For theme authors who build hyper-detailed designs, they may be cringing at the thought.</p>\n\n\n\n<h2>Open-Ended Questions Going Forward</h2>\n\n\n\n<p><em>When will block templates and global styles land?</em>  The rough timeline for block-based themes is for it to remain experimental through mid-year and have something basic in place as we close 2020.  Global styles are likely to land this year, but there is no definite date yet.</p>\n\n\n\n<p>Global styles could easily land in the next several months.  It has a tighter scope than themes made of HTML block templates.  Given the point that block-based themes are currently at and the unanswered questions about how the system will work, its time frame may be optimistic.  The scope touches almost everything in WordPress to some degree, at least anything that ends up on the front end of the site.</p>\n\n\n\n<p>Everything about themes will change.  How theme authors approach design will likely move toward styling on the component/block level.  Blocks will go into sidebars as widgets are slowly replaced.  Even theme options may be a thing of the past.  &ldquo;Personally, I don&rsquo;t think the customizer will disappear immediately, but I do think it&rsquo;s clear that many of its current duties won&rsquo;t be necessary in this Gutenbergy future,&rdquo; said Reigstad.</p>\n\n\n\n<p>One question on many theme authors&rsquo; minds is what sort of quality control they will have over their theme if users are handed so much power to change things. </p>\n\n\n\n<p>One proposal in the meeting was to allow theme authors to lock down certain templates so that users could not mess up the design by moving parts (e.g., a meticulously-crafted header and nav menu template that works across browsers and screen sizes).  There is not yet an open ticket for this possibility, but some theme authors will need to have a level of control over this for certain designs to work.</p>\n\n\n\n<p>Ending the meeting on a high note, Ari Stathopoulos, a representative from the theme review team, gave his final thoughts.  &ldquo;Themes are not going away,&rdquo; he said.  &ldquo;They may change, completely transform in many ways.  The tools we&rsquo;re currently using and the way we&rsquo;re currently building themes is not the way themes will be built next year. But they will still exist, and the new way is neither better nor worse. It&rsquo;s just different. If we embrace that and open up our imagination, there&rsquo;s lots of amazing things we &mdash; as theme authors &mdash; can build.&rdquo;</p>\n\n\n\n<p>I am cautiously optimistic that things will work out in the end.  I&rsquo;m excited about the idea of end-users being given tools to build out the websites of their dreams.  I&rsquo;m concerned, along with many theme authors I have chatted with, about what the role of theme designer will be in a year.</p>\n\n\n\n<p>At the moment, I imagine a major split in types of themes:  block-based vs. traditional with perhaps some block elements.  Only time will tell whether this becomes an insurmountable rift or whether there is a place for both concepts.</p>\n\n\n\n<p><strong>Takeaway #4:</strong>  it&rsquo;s still far too early to come to any solid conclusions about what the future holds.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Feb 2020 21:08:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: Guteblock Joins the Block Collection Plugin Arena With an Initial 12 Custom Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96944\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/guteblock-joins-the-block-collection-plugin-arena-with-an-initial-12-custom-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6780:\"<p>Last week, London-based digital marketing agency Sweans Technologies released <a href=\"https://wordpress.org/plugins/guteblock/\">Guteblock</a>, its new block collection plugin.  Currently, the plugin boasts 12 custom blocks.  The company plans to add more and has big plans for the plugin&rsquo;s future.</p>\n\n\n\n<p>While the team earns no points for originality in plugin naming, they are nevertheless throwing their hat into the ring of ever-growing block collection plugins alongside the likes of <a href=\"https://wptavern.com/array-launches-free-gutenberg-ready-atomic-blocks-theme-on-wordpress-org\">Atomic Blocks</a>, <a href=\"https://wptavern.com/coblocks-1-9-5-merges-block-gallery-plugin-into-collection-adds-new-form-block\">CoBlocks</a>, and <a href=\"https://wptavern.com/kioken-blocks-the-new-street-fighter-inspired-block-collection-that-is-taking-aim-at-page-builders\">Kioken Blocks</a>.  There is already steep competition in this arena, but there is also a lot of space for growth.</p>\n\n\n\n<p>&ldquo;WordPress bets high on Gutenberg editor and the block styles,&rdquo; said Ajay Thomas, CEO of Sweans.  &ldquo;With the introduction of blocks, WordPress allows greater user control over the page-designing process beyond what the theme can handle. For the upcoming block directory, we believe that blocks will be the third integral part of WordPress after plugins and themes.&rdquo;</p>\n\n\n\n<p>The plugin&rsquo;s team has put together the following video to show installation and usage examples:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<h2>Plugin Blocks</h2>\n\n\n\n<p>Guteblock is still a little rough around the edges in comparison to more mature block library plugins.  Some things were confusing, such as some block color options not using the theme-defined colors.  The drop cap block felt like it could have simply been added as extra settings to WordPress&rsquo; paragraph block.</p>\n\n\n\n<p>The container block currently does nothing but group elements.  At the moment, it is a step down from WordPress&rsquo; existing group block.  Thomas explained that the team wanted to develop other blocks before fleshing it out.  &ldquo;The main features we will add to the container block are custom background settings, which include color, customizable gradient, an image with parallax effect, video, customizable SVG and other features including shadow, border-radius, etc.,&rdquo; he said.</p>\n\n\n\n<p>Of its library of 12 blocks, it has some interesting blocks that will come in handy, such as the number box block, which allows users to add columns of numbered boxes.  The notification block is also useful for adding a bold warning, note, or similar message.</p>\n\n\n\n<img />Number Box block from the Guteblock plugin.\n\n\n\n<p>The post grid block is one of the nicest blocks in the collection.  It lets users create a grid of posts, showcasing the featured image, post title, and optional excerpt.  It has settings to control the post count, number of columns, and font sizes.</p>\n\n\n\n<img />Post Grid block from the Guteblock plugin.\n\n\n\n<p>The biggest downside to the post grid block at the moment is that it relies on the <code>post-thumbnail</code> size for featured images, which may make them look stretched and distorted on the front end.  In the future, it would help if the user could select their preferred featured image size.</p>\n\n\n\n<p>The plugin includes a social sharing block.  Currently, it adds sharing links for Facebook, Twitter, LinkedIn, Pinterest, and Reddit.  Each social network can be enabled or disabled individually.  The plugin also includes round, square, and modern block styles.</p>\n\n\n\n<img />Social Sharing block from the Guteblock plugin.\n\n\n\n<p>A social sharing block will likely be more useful when WordPress moves toward <a href=\"https://wptavern.com/initial-documentation-for-block-based-wordpress-themes-proposed\">block-based themes</a>.  Controlling this at the post level instead of globally is unnecessary work except in some edge cases where a user wants social sharing only on a limited number of posts or pages.</p>\n\n\n\n<p>Thomas believes the team members and author profiles blocks are the most useful blocks.  &ldquo;One of the extremely important features of team members block is that users can highlight one block separately by changing the background color, font color, etc. and drag and drop members to reorganize, he said.  &ldquo;Regarding the author profile block, our block will fetch the author&rsquo;s name, bio, and image and display there. Users can modify the same if needed.&rdquo;</p>\n\n\n\n<h2>Upcoming Blocks and a Premium Version</h2>\n\n\n\n<p>At the moment, Guteblock is a free plugin.  However, Sweans plans to launch a commercial version in the future.  The company did not provide an exact date of launch but said it will happen shortly.  It is also unclear what the pricing model will look like.</p>\n\n\n\n<p>&ldquo;This will be mainly a more customizable plugin with some other blocks such as Amazon link builder, events and shows, a premium slider, etc.,&rdquo; said Thomas.  He stressed that the free version will have at least 34 blocks down the road.</p>\n\n\n\n<p>The plugin&rsquo;s development team is currently working on two primary blocks to include in the premium edition.  &ldquo;The first block will help Amazon affiliates search for their products in the Amazon catalog, access real-time price and availability information, and effortlessly create links in your posts to products on Amazon.com using the Amazon Product Advertising API,&rdquo; said Thomas.  &ldquo;The second block is for adding event details in a post or page. You can show the time, date, venue, and the details of the event, and this can be directly added to your desktop/mobile calendar with one click.&rdquo;</p>\n\n\n\n<p>Along with work toward their commercial version, the development team is preparing to add 16 extra blocks to their free version.  This update will include blocks for Google Maps, video, grids, advanced columns, newsletters, pricing tables, and more.  They will also provide alternative versions of some core blocks, such as blockquotes and buttons.</p>\n\n\n\n<p>The company plans to dip its toes into the <a href=\"https://wptavern.com/version-1-prototype-of-the-wordpress-admin-block-directory-announced\">upcoming block directory</a> too.  &ldquo;We are planning to release some very useful and unique blocks into the block directory and will maintain its excellence and effectiveness,&rdquo; said Thomas.  &ldquo;But, at the same time, we will improve our plugin&rsquo;s collection to make them stand out from the rest as we are updating them regularly to give the finest user experience.&rdquo;  It will be interesting to see if the block collection plugin or the individual blocks perform better.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Feb 2020 19:53:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Post Status: Working on multiple things, and working with partners\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=75833\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/working-with-business-partners/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1299:\"<p>A lot of folks in the WordPress economy, whether employed with a side hustle or self-employed, manage multiple things. Also, many of us work with partners, or are interested in partnerships.</p>\n\n\n\n<p>Cory has long worked with partners, and we\'re now running Post Status as partners. Also, we are both working on several projects.</p>\n\n\n\n<p>In this episode of Draft, we talk about how to balance multiple things, how we try and structure our weeks, and some things to consider when working with partners.</p>\n\n\n\n\n\n\n\n<h3>Show links</h3>\n\n\n\n<ul><li><a href=\"https://kolbe.com\">Kolbe</a></li><li><a href=\"https://www.gallup.com/cliftonstrengths/en/strengthsfinder.aspx\">Strengthsfinder</a></li><li><a href=\"https://waitbutwhy.com/2013/11/how-to-beat-procrastination.html\">Wait But Why</a></li></ul>\n\n\n\n<h3>Sponsor: Pagely</h3>\n\n\n\n<p><a href=\"https://pagely.com/\">Pagely</a>&nbsp;offers best-in-class managed WordPress hosting, powered by Amazon\'s Cloud, the Internet’s most reliable infrastructure.&nbsp;Pagely&nbsp;helps big brands scale WordPress. Their new platform&nbsp;<a href=\"https://northstack.com/\">NorthStack</a>&nbsp;is a completely serverless solution for managed application hosting. Thank you to&nbsp;<a href=\"https://pagely.com/\">Pagely</a>&nbsp;for being a Post Status partner!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Feb 2020 01:13:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: Ahmad Awais Launches Script to Automatically Deploy WordPress Plugin Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96942\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/ahmad-awais-launches-script-to-automatically-deploy-wordpress-plugin-updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6426:\"<p>Today, Ahmad Awais <a href=\"https://github.com/ahmadawais/wp-continuous-deployment\">launched WP Continuous Deployment</a>, a continuous deployment pipeline for updating plugins hosted on WordPress.org via GitHub actions.   It is a Node.js-based CLI script that simplifies the process of keeping plugins updated.  Developers only need to type out a single line in their terminal or command prompt.  Other than setting up a couple of secret keys on GitHub, the script handles everything in just a few moments.</p>\n\n\n\n<p>&ldquo;We live in the age of agile workflows,&rdquo; wrote Awais in the <a href=\"https://ahmadawais.com/wp-continuous-deployment/\">project announcement</a>.  &ldquo;Developers only want to <code>git commit &amp;&amp; git push</code> and expect their products to be deployed globally&hellip;It&rsquo;s been a minute since I worked on a WordPress project, but for the last year or so, I&rsquo;ve been fantasizing about a git-based plugin deployments workflow that will allow me to get away from those old SVN repositories finally.&rdquo;</p>\n\n\n\n<p>On November 14, GitHub <a href=\"https://github.blog/2019-11-14-powering-community-led-innovation-with-github-actions/\">announced it was rolling out GitHub Actions</a>.  Actions are a way for developers to automate workflows from their Git repositories.  Developers can share, fork, and reuse them across projects.  A few days later, <a href=\"https://wptavern.com/10up-releases-github-actions-for-simplifying-wordpress-plugin-deployment\">10up launched two GitHub actions</a> for WordPress plugin developers.  These Actions are the basis for WP Continuous Deployment.</p>\n\n\n\n<p>10up&rsquo;s <a href=\"https://github.com/marketplace/actions/wordpress-plugin-deploy\">WordPress Plugin Deploy</a> Action handles deploying plugin updates directly to the WordPress plugin directory. The <a href=\"https://github.com/marketplace/actions/wordpress-plugin-readme-assets-update\">WordPress.org Plugin Readme/Assets Update</a> Action handles committing changes to a plugin&rsquo;s readme or assets.  The WP Continuous Deployment script automatically adds both and sets up appropriate GitHub workflow files for each.</p>\n\n\n\n<p>&ldquo;What I hope to accomplish with WP Continuous Deployment is make it easy for any developer to use the GitHub Actions built by 10up and others and help migrate to this new workflow with a pinch of automation,&rdquo; said Awais.  &ldquo;Without WP Continuous Deployment, migrating to GitHub Actions for deploying WordPress plugins is a task that requires knowledge of how GitHub Actions work, what files you have to create, what secrets are, and where to put them. We lose a great number of developers that are unable to figure out this step &mdash; due to a bulky and dry operational experience.&rdquo;</p>\n\n\n\n<p>The workflow for many WordPress developers today runs directly through Git, primarily with repositories hosted on GitHub.  Often, developers expect any committed code to automatically deploy to the places it should go, such as production websites.  </p>\n\n\n\n<p>The WordPress plugin directory system, which relies on SVN instead of Git, can sometimes be a bottleneck in team workflows.  Some teams even have developers who have never used SVN in their careers.  It makes sense for teams to use a single system.  Doing so leads to fewer bugs and requires fewer resources to train people on a dying version control system.</p>\n\n\n\n<p>&ldquo;We&rsquo;re not doing anyone a favor by keeping SVN around,&rdquo; said Awais.  &ldquo;Projects are hiring hundreds of open source developers to make it easy for the developers&rsquo; community to interact with their projects.  Whereas WordPress &mdash; that once held that edge &mdash; has started to lag behind by making it hard and impractical to get started with WordPress development.  Go pick 100 random students for universities all over the world and ask them to start an open-source project. You&rsquo;ll be amazed by the majority of them choosing to start with Git and MIT license.  And, here in the WordPress community, we ask people to use SVN.  That&rsquo;s impractical and inaccessible for a majority of developers today.&rdquo;</p>\n\n\n\n<p>Awais said that GitHub Actions have allowed his team to shed a lot of dead weight.  He originally did not make his GitHub Actions open source because they were specific to his use cases.  After trimming the code down, he realized they were not any different from the Actions that 10up had already released.</p>\n\n\n\n<p>&ldquo;I see dealing with SVN as a DevOps task,&rdquo; he said.  &ldquo;Something web developers should not be concerned with in 2020. Web developers want to build websites. They want to use Git to do that. With JAMstack, everyone has become accustomed to the idea of pushing a git commit and getting the new build/release. That&rsquo;s why I built WP Continuous Deployment.&rdquo;</p>\n\n\n\n<h2>Set up in 1, 2&hellip;</h2>\n\n\n\n<img />Running the setup process for WP Continuous Deployment\n\n\n\n<p>When I originally tested 10up&rsquo;s GitHub Actions last year, there was a small learning curve.  I had to figure out what those new workflow files were for and whether I needed to change things.  It was not an overly complicated process, but there was a moment of confusion or two.</p>\n\n\n\n<p>What Awais&rsquo; script does is take those two GitHub Actions one step further and automate nearly all of the setup.</p>\n\n\n\n<p>Developers must have Node.js installed on their computer to run the script, which is fairly common today.  With a single command of <code>npx wp-continuous-deployment</code>, the script is installed.  It then prompts you to enter your WordPress.org plugin slug to set everything up.  Once done, you merely need to create a couple of secret keys on your GitHub repository.</p>\n\n\n\n<p>Awais wanted to automate the entire process.  However, GitHub does not yet have an API for creating secret keys.  Until that happens, it is the only manual step required.</p>\n\n\n\n<p>Within two minutes of choosing which repository I wanted to test the script on, I had everything in place and ready to go.  Now, I just need to find some time to actually write code for some of my numerous plugins so I can truly put this script to the test.  Thus far, things are looking good.</p>\n\n\n\n<p>It may finally be possible for me to purge everything related to SVN from my life.  That would be a welcome change.  <code>#lifegoals</code></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Feb 2020 21:23:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordPress.org blog: The Month in WordPress: January 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8316\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/02/the-month-in-wordpress-january-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5941:\"<p>Following an action-packed December, 2020 is off to a fine start with some new releases and announcements. Read on to find out what happened in the WordPress project in January.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Release of Gutenberg 7.2 &amp; 7.3</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2020/01/09/whats-new-in-gutenberg-8-january/\">Gutenberg 7.2</a>, the first Gutenberg release of 2020, was deployed on January 8th and included over 180 pull requests from more than 56 contributors. This was followed soon after by <a href=\"https://make.wordpress.org/core/2020/01/22/whats-new-in-gutenberg-22-january/\">Gutenberg 7.3</a>. New features include a new Buttons block, support in adding links to Media &amp; Text block images, improvements to the Navigation and Gallery blocks, performance improvements, and accessibility enhancements. These releases also included many additional enhancements, fixes, new APIs, documentation, and more.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Proposal for an XML Sitemaps Feature Plugin</h2>\n\n\n\n<p>In June last year, a team of contributors <a href=\"https://make.wordpress.org/core/2019/06/12/xml-sitemaps-feature-project-proposal/\">proposed</a> a feature plugin that would bring standardized XML sitemaps to WordPress Core. Since then, the team has been working to bring this to reality and <a href=\"https://make.wordpress.org/core/2020/01/27/feature-plugin-xml-sitemaps/\">have now published a working plugin</a> to demonstrate this new capability.</p>\n\n\n\n<p>The plugin is still in development, but the included features already provide much-needed functionality from which all WordPress sites can benefit. You can install the plugin from your WordPress dashboard or <a href=\"https://wordpress.org/plugins/core-sitemaps/\">download it here</a>.</p>\n\n\n\n<p>Want to get involved in bringing this feature to Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, report any issues you find <a href=\"https://github.com/GoogleChromeLabs/wp-sitemaps/issues\">on GitHub</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>A New Block-Based Themes Meeting</h2>\n\n\n\n<p>The Theme Review Team has <a href=\"https://make.wordpress.org/themes/2020/01/29/new-bi-weekly-block-based-themes-meeting/\">announced</a> that they will be holding bi-weekly meetings in the #themereview channel focused on discussing block-based themes. If you are interested in discussing themes within the context of Gutenberg’s full-site editing framework, this will be the place to do so! The first meeting will be held on Wednesday, February 5, at 16:00 UTC.</p>\n\n\n\n<p>Want to get involved with the Theme Review Team or <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">become a reviewer</a>? Follow <a href=\"https://make.wordpress.org/themes/\">their blog</a>, and join the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading</h2>\n\n\n\n<ul><li>The Core team has started work on WordPress 5.4 and kicked off their planning with <a href=\"https://make.wordpress.org/core/2020/01/14/wordpress-5-4-planning-roundup/\">a summary post</a>. You can follow all the v5.4 updates by watching <a href=\"https://make.wordpress.org/core/tag/5-4/\">the version tag</a> on the Core team blog.</li><li>The inaugural <a href=\"https://2020.asia.wordcamp.org/\">WordCamp Asia</a> event is taking place in February. This will be the largest WordPress event in the region, bringing together around 1,500 WordPress enthusiasts from around the world.</li><li>Two WordPress community leaders, <a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> and <a href=\"https://profiles.wordpress.org/andreamiddleton/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>andreamiddleton</a>, <a href=\"https://wordpress.org/news/2020/01/wordpress-leaders-nominated-for-cmx-awards/\">were nominated for CMX awards</a> due to their work on the WordPress project, with <a href=\"https://profiles.wordpress.org/andreamiddleton/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>andreamiddleton</a> winning the award for Executive Leader of a Community Team.</li><li><a href=\"https://make.wordpress.org/core/2020/01/29/lazy-loading-images-in-wordpress-core/\">A feature plugin has been proposed</a> that introduces lazy-loading images to WordPress Core, which will be a huge step forward in improving performance all across the web.</li><li>The Core team has put together <a href=\"https://make.wordpress.org/core/handbook/tutorials/faq-for-new-contributors/\">an extensive and informative FAQ</a> to help new contributors get involved in contributing to the project.</li><li>One key priority for Gutenberg is the ability to control the block editor. There are already a number of APIs that control the experience, but there is a lack of consistency and missing APIs. <a href=\"https://make.wordpress.org/core/2020/01/23/controlling-the-block-editor/\">A method to address this</a> has been proposed.</li><li>The Design team <a href=\"https://make.wordpress.org/design/2020/01/24/gutenberg-phase-2-friday-design-update-43/\">published detailed information</a> on the recent design improvements in Gutenberg.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 03 Feb 2020 09:54:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"WPTavern: Join the Future of WordPress Themes Conversation: Theme Review Team to Hold Biweekly Discussions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96885\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"https://wptavern.com/join-the-future-of-wordpress-themes-conversation-theme-review-team-to-hold-biweekly-discussions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4418:\"<p class=\"has-drop-cap\">In collaboration with the core design and editor teams, the WordPress theme review team will begin <a href=\"https://make.wordpress.org/themes/2020/01/29/new-bi-weekly-block-based-themes-meeting/\">hosting biweekly (fortnightly) meetings</a> on the future of themes.  The meetings will be held every other Wednesday on the <a href=\"https://wordpress.slack.com/messages/themereview/\">#themereview WordPress Slack channel</a> at 16:00 UTC.  The first meeting is on February 5.</p>\n\n\n\n<p>Phase 2 of the Gutenberg project is about tackling site customization.  This covers everything from turning sidebars into block containers to redefining how themes will work in a block-based system in the coming years.  The latter is a huge unanswered question.  There are several ideas on how themes should be handled.</p>\n\n\n\n<p>Kjell Reigstad, a design director for Automattic, proposed the meeting as a step toward answering the future-of-themes question.  &ldquo;The main thing I&rsquo;d like to accomplish is to build up regular cross-team communication around the theme plus full-site editing work,&rdquo; he said.  &ldquo;There are so many potential changes on the horizon, and we really need perspective from both the Gutenberg folks and theme authors. I know it&rsquo;s difficult to keep up with all the development happening, and I thought this dedicated meeting would be a great place to stay up to date and share ideas on a regular basis.&rdquo;</p>\n\n\n\n<p>Currently, the agenda for the first meeting is still open but should be posted next week.  Anyone who wants to participate or make sure an idea sees discussion, should let the team know in the <a href=\"https://make.wordpress.org/themes/2020/01/29/new-bi-weekly-block-based-themes-meeting/\">announcement post&rsquo;s</a> comments.</p>\n\n\n\n<p>&ldquo;I&rsquo;d initially like to try and get everyone on the same page in terms of what&rsquo;s happening already on the Gutenberg front,&rdquo; said Reigstad.  &ldquo;So for instance, the experimental block-based themes implementation and the global styles work.  We&rsquo;ll likely go over those a little bit, share links and updates, and then pivot into some discussion questions.&rdquo;</p>\n\n\n\n<p>Bringing in the theme review team is imperative for a smooth transition into whatever themes eventually become.  &ldquo;There&rsquo;s already a lot of full-site editing work going on, and there are already experimental reference documents for block-based themes,&rdquo; said Reigstad earlier this week in the team&rsquo;s regular meeting.  &ldquo;It&rsquo;s important for the TRT and the theme community to keep up to date on this work, and to develop a clear communication loop with the Gutenberg teams.&rdquo;</p>\n\n\n\n<p>There is some concern that the concept of full, block-based themes will simply be railroaded into core WordPress, regardless of feedback.  Not all members of the theme review team or theme authors are supportive of the idea.</p>\n\n\n\n<p>Theme reviewer Joy Reynolds pointed out in the announcement&rsquo;s comments that using the phrase &ldquo;block-based themes&rdquo; in the meeting title shows bias in favor of themes made of blocks.  &ldquo;Why is the current Full Site Editing code outside the scope of the Customizer?&rdquo; she asked.  &ldquo;What is the goal? Is it even something that makes sense for themes? Don&rsquo;t we need a merge proposal? Or even a consensus on design before forcing these changes into core and having meetings about using experimental code as if it&rsquo;s the only choice?&rdquo;</p>\n\n\n\n<p>These are questions that will certainly come up in the meeting.</p>\n\n\n\n<p>Block-based themes already feel like a foregone conclusion.  The initial code is currently in the Gutenberg plugin, albeit as an experimental feature.  There is already <a href=\"https://wptavern.com/initial-documentation-for-block-based-wordpress-themes-proposed\">documentation for building such themes</a>.  There is a core <a href=\"https://wptavern.com/get-involved-with-block-based-wordpress-theme-experiments\">theme experiments repository</a>  Everything seems to be moving full-steam ahead in that direction.</p>\n\n\n\n<p>Whatever direction themes end up going, the meeting will at least offer an opportunity for the community to add their input.  For success, the editor, design, and theme review team members will need to find some common ground to begin their discussions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 31 Jan 2020 20:49:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Native Lazy Loading Support Coming to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96875\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/native-lazy-loading-support-coming-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4789:\"<p class=\"has-drop-cap\">It seems to be the week for dropping news of WordPress feature plugins.  Felix Arntz, WordPress core committer and developer programs engineer at Google, announced a <a href=\"https://make.wordpress.org/core/2020/01/29/lazy-loading-images-in-wordpress-core/\">plan to push a lazy loading feature</a> to the platform.  If testing goes well, this feature could land in WordPress 5.4 in March.</p>\n\n\n\n<p>The concept of lazy loading allows a webpage to render without loading certain resources until they are needed.  This leads to faster page loads and saves data on the visitor&rsquo;s end.  Lazy loading is particularly useful when rendering images on the web.  </p>\n\n\n\n<p>The opposite of lazy loading is called <em>eager</em> loading, which loads everything in bulk.  By default, this is how all images are loaded on the web.  This often leads to poor performance on image-heavy webpages where many of the images are not in the site visitor&rsquo;s viewport when first viewing the page.</p>\n\n\n\n<p>For many years, various JavaScript libraries have handled this feature but not always to success.  A native solution is slowly making its way into browsers.  Native lazy loading works by adding a <code>loading</code> attribute to an <code>&lt;img&gt;</code> or <code>&lt;iframe&gt;</code> element.  Browsers can then decide how to load a resource based on the value of the attribute.  Currently, <a href=\"https://caniuse.com/#feat=loading-lazy-attr\">Chrome, Edge, and Opera</a> all handle the loading attribute.  Once the attribute officially makes it into the <a href=\"https://github.com/whatwg/html/pull/3752\">HTML specification</a>, the feature should be a standard that all browsers support.</p>\n\n\n\n<blockquote><p> Adopting the new loading attribute is a great chance for WordPress to lead the way for a faster web overall. </p><cite> Felix Arntz</cite></blockquote>\n\n\n\n<p>The new <a href=\"https://wordpress.org/plugins/wp-lazy-loading/\">Lazy Loading feature plugin</a> is now available in the WordPress plugin directory.  The plugin relies only on native browser support and does not add extra JavaScript.  The implementation adds a loading attribute to images in post content, excerpts, comments, text widgets, avatars, and instances of using core WordPress image functions.  By default, the plugin sets all images to load lazily rather than eagerly.</p>\n\n\n\n<p>It is refreshing to see the continued work by core contributors on more robust image solutions.  Along with WordPress 5.3&rsquo;s <a href=\"https://wptavern.com/wordpress-5-3-improves-large-image-handling\">large image size handling</a>, both features will lead to a generally faster web.  With more users loading high-quality images via mobile phones over the past few years, it has only exacerbated the problem of a slow web.  That is why it imperative that WordPress continually push for image optimization.</p>\n\n\n\n<p>&ldquo;With WordPress enabling native lazy-loading by default, it would significantly impact performance and user experience for millions of sites, without requiring any technical knowledge or even awareness of lazy-loading as a concept,&rdquo; wrote Arntz in the announcement post.  &ldquo;Adopting the new loading attribute is a great chance for WordPress to lead the way for a faster web overall.&rdquo;</p>\n\n\n\n<p>Arntz and a team of engineers originally <a href=\"https://wptavern.com/google-releases-native-lazyload-plugin-for-wordpress\">released a native lazy loading plugin</a> in September 2019.  This was shortly after <a href=\"https://wptavern.com/chrome-76-adds-native-lazy-loading-wordpress-contributors-continue-discussion-regarding-core-support\">Google brought the &ldquo;loading&rdquo; attribute</a> feature to version 76 of its Chrome browser.  The Native Lazyload plugin currently has over 7,000 installations.</p>\n\n\n\n<h2>How This Affects Existing Plugins</h2>\n\n\n\n<p>Because not all web browsers support the loading attribute, users may not want to automatically drop their current plugins when the feature lands in WordPress.  Users may choose to support  browsers without native lazy loading for a while</p>\n\n\n\n<p>The proposed code within the Lazy Loading plugin attempts to detect whether the <code>loading</code> attribute exists on an image before applying it.  This means the code should play nicely with existing plugins and avoid conflicts in most cases.</p>\n\n\n\n<p>Developers of plugins that handle lazy loading need to start testing their plugins and updating them for WordPress 5.4.  Follow the <a href=\"https://core.trac.wordpress.org/ticket/44427\">Lazy Loading API ticket</a> on core Trac to stay updated on when the feature lands and the <a href=\"https://github.com/WordPress/wp-lazy-loading\">GitHub repository</a> for contributing to its development.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 30 Jan 2020 20:22:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: XML Sitemaps Feature Plugin Open for Testing and Feedback\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96800\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/xml-sitemaps-feature-plugin-open-for-testing-and-feedback\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6492:\"<p>Thierry Muller, a Developer Relations Program Manager at Google, and several contributors posted an <a href=\"https://make.wordpress.org/core/2020/01/27/feature-plugin-xml-sitemaps/\">update on the XML sitemaps feature</a> that may land in WordPress this year.  After seven months of development, the team has made the <a href=\"https://github.com/GoogleChromeLabs/wp-sitemaps\">XML Sitemaps feature plugin</a> available on GitHub.  It is currently open for testing and feedback.  The plugin should also be available in the WordPress plugin directory by next week.</p>\n\n\n\n<p class=\"has-background has-gray-100-background-color is-style-default bg-gray-100\"><strong>Update (January 31, 2020):</strong> The <a href=\"https://wordpress.org/plugins/core-sitemaps/\">Core Sitemaps feature plugin</a> is now available in the WordPress plugin repository.</p>\n\n\n\n<p>The project aims to ship a basic version of an XML sitemaps feature to all WordPress installations.  It will also offer an API for plugin developers to manipulate.  Therefore, sitemap plugins would not automatically disappear.  Instead, plugins would offer users various options on how their sitemaps work.</p>\n\n\n\n<p>A team created by Google, Yoast, and other contributors <a href=\"https://wptavern.com/developers-at-yoast-and-google-collaborate-on-proposal-to-add-xml-sitemaps-to-wordpress-core\">originally proposed XML sitemaps as a core WordPress feature</a> in June 2019.  Traditionally, WordPress has left this feature to plugins to implement, and many have filled this role over the years.  However, several other major content management systems ship with sitemaps as part of their core codebase.</p>\n\n\n\n<p>Many praised the initiative, such as WordPress project lead Matt Mullenweg.  &ldquo;This makes a lot of sense, looking forward to seeing the v1 of this in core and for it to evolve in future releases and cement WordPress&rsquo; well-deserved reputation of being the best CMS for SEO,&rdquo; he said.</p>\n\n\n\n<p>However, several people questioned whether WordPress should ship with XML sitemaps.  Some were worried about performance and others felt like the feature should remain in plugins.</p>\n\n\n\n<p>&ldquo;At a high level, expanding the number of WordPress sites with Sitemaps ultimately speeds up content discoverability by search engines and re-crawl fresher content flagged by the lastmod date faster than a scheduled bot would,&rdquo; Muller said of the primary reasons the feature belongs in core.</p>\n\n\n\n<p>WordPress users may see this feature arrive in major update this year.  &ldquo;Ambitiously [version] 5.4,&rdquo; said Muller of the release goal.  &ldquo;Realistically 5.5.&rdquo;</p>\n\n\n\n<p>The feature plugin currently indexes the following URLs for a site:</p>\n\n\n\n<ul><li>Homepage</li><li>Blog posts page (if not the homepage)</li><li>Posts and pages</li><li>Categories and tags</li><li>Custom post types</li><li>Custom taxonomies</li><li>Users/Authors</li></ul>\n\n\n\n<p>Custom post types and taxonomies are registered only if they are public.  There is also a filter hook available to change which post types, taxonomies, and users are indexed.  Ideally, WordPress would provide a registration flag for post types and taxonomies.</p>\n\n\n\n<h2>Solving the Performance Issues</h2>\n\n\n\n<p>One of the primary concerns with the initial proposal is how well a core sitemaps feature would perform and scale, particularly on larger sites.  Without a full caching solution built into core, it presented some hurdles for the team.</p>\n\n\n\n<p>&ldquo;Solving the performance issue is not trivial, and we have looked into various solutions,&rdquo; said Muller.  &ldquo;We believe that we landed on a solution that doesn&rsquo;t need full caching and will still be scalable.&rdquo;</p>\n\n\n\n<p>For performance, there are two primary challenges:</p>\n\n\n\n<ul><li>The number of URLs per page.</li><li>The <code>lastmod</code> date in the <code>index.xml</code> file.</li></ul>\n\n\n\n<p>&ldquo;Addressing the number of URLs per page is fairly trivial,&rdquo; said Muller.  &ldquo;While sitemaps can have up to 50,000 URLs per sitemap, we found that capping it at 2,000 is acceptable from a performance perspective and totally acceptable from a search engine perspective.&rdquo;  The team decided to stick with a default of 2,000 URLs per sitemap and to provide a filter hook for plugins to alter if necessary.</p>\n\n\n\n<p>Finding a solution for the <code>lastmod</code> date was not as easy.  &ldquo;We believe we found a good balance, which will be scalable and doesn&rsquo;t open the can of worms that full caching exposes us to,&rdquo; said Muller.</p>\n\n\n\n<p>The solution the team implemented involved scheduling a cron task that runs twice daily (the frequency can be filtered by plugins).  The cron job fetches the <code>lastmod</code> dates of each sitemap and stores them in the options table, which essentially works as a light caching solution.</p>\n\n\n\n<p>&ldquo;Relying on cron should be stable enough for small to medium websites,&rdquo; said Muller.  &ldquo;Enterprise websites usually have server cron set up to more regularly ping WP Cron instead of relying on website visitors to trigger it. In fact, most managed hosting providers have that for all plans.&rdquo;</p>\n\n\n\n<p>If the team&rsquo;s initial implementation is not well-rounded enough, they have been researching an alternative implementation that uses custom post types to store and update sitemap data.  Two open GitHub tickets further explore performance that developers may want to check out:  <a href=\"https://github.com/GoogleChromeLabs/wp-sitemaps/issues/1\">Issue #1</a> and <a href=\"https://github.com/GoogleChromeLabs/wp-sitemaps/issues/39\">Issue #39</a>.</p>\n\n\n\n<h2>What Happens to Sites With Existing Sitemaps?</h2>\n\n\n\n<p>One question that remains unanswered is what happens when a user updates to WordPress 5.4/5.5 and already has a sitemap.  There are likely millions of WordPress sites that are running a plugin or have some sort of sitemap solution in place.  </p>\n\n\n\n<p>&ldquo;This is a question which we haven&rsquo;t quite solved,&rdquo; said Muller.  &ldquo;It is important to work with plugin authors, and in an ideal world, all plugins providing advanced sitemaps solutions would extend the core API. We would love to get feedback from the community on that one.&rdquo;</p>\n\n\n\n<p>WordPress must take care to avoid any major conflicts or indexing errors, or at least alleviate issues for the users who may be unaware of this upcoming feature.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Jan 2020 20:37:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Emoji Conbini and the Case for a Block Enhancements Directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96802\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/emoji-conbini-and-the-case-for-a-block-enhancements-directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8193:\"<p>In December of 2019, Nick Hamze, the owner of <a href=\"https://sortabrilliant.com/\">Sorta Brilliant</a>, quietly launched <a href=\"https://block.garden/\">Block Garden</a> with a proposal for plugin authors to build block-based plugins off concepts, called <em><a href=\"https://block.garden/seeds/\">seeds</a></em>, from his site.  He has since written extensively on the block editor and has shared a multitude of ideas, many of which are <em>sorta brilliant</em>.</p>\n\n\n\n<p>It is easy to be drawn in by Hamze&rsquo;s unabashed love for blocks.  In a post titled &ldquo;<a href=\"https://block.garden/not-busy/\">You aren&rsquo;t busy, you&rsquo;re just not excited</a>,&rdquo; Hamze challenges developers to build something, anything and not worry about it being perfect or becoming an earth-shattering product.  &ldquo;The purpose of Block Garden is to get you excited about blocks,&rdquo; he wrote in the post.  &ldquo;To make you so excited about blocks that you&rsquo;ll make the time to bring them to life. The community needs you more than you realize. I honestly believe that every person has at least one block in them. If I can get you to create that first block, I know you&rsquo;ll be hooked for life.&rdquo;</p>\n\n\n\n<p>He has created a space for those who genuinely love the block editor.  Block Garden is reminiscent of some of the early WordPress blogs where normal, everyday end-users shared their love of the platform.  It is refreshingly optimistic.  It is block geekdom at its finest.  <em>And, I kind of love it.</em></p>\n\n\n\n<p>Hamze put out a <a href=\"https://block.garden/block-builder/\">job posting for block developers</a> earlier this month.  Several developers answered the call.  &ldquo;I can&rsquo;t code but I have ideas and cash that I&rsquo;m investing into blocks, mostly to keep the boredom at bay that is slowly killing me,&rdquo; he said.  &ldquo;We are making some really fun blocks together.  This is just the tip of the iceberg.&rdquo;</p>\n\n\n\n<p>In a few short weeks, Hamze and his co-authors have released multiple block-related plugins through his Sorta Brilliant brand that are now available on the WordPress plugin directory:</p>\n\n\n\n<ul><li><a href=\"https://wordpress.org/plugins/post-script/\">P.S.</a> &ndash; A container block for grouping blocks into a popover.</li><li><a href=\"https://wordpress.org/plugins/streamshare/\">StreamShare for Twitch</a> &ndash; Embed Twitch content into the block editor.</li><li><a href=\"https://wordpress.org/plugins/ghstwrtr/\">Ghostwriter</a> &ndash; Adds a heading block style that types out the text on the front end, <em>Ghostwriter</em> style (for you fans of the &rsquo;90s TV series).</li><li><a href=\"https://wordpress.org/plugins/ubiquitous-blocks/\">Ubiquitous Blocks</a> &ndash; Exposes the Reusable Blocks admin screen and allows users to automatically add them to posts.</li></ul>\n\n\n\n<h2>Emoji Conbini</h2>\n\n\n\n<img />Inserting an emoji with the Emoji Conbini plugin.\n\n\n\n<p>In collaboration with George Mamadashvili, Hamze&rsquo;s latest release is the <a href=\"https://wordpress.org/plugins/emoji-conbini/\">Emoji Conbini</a> plugin.  It adds an emoji inserter to the block editor toolbar.</p>\n\n\n\n<p>Emoji Conbini utilizes the <a href=\"https://github.com/missive/emoji-mart\">Emoji Mart</a> library, which offers a Slack-like emoji picker.  When the picker is open, the user merely needs to choose their preferred emoji.  Users can also search for a specific emoji.</p>\n\n\n\n<p>Hamze was aware of the <a href=\"https://wordpress.org/plugins/emoji-autocomplete-gutenberg/\">Emoji Autocomplete Gutenberg</a> plugin before commissioning his emoji plugin for the block editor.  &ldquo;I loved how easy it made adding emoji but I didn&rsquo;t like the UI,&rdquo; he said.  &ldquo;It seemed like you had to know what emoji you wanted to add and relied on keyboard shortcuts, which I don&rsquo;t think everyone is comfortable with.&rdquo;</p>\n\n\n\n<p>The problem with both emoji plugins is that they insert the WordPress-based emoji image directly into the editor instead of the emoji character.  By default, WordPress will automatically convert emoji characters to images on the front end.  For the average user, this is likely a non-issue.  However, some users prefer to use the browser-based emoji and disable the images that core outputs.  Both emoji plugins remove this possibility.  They also remove the possibility of using a different emoji image library.</p>\n\n\n\n<p>&ldquo;To be honest, I&rsquo;m not really a fan of the browser versions, but I&rsquo;m willing to consider anything if there is a demand for it,&rdquo; said Hamze of the possibility of simply inserting the emoji character.  &ldquo;To me, getting version 1 out there is the most important, and if anything needs to be changed, people will let me know.&rdquo;</p>\n\n\n\n<p>The term &ldquo;conbini&rdquo; initially drew me to the plugin, which is the name given to Japanese convenient stores &#127978;.  If you have never been to one, they are like stepping into another world (<em>almost everything in Japan seems otherworldly to this smalltown guy from the southern U.S.</em>).</p>\n\n\n\n<p>&ldquo;I love everything from Japan,&rdquo; said Hamze.  &ldquo;The music, anime, the tech. I bid on items on Yahoo Japan daily as I love surrounding myself with cool stuff from Japan. I&rsquo;ve only been to Japan once, but it was magical. I especially loved going to conbini. My favorite thing to get there was rice balls from Lawsons.&rdquo;</p>\n\n\n\n<p>The plugin name also plays into Hamze&rsquo;s goals with Sorta Brilliant and Block Garden.  While many other plugins are offering full packages for blocks, he is dropping smaller, <em>convenient</em> extensions to the block editor.  Emoji Conbini shows that there is perhaps a market for add-ons that are block-related but not necessarily blocks, or at least some people are thinking about it.</p>\n\n\n\n<h2>Discovering Block Extensions</h2>\n\n\n\n<p>In his post &ldquo;<a href=\"https://block.garden/more-than-just-blocks/\">The block directory needs more than just blocks</a>,&rdquo; Hamze argues that one of the largest hurdles for block-related plugins is discoverability.  He further argues the block directory is too tightly focused on individual blocks, proposing a &ldquo;block enhancements&rdquo; category as a solution.</p>\n\n\n\n<p>For Emoji Conbini, 10up&rsquo;s <a href=\"https://wptavern.com/inserting-special-characters-into-the-block-editor\">Insert Special Characters</a>, ThemeIsle&rsquo;s <a href=\"https://wordpress.org/plugins/blocks-css/\">Blocks CSS</a>, and other plugins that extend the block editor, there is no way for users to discover these plugins without specifically searching for them.  These are useful plugins that could help sell the block editor to users who are on the fence.</p>\n\n\n\n<p>There is an unknown number of possibilities for enhancements to the block editor.  This sub-category of block-editor plugins does not seem to get the attention that is going toward blocks.  However, in some cases, they can be far more useful for everyday writing than the numerous blocks in development.</p>\n\n\n\n<p>Hamze&rsquo;s initial idea proposes an enhancements category for the <a href=\"https://wptavern.com/version-1-prototype-of-the-wordpress-admin-block-directory-announced\">upcoming block directory</a>, but that has problems.  For one, the block directory will be directly tied to the block inserter in a future version of WordPress.  Plus, these types of plugins are not actual blocks.  However, the concept of making block enhancements more visible to users is a necessary part of the puzzle.  For the block editor&rsquo;s continued success, WordPress needs to expose its users to a wider world of possibilities than simply installing another block.</p>\n\n\n\n<p>Now is the time to start thinking about exposure for plugins that enhance the block editor.  Eventually, these types of plugins may need to be further grouped into editor toolbar (e.g., character inserters), block options (e.g., extra settings for existing blocks), and other categories.  I suspect that we are only now glimpsing a future where users will be asking how to find not just blocks but block editor extensions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Jan 2020 20:54:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: Swift Control Replaces WordPress Toolbar With Custom Access Panel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/swift-control-replaces-wordpress-toolbar-with-custom-access-panel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5397:\"<img />Swift Control expanded panel on the site front end.\n\n\n\n<p>David Vongries, creator of the <a href=\"https://wordpress.org/themes/page-builder-framework\">Page Builder Framework</a> theme, launched the <a href=\"https://wordpress.org/plugins/swift-control/\">Swift Control plugin</a> last week.  The plugin is billed as a replacement for the core WordPress toolbar (admin bar).  It allows site owners to customize the front-end control panel&rsquo;s appearance and what links are displayed.</p>\n\n\n\n<p>Swift Control adds a new button on the front end of any site the plugin is active on.  When clicked, the button expands to open the full array of button-like links to various admin screens.  By default, the links point to the dashboard, edit screen for the current post, and the customizer.</p>\n\n\n\n<p>On the whole, the default functionality is not much different from the normal toolbar.  The selling point for this plugin is its customizability.  For users who want more control over admin access links from the front end, the plugin is a nice option.</p>\n\n\n\n<p>Vongries said the plugin made it easier for his customers to work with than the WordPress toolbar.  He had wanted to release it as a standalone plugin for others to use over the years.  However, he lacked the time and resources to put the release together.</p>\n\n\n\n<p>&ldquo;We built this for our multisite network around 3 years ago to make it easier for our customers to navigate and access the key areas of their website,&rdquo; said Vongries.  &ldquo;We actually ended up using this &mdash; what was back then just a couple pieces of custom code &mdash; on all of our client websites. I got so used to it, I&rsquo;m using it on my own sites as well.&rdquo;</p>\n\n\n\n<p>The plugin is simple to use and does its job well.  For the moment, the largest downside is that the front-end controls are always positioned in the middle of the left side of the screen.  This means it is not a one-size-fits-all solution.  &ldquo;We&rsquo;ve actually planned to provide some position options so you can align the panel to the left, right, top-left, top-right and so on,&rdquo; said Vongries.  &ldquo;That&rsquo;s on the roadmap as well as some different styling options for the panel.&rdquo;  Both the positioning and styling options are planned for the free version of the plugin.</p>\n\n\n\n<p>It would also be nice to see some mobile-specific options for the control panel.  An option to move it to a different location on smaller screens would be helpful so that the buttons do not inadvertently cover content.  Adding an option to disable it completely on mobile may also be worth considering.</p>\n\n\n\n<p>The positioning is the only <em>potential</em> downside of an otherwise well-made plugin.  Because it is being actively worked on, it may be a non-issue in future versions (<em>I&rsquo;m currently running version 1.2.1</em>).</p>\n\n\n\n<h2>Customize the Swift Control Panel</h2>\n\n\n\n<img />Swift Control plugin settings screen.\n\n\n\n<p>The beauty of Swift Control is in its options for customizing what buttons appear in the front-end panel.  By default, the free version of the plugin contains seven &ldquo;widgets&rdquo; (what the plugin calls its buttons/links):</p>\n\n\n\n<ul><li>Dashboard</li><li>Edit {Post Type}</li><li>Customize</li><li>New Post</li><li>New Page</li><li>Themes</li><li>Plugins</li></ul>\n\n\n\n<p>Users can drag and drop these widgets wherever they prefer in the control panel.  Each widget has its own options. By clicking the edit button, users can change both the icon and title for the widget.  Users can also decide whether links should open in a new browser tab.</p>\n\n\n\n<p><a href=\"https://wpswiftcontrol.com/\">Swift Control Pro</a>, the commercial version of the plugin, kicks customization up a notch.  Besides the widgets available in the free version, it adds widgets for custom post types, launches the editor for page builders (Elementor, Brizy, Divi or Beaver Builder), supports WooCommerce, and adds a logout widget.  Users can also create custom buttons.</p>\n\n\n\n<p>Both the free and pro versions offer additional settings.  Users can customize each of the colors used in the control panel so that it matches their site.  Other settings are switches to enable or disable features, such as turning off the WordPress toolbar.</p>\n\n\n\n<p>The following video shows how Swift Control Pro works (the free version is essentially the same but does not have the pro widgets):</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<h2>Future Plugin Plans</h2>\n\n\n\n<p>Besides new positioning options, Vongries said they are working on an import and export feature.  Ideally, this would allow users to keep their settings from test environments or when copying to new sites.  It could also be interesting in use on multisite.</p>\n\n\n\n<p>&ldquo;One of the other features we&rsquo;re going to work on next is the ability to show controls based on user roles,&rdquo; said Vongries.  &ldquo;This will require us to change the UI of the widgets though, and we haven&rsquo;t yet decided on what they should look like.&rdquo;  Currently, the team is exploring various ideas with the UI for such a feature, such as creating an expanding section for access to advanced widget settings.</p>\n\n\n\n<p>The first order of business is bringing in more users and getting feedback, which should help steer the future direction of the plugin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Jan 2020 19:46:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordPress.org blog: People of WordPress: Robert Cheleuka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8300\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2020/01/people-of-wordpress-robert-cheleuka/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7036:\"<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Robert Cheleuka</strong></h2>\n\n\n\n<p>Robert is a self-taught graphic and motion designer turned web designer (and aspiring web developer) from Malawi, Africa. Over the years, he has grown fond of WordPress and has become a loyal user. Still, the journey is rough.</p>\n\n\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2020/01/DSC08818.jpg?resize=632%2C790&ssl=1\" alt=\"Robert Cheleuka\" class=\"wp-image-8303\" />Robert Cheleuka\n\n\n\n<h3><strong>Malawi</strong></h3>\n\n\n\n<p>Malawi is one of the poorest countries in the world. A tiny landlocked country with a population of 17 million, it’s largely rural and still considered a developing country. The average entry-level monthly pay for most skilled jobs is about $110. If you&#8217;re employed full-time in the creative industry and if you’re very lucky, you might be able to earn more than that. Employees earning more than $300 a month are rare to non-existent.</p>\n\n\n\n<p>Robert has been a freelance graphic designer since about 2011. He started by doing gigs from his dorm in college and from home. Earnings from his freelance jobs increased his interest in entrepreneurship and he started to consider starting his own creative agency.</p>\n\n\n\n<h3><strong>How Robert was introduced to WordPress</strong></h3>\n\n\n\n<p>Robert first came into contact with WordPress in 2014 when he and a friend started a local tech blog. Before that, all he knew was basic, outdated HTML from high school and some knowledge of Adobe Dreamweaver. They decided to use WordPress, and their new blog looked like it came from the future. They used a theme from the repo and got such positive feedback from the blog they decided to open a content and media publishing agency.</p>\n\n\n\n<p>While they got a few web redesign jobs thanks to the exposure the blog brought, they lacked the administrative and business skills needed and ended up going their separate ways. Then in his first real job after college Robert finally took it upon himself to learn the ins and outs of WordPress. He learned how to install WordPress on a server and did some research on customizing themes. </p>\n\n\n\n<p>With that knowledge alone he got his first web design clients and started earning nearly as much as he did at his job. Robert soon realized that free WordPress themes would only take him so far, especially with his limited code skills.</p>\n\n\n\n<p>Because in Malawi only people who travel abroad have access to credit cards, paying for premium themes was impossible. Like many WordPress designers in developing countries, Robert turned to using pirated themes instead. He knew that was both unsafe and unethical, and decided to learn how to code. Knowing how to build themes from scratch would surely help him rise above the competition. </p>\n\n\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2020/01/20180905_1971270886435744_8835917058488139776_n.jpg?fit=632%2C632&ssl=1\" alt=\"\" class=\"wp-image-8304\" />\n\n\n\n<h3><strong>The WordPress community from Robert’s perspective</strong></h3>\n\n\n\n<p>Robert doesn’t have a lot of interaction with the WordPress community. Although he would search for solutions from blogs about WordPress he had never actually talked to or asked anyone from the community for a solution.&nbsp;</p>\n\n\n\n<p>Robert believes that this isolation is the result of a glass ceiling &#8212; the WordPress community is partially online and partially in-person, but there isn’t a local group in Malawi. And because Malawi, like many other developing nations, lacks a way to pay online many can’t access premium support, online learning, or most other types of professional development. No matter how welcoming the people of WordPress might be, it can still feel like it mostly belongs to those with enough privilege to conduct business on the internet.</p>\n\n\n\n<h3><strong>WordPress &amp; inclusion</strong></h3>\n\n\n\n<p>As most freelancers know, it’s really hard to learn while you also still need to earn. Add pitching to clients and shipping graphic design projects… there are only so many hours in a day.</p>\n\n\n\n<p>Robert didn’t have a programming background and had always been more of a creative person. In order to grow as a web designer/developer, he needed to learn PHP. Again, without access to a credit card, that was complicated. Also, free coding training wasn’t as widely available as it is now.</p>\n\n\n\n<p>Robert wishes that more developers would consider alternative ways for users who cannot pay for courses, themes, or plugins (whether that’s because of available infrastructure or otherwise). He wishes that WordPress tutors and developers would open up ways to accommodate aspiring learners in developing countries who cannot access plugins, courses, and themes, to be able to give back and to participate at another level.</p>\n\n\n\n<p>WordPress has allowed him to build an income he would have no other way of earning and it makes a huge difference. He believes sharing stories like his will hopefully make WordPress products and services become more universally available. In addition, he hopes that more aspiring, self-taught developers will find courage in reaching out to connect with others out there.</p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Alison Rothwell (<a href=\"https://profiles.wordpress.org/wpfiddlybits/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a>), Siobhan Cunningham (<a href=\"https://profiles.wordpress.org/siobhanseija/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>siobhanseija</a>), Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>topher1kenobe</a>)</p>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=632%2C474&ssl=1\" alt=\"\" class=\"wp-image-7025\" />\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p> <em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em> </p>\n</div>\n</div>\n\n\n\n<p> <em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em> </p>\n\n\n\n<p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 Jan 2020 15:26:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: 10up Releases Autoshare for Twitter WordPress Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96737\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/10up-releases-autoshare-for-twitter-wordpress-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3951:\"<p>On Tuesday, 10up <a href=\"https://10up.com/blog/2020/autoshare-for-twitter-wordpress-plugin/\">released its Autoshare for Twitter plugin</a>.  The plugin is designed to automatically tweet blog posts as they are published.  By default, it will send the post title, featured image, and link to Twitter.  Users can also add a custom message. The <a href=\"https://wordpress.org/plugins/autoshare-for-twitter/\">plugin is available</a> in the WordPress plugin directory.</p>\n\n\n\n<p>If you threw a rock into a crowd of WordPress plugins, you would likely smack a social-networking extension.  The WordPress plugin market is crowded with similar plugins, so it would make sense if this one flew under the radar.  Plus, powerhouse plugins like Jetpack provide similar functionality, such as the <a href=\"https://jetpack.com/support/publicize/\">Jetpack Publicize feature</a>.  Yet, with the prevalence of similar plugins, Autoshare for Twitter is worth checking out.</p>\n\n\n\n<p>Many similar plugins work with multiple social networks, but 10up&rsquo;s plugin is designed specifically for sharing via Twitter.  For users who only need a solution for that specific social network, it is a solid solution for version 1.0.</p>\n\n\n\n<p>10up originally built the plugin to provide the company&rsquo;s clients more control and customization than they found in existing solutions.  &ldquo;Recognizing its widespread potential, we decided to follow our own best practices for managing open-source software by releasing it as a free plugin on the official WordPress plugin repository,&rdquo; wrote Jeff Paul, Associate Director of Open Source Initiatives at 10up.</p>\n\n\n\n<p>The plugin works with both the block and classic editors.  When in use with the block editor, it is added as part of the pre-publish check system as shown in the following screenshot:</p>\n\n\n\n<img />Pre-publish check for tweeting a post.\n\n\n\n<p>The custom message box tracks the number of characters so that users do not go over Twitter&rsquo;s character count.   The plugin also displays a message in the Status &amp; Visibility panel to let users know if a post was shared on Twitter.   </p>\n\n\n\n<p>Overall, the plugin does its job well (<em>sorry to folks who were bombarded with some test tweets earlier</em>).  It would be nice to see similar one-off solutions that are specific to other social networks.  I often find myself in need of such plugins without dealing with a full array of social networking options.</p>\n\n\n\n<p>The plugin is also <a href=\"https://github.com/10up/autoshare-for-twitter\">available on GitHub</a> for others to contribute.  Currently, there are several open issues that would improve how the plugin works.</p>\n\n\n\n<h2>Setup Is Not User-Friendly</h2>\n\n\n\n<img />Settings page for Twitter credentials.\n\n\n\n<p>The biggest downside to the plugin is there are no links, no admin help tab, and no instructions on how to set up the Twitter Credentials on the plugin&rsquo;s setting screen.  The page simply has some text fields for things like an API Key, API Secret, and so on.  These are not user-friendly terms, and will likely be confusing for many.  Not to mention, similar plugins can connect users at the click of a button.  For a plugin that does nearly everything else right, this is a missing piece of what would be a near-perfect release.</p>\n\n\n\n<p>The plugin is ideal for power users or developers who want to set up Twitter sharing for a client. In the current version of the plugin, users need to set up a <a href=\"https://developer.twitter.com/\">Twitter Developer account</a> and create a Twitter App.  This generates the API keys and necessary tokens for using the plugin.</p>\n\n\n\n<p>The plugin does have an <a href=\"https://github.com/10up/autoshare-for-twitter/issues/57\">open ticket on GitHub</a> for a better onboarding process, which could solve this issue.  Therefore, the team is aware of and actively working on making this smoother in a future version.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 Jan 2020 21:00:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: Gutenberg 7.3 Brings Navigation Block Colors, Block Collections API, and Dynamic Post Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96706\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://wptavern.com/gutenberg-7-3-brings-navigation-block-colors-block-collections-api-and-dynamic-post-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5495:\"<p>The Gutenberg team <a href=\"https://make.wordpress.org/core/2020/01/22/whats-new-in-gutenberg-22-january/\">announced version 7.3</a> of the plugin yesterday.  This was the second release of the year, which included 159 contributions from 56 people.  The major changes to the plugin include settings for changing the navigation block&rsquo;s text and background colors, a new Block Collections API for developers, and placeholder blocks for post elements.</p>\n\n\n\n<p>One of the most significant changes with this release is the speed improvement for page load times and input events.  Speed tests are done against posts with ~36,000 words and ~1,000 blocks.  The team reduced total load time from 6.431 seconds in version 7.2 to 4.55 seconds in version 7.3.  Input events saw larger improvements.  Events in 7.3 take 33.8 milliseconds in comparison to 64.7 milliseconds in 7.2.</p>\n\n\n\n<p>Changes in Gutenberg 7.3 covered a wide range of areas in the plugin.  The team added an <a href=\"https://github.com/WordPress/gutenberg/pull/18132\">experimental label function</a> for improving block accessibility.  They corrected over a dozen bugs with editor navigation.  They also introduced some new developer APIs such as a <a href=\"https://github.com/WordPress/gutenberg/pull/19317\">warning utility</a>, <a href=\"https://github.com/WordPress/gutenberg/pull/18495\">text component</a>, and <a href=\"https://github.com/WordPress/gutenberg/pull/17148\">image size control component</a>.</p>\n\n\n\n<p>Work toward full-site editing continued in this release.  It is now possible to <a href=\"https://github.com/WordPress/gutenberg/pull/19203\">edit existing template part files</a>.  The site editor can also <a href=\"https://github.com/WordPress/gutenberg/pull/19081\">load the front page block template</a>.</p>\n\n\n\n<h2>Navigation Block Colors</h2>\n\n\n\n<img />Selecting custom colors for the navigation block.\n\n\n\n<p>The existing Navigation block continues to improve with each release.  Version 7.3 <a href=\"https://github.com/WordPress/gutenberg/pull/19108\">added new options</a> for setting the text color for all navigation items and background color for the entire navigation block.</p>\n\n\n\n<p>It is nice to see some work done toward providing users control over navigation colors.  However, it is a far cry from what a good theme designer can do with the flexibility of plain ol&rsquo; CSS.  Handling navigation colors is tricky because there is so much that is missing.  Link colors also need hover and focus state changes.  Some designs may need borders for links and border color changes for the various link states or even background color changes.</p>\n\n\n\n<p>Suffice it to say, I am still skeptical about how good the navigation block will be when it is time to move onto full-site editing, especially in comparison to the fine-tuned control that a theme author would normally have.</p>\n\n\n\n<h2>Dynamic Post Element Blocks</h2>\n\n\n\n<img />Post element placeholder blocks.\n\n\n\n<p>In previous releases, the Gutenberg team dropped post title and post content blocks.  These are placeholder blocks that will dynamically output the title and content for posts.  The long-term goal is for these blocks to be used along with full-site editing, which will allow users to manipulate how everything on their sites is output, including posts.</p>\n\n\n\n<p>Gutenberg 7.3 introduced three new placeholder blocks for post elements:</p>\n\n\n\n<ul><li><a href=\"https://github.com/WordPress/gutenberg/pull/19576\">Post author block</a></li><li><a href=\"https://github.com/WordPress/gutenberg/pull/19578\">Post date block</a></li><li><a href=\"https://github.com/WordPress/gutenberg/pull/19579\">Post excerpt block</a></li></ul>\n\n\n\n<p>This still represents early work toward full-site editing.  Eventually, Gutenberg will need to turn nearly every important template tag into a block to get full coverage of what is currently possible with PHP.</p>\n\n\n\n<p>To test these features, you must enable &ldquo;Full Site Editing&rdquo; via the Gutenberg &gt; Experiments screen in the WordPress admin.</p>\n\n\n\n<h2>Block Collections API for Developers</h2>\n\n\n\n<pre class=\"wp-block-code alignwide\"><code>registerBlockCollection( \'super-duper\', {\n    title: \'Super Duper\',\n    icon: ( &lt;SVG xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"&gt;&lt;Path d=\"M11 5v7H9.5C7.6 12 6 10.4 6 8.5S7.6 5 9.5 5H11m8-2H9.5C6.5 3 4 5.5 4 8.5S6.5 14 9.5 14H11v7h2V5h2v16h2V5h2V3z\" /&gt;&lt;/SVG&gt; ),\n} );</code></pre>\n\n\n\n<p>A new Block Collections API was added to version 7.3 for plugin developers.  Instead of registering a block category and adding blocks to specific categories, plugin developers can register a collection based on the namespace for their blocks.</p>\n\n\n\n<p>For instance, suppose you develop a plugin with a collection of blocks.  Each block is under the namespace <code>super-duper</code>.  When you register a block collection with the <code>super-duper</code> namespace, all of the blocks would be automatically registered to your custom block collection.  This seems to be a smarter way to handle groups of blocks than the existing category system. </p>\n\n\n\n<p>Right now, collections work the same way as categories within the UI.  However, it does open collections to other possibilities in the future.</p>\n\n\n\n<p>Blocks can still be registered to a specific category that makes the most sense for the individual block.  However, by registering collections, an avenue exists for finding all blocks coming from a single source.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Jan 2020 21:17:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: Thinking Outside the WordPress Box\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3054\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"https://heropress.com/essays/thinking-outside-the-wordpress-box/#utm_source=rss&utm_medium=rss&utm_campaign=thinking-outside-the-wordpress-box\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7186:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2021/01/012320-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I feel that we’ve only scratched the surface of what WordPress can be.\" /><p>Most people, when they discover WordPress, start on the challenging and rewarding path of developing themes, plugins and similar products. I decided to think outside the box.</p>\n<p>My name is Alexander, and my WordPress journey began in 2009. I’m from Chisinau, Republic of Moldova. I originally discovered WordPress while looking for a content management system for one of my projects. Intrigued by how it worked, I started like many others do &#8212; learning how WordPress works through developing WordPress websites.</p>\n<p>I started using what I knew to provide development services on freelance platforms. For the next decade, I mostly concentrated on the lesser known, yet still critically important parts of WordPress: particularly security and search engine optimization.</p>\n<p>For many people building up a freelance business in the WordPress world, these are the parts that are important to do, but are often thought of as secondary to deeper development. Theme and plugin authors in particular, get the lion’s share of the spotlight when it comes to WordPress development.</p>\n<h3>Speed and Sophistication</h3>\n<p>I soon learned that after a decade of polishing my skills, that what the world needed wasn’t more WordPress theme developers or plugin authors. What it needed were people who could take care of the kinds of tasks that seemed simple on the surface (like protecting a WordPress site from hackers or optimizing it for search engines), yet were very involved and continued to get more complex over time.</p>\n<p>Contrary to popular belief, you can’t just install a plugin or two and think your site is secure or well-optimized for Google and other sites. Sure, there are plugins which can help the process, but when disaster strikes and your site gets hacked, or you find that your site is loading sluggishly compared to your competition, or worse, your site disappears from the search rankings &#8212; you know you need help, and FAST.</p>\n<h3>A Dandy Idea!</h3>\n<p>In 2019 I decided to turn my love for WordPress into full-time work through <a href=\"https://wpdandy.com\">WPDandy</a>. Rather than marketing myself strictly as a WordPress developer or theme designer (although I also do development and design work from time to time), I decided to think outside the box and offer the kinds of services I knew that people needed, but didn’t know how much they needed them, until it was too late!</p>\n<p>Through WPDandy, I focused on WordPress maintenance, management and support services. These include but are not limited to: <b>WordPress speed improvements</b>, <b>security</b>,<b> search engine optimization</b>, <b>backups, etc.</b></p>\n<h3>How WPDandy Has Changed My Life</h3>\n<p>WPDandy has changed my life in many ways. It has enabled me to enjoy the freedom and flexibility of working for myself, doing something that I love. Today, I lead a team of highly professional and passionate WordPress developers from around the world.</p>\n<p>Through my online work, I’m able to help clients reach their business and personal goals, and grow their WordPress sites without worrying about keeping everything up to date (which can be a full-time job in itself, especially if there are multiple sites to run!). My company allows me to help others, and that brings me immense satisfaction!</p>\n<h3>Contributing to the Future of WordPress</h3>\n<p>Although I’m immensely proud of what I’ve built with WPDandy as well as thankful to all of the clients who helped me to discover and master the art and science of WordPress, I felt like I also owed something to the WordPress community itself.</p>\n<p>That’s why I’ve also signed on to be a WordPress contributor. I routinely offer suggestions, advice and share code that can help make managing and maintaining WordPress easier, as well as keep it more secure and less vulnerable to hacking and suspicious attacks.</p>\n<p>Beyond that, I’m overjoyed to be a WordCamp speaker as well. I love sharing knowledge with others and collaborating with like minds on powerful new ideas that can help shape WordPress and make it even better than before.</p>\n<h3>Shaping the Future of Content Management</h3>\n<p>It continues to amaze me how what once started as a small, ordinary blogging platform has blossomed into an absolute content management powerhouse. WordPress can become so many things: an e-commerce storefront, a message board, a membership site, and of course a blog. But I feel that, by and large, we’ve only scratched the surface of what WordPress can be.</p>\n<p>I look forward to continuing to be able to provide outstanding WordPress development, maintenance and management services for all of the many iterations of WordPress that exist and will be created in the future. It’s going to be an exciting ride, and I can’t wait to see what’s next.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Thinking Outside the WordPress Box\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Thinking%20Outside%20the%20WordPress%20Box&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthinking-outside-the-wordpress-box%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Thinking Outside the WordPress Box\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fthinking-outside-the-wordpress-box%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthinking-outside-the-wordpress-box%2F&title=Thinking+Outside+the+WordPress+Box\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Thinking Outside the WordPress Box\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/thinking-outside-the-wordpress-box/&media=https://heropress.com/wp-content/uploads/2021/01/012320-min-150x150.jpg&description=Thinking Outside the WordPress Box\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Thinking Outside the WordPress Box\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/thinking-outside-the-wordpress-box/\" title=\"Thinking Outside the WordPress Box\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/thinking-outside-the-wordpress-box/\">Thinking Outside the WordPress Box</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Jan 2020 18:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Alexander Covtun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: GiveWP Plugin Users Raised Over $100 Million in Donations in 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96639\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/givewp-plugin-users-raised-over-100-million-in-donations-in-2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5667:\"<img />\n\n\n\n<p><a href=\"https://wordpress.org/plugins/give/\">GiveWP plugin</a> users raised $106 million in donations in 2019.  This is the first time donation amounts have crossed the $100 million threshold in a year.  Matt Cromwell, GiveWP&rsquo;s COO, made the <a href=\"https://www.facebook.com/photo.php?fbid=10219125809314580\">announcement on Facebook</a> last week.  This is a jump from the $88 million and $41 million raised in 2018 and 2017, respectively.</p>\n\n\n\n<p>&ldquo;I&rsquo;m constantly amazed at what we&rsquo;ve been able to accomplish at GiveWP,&rdquo; said Cromwell.  &ldquo;The team continues to excel as experts in their fields, the platform itself continues to improve and become even more top-notch. But this number we observed recently really puts the rubber to the road.&rdquo;</p>\n\n\n\n<p>The $106 million is not an exact total in donations users have gained in their fundraising campaigns.  It only represents the numbers by users who are using PayPal or Stripe.  &ldquo;Both PayPal and Stripe provide partner programs where platforms like GiveWP get a small percentage of each processing fee,&rdquo; said Cromwell.  &ldquo;This isn&rsquo;t an additional amount, it&rsquo;s money the processor will take either way, but shares with us because we help them generate more business.&rdquo;  The partners programs rely on transparency in reporting, which is how GiveWP can see the total donations made through those payment processors.  &ldquo;In order for us to know that they are paying us appropriately, they need to provide us with numbers to see how much revenue was processed through our platform.&rdquo;</p>\n\n\n\n<p>Both PayPal Standard and Stripe are supported in the free version of the GiveWP plugin, which makes them the go-to choices of payment gateways for end-users.  &ldquo;Authorize.net is the next largest,&rdquo; said Cromwell. &ldquo;But Authorize is maybe a tenth of the number of users as either PayPal or Stripe (rough estimate).&rdquo;  Without data from the other processors, it&rsquo;s impossible to know the total donation numbers, which would be higher than the amount the team is aware of.</p>\n\n\n\n<p>GiveWP currently has over 70,000 active installations, many of which power the donation system on small sites.  The plugin is also used for large non-profit organizations such as <a href=\"https://lifewater.org/\">Lifewater</a>, a Christian-based organization that brings clean water to families living in poverty around the world; <a href=\"https://liberomagazine.com/\">Libero Magazine</a>, a Vancouver-based mental health magazine and community; and <a href=\"https://www.lovebutton.org/\">Love Button</a>, an organization that promotes a culture of love and aims to inspire humans to act with kindness.</p>\n\n\n\n<h2>From the Past to the Future</h2>\n\n\n\n<p>Impress, the company behind the plugin, <a href=\"https://wptavern.com/give-a-new-free-donations-plugin-for-wordpress\">launched GiveWP</a> in 2015 to &ldquo;Democratize Generosity.&rdquo;  The goal was to provide non-profits and other causes the ability to launch campaigns without going through the middle-man of crowd-funding sites, which can sometimes carry a hefty fee.  Handling all of this within WordPress provided a more robust and customizable solution that put site owners in control of how they ran their fundraising efforts.</p>\n\n\n\n<p>It was a bold move to build to launch in a crowded market of existing donation plugins and add-ons for major eCommerce plugins.  Thus far, the venture has turned out well.  However, the GiveWP team is not looking to slow down.</p>\n\n\n\n<p>&ldquo;Honestly, from a plugin/development perspective it feels like we&rsquo;ve learned everything new all over again,&rdquo; said Cromwell of the journey thus far.  &ldquo;The things that we felt were the biggest strengths of the platform still are strong, but also now are technical debt that we&rsquo;re working to revamp to continue to carry GiveWP strong into the future. Our form builder leveled up a lot when we built our own settings API (for example), but now in a post-Gutenberg era, it feels like it needs a more visual refresh. Doing that well with backward compatibility is a serious challenge.&rdquo;</p>\n\n\n\n<p>The team feels like much of their early success was by targeting the WordPress community.  &ldquo;That&rsquo;s playing &lsquo;inside baseball,\'&rdquo; he said.  &ldquo;Getting into the broader WP community and then additionally into the NPO community is where our challenge is now. So we&rsquo;re flexing new muscles in marketing.&rdquo;</p>\n\n\n\n<p>The original partners had to pick up new skills over the past four years.  They had to learn how to switch gears from simply being owners and workers to managing individual teams.  &ldquo;We&rsquo;re so proud of our team that it&rsquo;s become one of our biggest strengths as a company,&rdquo; said Cromwell.  &ldquo;Now getting from 20 employees (where we&rsquo;re at now) to 50 will be an even bigger challenge.&rdquo;</p>\n\n\n\n<p>The GiveWP team does not plan to focus solely on the WordPress ecosystem.  They want to branch out and see where new avenues for growth will take them.</p>\n\n\n\n<p>&ldquo;While WordPress having 35% internet market share is a big deal, there&rsquo;s still more market outside WordPress than inside,&rdquo; said Cromwell.  &ldquo;So for the growth and strength of our company we are now building out a new fundraising SaaS which we&rsquo;re excited to launch this calendar year.&rdquo;</p>\n\n\n\n<p>If the team manages to launch a successful SaaS product on the GiveWP platform, this year&rsquo;s $106 million in fundraising could pale in comparison to 2020&rsquo;s numbers and beyond.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Jan 2020 21:19:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"WPTavern: GoDaddy’s ‘Go’ WordPress Theme Offers a Page-Building Experience via the Block Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96641\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/godaddys-go-wordpress-theme-offers-a-page-building-experience-via-the-block-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8640:\"<img />\n\n\n\n<p>GoDaddy launched its <a href=\"https://wordpress.org/themes/go/\">Go WordPress theme</a> last week.  It has been publicly available through its <a href=\"https://github.com/godaddy-wordpress/go\">GitHub repository</a> for several months, but the theme review team finally approved and set it live in the theme directory.  Thus far, the theme has garnered 7,000 active installs and is likely to hit the popular list, given GoDaddy&rsquo;s history of releasing popular themes.  It also provides translations in 27 languages out of the box.</p>\n\n\n\n<p>Go is simple.  After working with the theme through GoDaddy&rsquo;s <a href=\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\">managed hosting onboarding process</a> in October last year, I was admittedly a little disappointed this time around.  The onboarding process made things almost too easy.  I had a predesigned site without thinking about it.  After installing and activating Go in my test environment, I couldn&rsquo;t help but feel like it would take 100 times more work to recreate the magic I once basked in.  I knew the power of the theme because I had been presented an ideal set of options that were preconfigured for me in the past.  Without the configuration, the theme seemed a little less impressive.</p>\n\n\n\n<p>That&rsquo;s the beauty of great marketing and onboarding.  GoDaddy had already reeled me in.</p>\n\n\n\n<p>While the Go theme is simple, it is also powerful.  A lot of that power is in its block styles.  Instead of focusing on theme-specific features, the team behind the project poured their work into creating an experience that allows theme users to piece their sites together with the block editor.  The theme is ideal for users who want to utilize the block editor as a page builder.</p>\n\n\n\n<p>The theme has a handful of customizer options that provide additional flexibility, but the main selling point is that it gets out of the way and lets the user do the designing.  I suspect we will see many similar themes in the next year as theme authors come to grips with building themes in a block world.  A large part of the market will want themes that are essentially open canvases for site owners to manipulate the output of their site via blocks.</p>\n\n\n\n<p>Go is also designed to work with WooCommerce, which is a large part of the company&rsquo;s <a href=\"https://wptavern.com/godaddy-launches-ecommerce-hosting-plan-in-partnership-with-woocommerce\">eCommerce hosting service</a>.  This integration should make it a nice option for small business owners.</p>\n\n\n\n<h2>CoBlocks Companion Recommended</h2>\n\n\n\n<img />Features block from the CoBlocks plugin.\n\n\n\n<p>The magic of Go is not in the theme itself.  It&rsquo;s in GoDaddy&rsquo;s companion plugin <a href=\"https://wordpress.org/plugins/coblocks/\">CoBlocks</a>, which the company <a href=\"https://wptavern.com/godaddy-acquires-themebeans-coblocks-block-gallery-and-block-unit-tests\">acquired last year</a> in a deal with ThemeBeans.  The plugin has soared from a mere 3,000 active installs to over 100,000 since.</p>\n\n\n\n<p>CoBlocks offers everything from accordions to maps, from logos to pricing tables, and a lot more in between.  It covers a lot of ground that the core WordPress editor blocks do not cover.</p>\n\n\n\n<p>The Go theme is designed to go hand-in-hand with CoBlocks (<em>can we get GoDaddy to just go ahead and rename the plugin to <strong>Go</strong>Blocks?</em>).  The theme is meant to offer a page-building experience.  Because GoDaddy owns both products, it makes sense they would offer one of the nicer integrations between the plugin and a theme.</p>\n\n\n\n<h2>Not Ideal for Blogging</h2>\n\n\n\n<img />A lot of whitespace between text and other blocks in posts.\n\n\n\n<p>The theme makes generous use of whitespace, but its overuse can often break the reading flow for blog posts.  The flow from paragraph to paragraph is fine.  However, the moment you drop an image, gallery, pull-quote, or one of many other blocks into the content, the theme adds an extra 140 pixels of whitespace above and below the block.  It completely throws off the vertical rhythm of the post.</p>\n\n\n\n<p>Go also displays the full posts on the blog posts page instead of excerpts.  There are few things I dislike more when it comes to blogs.  Providing an option for users to choose between a full and summary view would be ideal.</p>\n\n\n\n<p>The theme does not claim to be well-suited to blogging.  None of the demos for the theme show off a blog.  If you&rsquo;re looking for a theme to handle blogging with media mixed in the content, you will find better offerings elsewhere, such as the <a href=\"https://wptavern.com/blocksy-wordpress-theme-provides-a-solid-block-editor-experience\">Blocksy theme</a></p>\n\n\n\n<h2>Limited Yet Useful Theme Options</h2>\n\n\n\n<img />Design style and color scheme options in the customizer.\n\n\n\n<p>The theme adds five sections to the customizer:</p>\n\n\n\n<ul><li>Site Design</li><li>Header</li><li>Footer</li><li>Social</li><li>Site Settings</li></ul>\n\n\n\n<p>Within each section, Go provides a few basic options, most of which are related to colors and layout.  The most useful options reside under the &ldquo;Site Design&rdquo; section.  The theme presents a design style option that changes the theme&rsquo;s fonts and colors.  Currently, there are five design styles:  traditional, modern, trendy, welcoming, and playful.  Once a design style is selected, users can choose from four color schemes for that style.  The design of this system is brilliant.  It gives users choices without forcing them to become designers and handpick the perfect hex code for each color.</p>\n\n\n\n<p>Users who prefer to manage individual colors are not left out.  The theme also provides options for overriding any of the colors from the chosen color scheme.</p>\n\n\n\n<p>I was disappointed that Go opted for creating individual options for various social networks instead of using a navigation menu.  Using WordPress&rsquo; built-in nav menu system for social links has become the <em>de facto</em> standard in the last several years, which allows users to carry their social links from one theme to the next.  Unfortunately, users are required to retype all of their links with this theme.</p>\n\n\n\n<p>The theme keeps does not go overboard with options but provides enough customizability to make the theme unique to the user.</p>\n\n\n\n<h2>How Does the Code Stack Up?</h2>\n\n\n\n<p>The theme offers a solid and well-documented codebase.  There is not much PHP or JavaScript code, so there are few areas where it can go wrong.  The theme&rsquo;s strength is in its CSS.</p>\n\n\n\n<p>The theme templates were primarily HTML with PHP sprinkled in.  For DIY users who like to hack away at theme templates, you should not find any surprises.</p>\n\n\n\n<h2>Final Thoughts</h2>\n\n\n\n<p>Users who want to customize every page of their site will likely enjoy this theme.  It is well-suited for small business owners and others with small sites.  It could work well for artists and others with portfolios as well.</p>\n\n\n\n<p>It does not fit with my personal taste because it does not cater to my blogging style, which is my primary interest in themes.  However, I would not hesitate to recommend it to anyone who wants a ton of control over their site&rsquo;s inner page design.</p>\n\n\n\n<p>The following is a list of the available demos.  There is a lot that can be done in combination with the CoBlocks plugin, which you will want to use in combination with Go.</p>\n\n\n\n<p><strong>Demos with the CoBlocks plugin:</strong></p>\n\n\n\n<ul><li><a href=\"https://wpnux.godaddy.com/v2/?template=alder\">Alder</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=ashby\">Ashby</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=barista\">Barista</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=bento\">Bento</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=everett\">Everett</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=figure\">Figure</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=keynote\">Keynote</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=salt\">Salt</a></li></ul>\n\n\n\n<p><strong>Demos with the CoBlocks and WooCommerce plugins:</strong></p>\n\n\n\n<ul><li><a href=\"https://wpnux.godaddy.com/v2/?template=avenue\">Avenue</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=chai\">Chai</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=jane\">Jane</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=philo\">Philo</a></li><li><a href=\"https://wpnux.godaddy.com/v2/?template=wares\">Wares</a></li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Jan 2020 21:52:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: Gutenberg Can Tackle the Problems the Fields API Tried to Solve\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96617\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/gutenberg-can-tackle-the-problems-the-fields-api-tried-to-solve\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6098:\"<p><strong>The Fields API.</strong></p>\n\n\n\n<p><em>Never heard of it?</em>  That&rsquo;s OK.  Outside of the inner development community, it is not widely known.  The average WordPress user does not need to know about it.  Before understanding how the Fields API fits into Gutenberg&rsquo;s future, you must first understand what it is and the problems it was meant to fix.</p>\n\n\n\n<p>The Fields API was a proposed solution to one of WordPress&rsquo; biggest problems:  to build form fields in the admin and save data from those fields, developers need to know multiple APIs, depending on the specific admin screen.  </p>\n\n\n\n<p><em>Want to build a plugin settings screen?</em>  Use the Settings API.</p>\n\n\n\n<p><em>Need some theme options?</em>  Build them with the Customize API.  </p>\n\n\n\n<p><em>Have some fields to output on the user screen?</em>  Here are two hooks and a mess of HTML table markup; sorry, no official API.</p>\n\n\n\n<p>Those are just a few examples, but the truth of it comes down to this:  to show something as basic as a text field to end-users, WordPress developers need to know how to do this in a variety of ways based on competing or even missing APIs.</p>\n\n\n\n<p>There are historical reasons for this.  New features were bolted on top of WordPress over time.  In the mad rush to continue shipping features with each major update, few people stepped back and asked the fundamental question about the technical debt that would pile up over the past 16 years.  Shipping end-user features helped the platform grow, but developers had to learn all-new functions and methods each time.</p>\n\n\n\n<p>Adding to the technical burden, when the Gutenberg project launched, it introduced a new system in a different programming language.</p>\n\n\n\n<p>The Fields API would have created a standardized system for outputting form fields and saving field data.  It would work with all the existing admin screens and any new features added in the future.  Developers could learn a single system and be able to build plugins that worked with practically any area of WordPress.</p>\n\n\n\n<p>In 2014, Scott Kingsley Clark took over the <a href=\"https://make.wordpress.org/core/2014/02/25/metadata-project-update/\">Metadata UI Project</a>.  The initial idea was to create an API for adding custom fields (meta box fields) on the post-editing screen.  Eventually, Clark and those working on the project realized the problem that needed solving was larger than meta boxes.  WordPress needed an API that worked across the board.  After a year, the project was <a href=\"https://make.wordpress.org/core/2015/05/27/metadata-api-project-reborn-the-new-fields-api-project/\">relaunched as the Fields API</a>.</p>\n\n\n\n<p>After years of working on the code behind the project, Clark became burned out.  He <a href=\"https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership\">stepped down as the project&rsquo;s lead</a> in 2018.  With no buy-in from the decision-makers for the WordPress project, there was little hope of it making it into core.  At that point, the <a href=\"https://wptavern.com/wpweekly-episode-326-long-live-the-fields-api-project\">project was all but dead</a>.</p>\n\n\n\n<p>Gutenberg&rsquo;s development was in full swing.  Developers were gearing up for relearning how to add the same basic text fields and other form elements in whole new ways.</p>\n\n\n\n<p>The Fields API, had it made it into WordPress before the block editor, could have alleviated the need for developers to learn a new system.  However, that&rsquo;s not where we&rsquo;re at today.  The Fields API never made it past the gatekeepers, and developers have one more thing to stay knowledgeable on.</p>\n\n\n\n<p>The question is:  how do we address this going forward?</p>\n\n\n\n<h2>How the Gutenberg Project Can Solve the Fields API Problem</h2>\n\n\n\n<p>What many don&rsquo;t understand is that the Gutenberg project is larger than the content editor.  The first iteration, Phase 1, of the project was to create a new editing experience.  Phase 2 will create new admin screens for site editing using the same components for the editor.  Custom text fields, select dropdowns, color options, or one of many other field types all run through the same reusable, component-based system.</p>\n\n\n\n<p>That sounds remarkably similar to the Fields API.  At the end of the day, the Fields API is simply a standardized method of reusing components to output form fields and save data, regardless of the screen in WordPress.</p>\n\n\n\n<p>WordPress needs to be rebuilt from the ground up.  Gutenberg provides us the opportunity to rewrite every admin page in WordPress using a standardized system for handling form fields.</p>\n\n\n\n<p>From a technical standpoint, Gutenberg has <a href=\"https://github.com/WordPress/gutenberg/tree/master/packages/components/src\">dozens of components</a>.  These include a text control, button, checkbox, and much more.  It covers the majority of use cases plugin and theme authors need for form fields.  These things are not tied directly to the block system.  They are simply components that can be used anywhere.</p>\n\n\n\n<p>The next step would be setting the foundational layer for other admin screens.  It will not be easy.  There will be backward-compatibility mountains that the Fields API could have climbed for us years ago.</p>\n\n\n\n<p>Given WordPress&rsquo; history, developers will likely continue using competing APIs for fields on various admin pages.  And, if we&rsquo;re still at that point in five years, the Gutenberg project will have failed for not going as far as it could have.</p>\n\n\n\n<p>For success, the Gutenberg project needs to have a wider vision and a longer-term roadmap that addresses the issues of fields on every screen.  Otherwise, projects with easier-to-learn APIs will be more enticing to developers.</p>\n\n\n\n<p>The idea of <em>Gutenberg-ifying</em> the entirety of the WordPress admin will be off-putting to many, but WordPress has to solve its form fields issue at some point.  It might as well reuse the components that will be seeing active development for years to come.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Jan 2020 21:29:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Blocksy WordPress Theme Provides a Solid Block-Editor Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96555\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/blocksy-wordpress-theme-provides-a-solid-block-editor-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7060:\"<img />Screenshot of the Blocksy theme blog posts page.\n\n\n\n<p>Creative Themes dropped version 1.6.8 of its <a href=\"https://wordpress.org/themes/blocksy/\">Blocksy WordPress theme</a> yesterday.  It was an update to a theme that is quickly becoming popular, having garnered 58 five-star reviews and one thousand active installs since it first went live in the WordPress theme directory.  The theme is specifically built to work with the block editor and is a nice example of what is currently possible with blocks.</p>\n\n\n\n<p>Blocksy is billed as a general-purpose theme and also works with other popular page builders like Elementor, Beaver Builder, and Visual Composer.  The truth-test is whether it handles the block editor, especially given its primary audience (it is named <em>Blocksy</em>, after all).  Aside from a few trivial quirks, the theme handled nearly every bit of test content I threw at it.</p>\n\n\n\n<p>Blocksy is one of the better-designed free themes for the block editor that I have seen.</p>\n\n\n\n<p>I want to use this theme for a project.  Unfortunately, I have no site to use it on at the moment.  I do not say this about many free, repository-hosted WordPress themes.  The quality of work is on par with themes from the majority of commercial theme shops I have tested or used over the years.</p>\n\n\n\n<p>The theme is not without a few issues, which we&rsquo;ll get to, but it is a solid offering.</p>\n\n\n\n<h2>Block Design</h2>\n\n\n\n<img />A few block design examples from the theme.\n\n\n\n<p>With a name like <em>Blocksy</em>, I went into this review with a mindset that the theme better handle every test block I dropped into the block editor with grace.  I wanted to make sure it lived up to its name.</p>\n\n\n\n<p>I am happy to report that it handles block design as good as or better than most themes designed for showcasing the block system.  It adds just enough stylistic flair, such as a unique pull-quote design, without getting in the way of the content.</p>\n\n\n\n<p>One problem area is the font in the editor does not match the font on the front end completely.  This is a minor issue that should be easily fixed in an update.</p>\n\n\n\n<p>You can find some good examples of block design on the theme&rsquo;s <a href=\"https://demo.creativethemes.com/blocksy/main/gutenberg/\">Gutenberg demo page</a>.</p>\n\n\n\n<h2>Block Editor Sidebar</h2>\n\n\n\n<img />Custom block editor sidebar for post meta.\n\n\n\n<p>The latest update of the theme includes additional integration with the block editor.  The team moved its old meta box, which sat below the post content editor, to a new sidebar panel.  This change is refreshing.</p>\n\n\n\n<p>I did not know the meta box existed until the theme developers pointed out this change in feature (I first started testing the previous version of the theme).  At this point, I never look at the bottom of the block editor for meta boxes.  I expect any additional settings to be placed firmly in the right sidebar area.  I applaud this move.  It could confuse old theme users when updating, but it feels more natural in its new home.</p>\n\n\n\n<p>The team has done a nice job with this custom sidebar for the most part.  The biggest issue is with the button for switching to it.  By using both an icon and the &ldquo;Page Settings&rdquo; text, it uses more room than necessary.  To fit in line with the existing UI, it should simply display an icon.  The button text is also hard to read when selected, which is a minor CSS issue that can be corrected in an update.</p>\n\n\n\n<h2>Customizer Options</h2>\n\n\n\n<img />Custom-designed customizer control panel.\n\n\n\n<p>For users who like to have full control over the site&rsquo;s display, this theme won&rsquo;t disappoint.  For users who dislike by many options, the number of design settings will likely feel overwhelming.  </p>\n\n\n\n<p>Blocksy has more design options than most people will ever need.  Some options, such as letter-spacing and line-height controls for fonts may be going overboard.  Ideally, those things would be automatically adjusted based on the chosen font family.</p>\n\n\n\n<p>The theme also uses a custom design for the customizer control panel.  In general, the custom design looks nice.  However, is not good practice for themes to customize a shared WordPress UI element.  Plugins with options in the customizer could break.  It is best to stick with the default design.</p>\n\n\n\n<h2>Blocksy Companion Plugin</h2>\n\n\n\n<p>The theme promotes an additional plugin named Blocksy Companion.  The add-on plugin provides users with additional widgets, a cookies-consent feature for the front end, and integrations with Mailchimp, Instagram, and WooCommerce.  It also provides an avenue for importing custom-made demo content.</p>\n\n\n\n<p>Most of the companion plugin&rsquo;s features are fairly routine compared to similar themes in the WordPress theme repository.  The cookies-consent feature is something I haven&rsquo;t seen before as part of a theme add-on plugin.</p>\n\n\n\n<p>My biggest complaint with the plugin is that it makes the &ldquo;Blocksy&rdquo; admin menu item a top-level item.  It is a waste of valuable real estate in an already-cluttered admin menu.  Plus, there is no good reason for a single theme/plugin screen to take a top-level spot when it has no sub-menus.</p>\n\n\n\n<h2>How Does the Code Look?</h2>\n\n\n\n<p>If I were describing the code in one phrase:  <em>average but gets the job done</em>.</p>\n\n\n\n<p>The theme has a lot of PHP code.  Most of it is dropped into a single <code>/inc</code> folder and not organized nearly as well as it could be.  It feels like a giant mish-mash of functions with almost non-existent inline documentation for most of them.  It&rsquo;s not something a developer who is not intimately familiar with the theme would want to dive into.</p>\n\n\n\n<p>This is not an argument that the theme&rsquo;s code is bad.  It passed the official WordPress.org review process and made it into the theme directory, so it is at least doing the minimum necessary.  It&rsquo;s simply unimpressive, which is par for the course when it comes to most WordPress themes.  Code architecture seems like an afterthought, which could make it tougher to maintain over the long haul.  With a theme that has as much code as this one, this is more important than it is for simpler themes.  It can also easily be remedied with a week or so of dev time strictly devoted to architecture.</p>\n\n\n\n<h2>Final Thoughts</h2>\n\n\n\n<p>Blocksy is a well-designed theme that does the job it sets out to do.  It is ideal for users who are working with the block editor or a third-party page builder.  The theme is packed with far more options than I could cover in this review.  If customizability is your thing, you will likely enjoy it.</p>\n\n\n\n<p>The team shared some of their future ideas.  They have plans to add conditional headers, footers, and sidebars; a sticky header; AMP support; and more.  They seem excited about the future of the theme.</p>\n\n\n\n<p>Overall, I would recommend this theme for users who want a clean, relatively fast, block-ready WordPress theme.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Jan 2020 21:34:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: WordCamp Houston Returning After 10 Years\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96499\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wordcamp-houston-returning-after-10-years\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4308:\"<img />\n\n\n\n<p>After a 10-year hiatus, <a href=\"https://2020.houston.wordcamp.org/\">WordCamp Houston</a> will return in 2020.  The event will run from May 9-10 at the Hilton Houston NASA Clear Lake and expects 250-300 attendees.  The team behind the Texas-based WordCamp is still in the process of putting the event together and is looking for volunteers, speakers, and sponsors.</p>\n\n\n\n<p>With 10 years between events, local organizers had to rebuild their WordPress community.  &ldquo;After <a href=\"https://wptavern.com/it-took-houston-four-years\">WordCamp 2010</a>, the community seemed to have dismantled,&rdquo; said Christina Hawkins, lead organizer for WordCamp Houston.  &ldquo;I can only guess that because it takes an active community and dedicated volunteers, that if any piece starts to have trouble, it becomes challenging to continue,&rdquo; she speculated as to why the original event never continued.</p>\n\n\n\n<p>Hawkins began the Sugar Land meetup, located south of Houston but a greater part of the Houston area.  The overall area has several regular WordPress meetups.  &ldquo;John Peterson and a few others were instrumental in building the community again,&rdquo; she said.  &ldquo;They were dedicated and made sure we had regular monthly meetings with quality speakers.&rdquo;  Currently, they have 12 wranglers who are working to make sure this year&rsquo;s WordCamp runs smoothly.</p>\n\n\n\n<p>Considering that Houston is the hometown of Matt Mullenweg, the co-creator of WordPress, it would seem like the city would be the ideal location for an annual WordPress event.  He is not involved in the event or currently on the speaker roster, which is still open.  Hawkins hopes that he can at least attend the event in an unofficial capacity.  &ldquo;I want to iron out any wrinkles first and present a flawless WordCamp for him,&rdquo; she said.  &ldquo;We expect 2020 to be a WordCamp that knocks it out of the park, but I want to make sure we represent WordPress in the best light and formally invite him as a keynote next year.&rdquo;</p>\n\n\n\n<p>WordCamp Houston is currently <a href=\"https://2020.houston.wordcamp.org/call-for-speakers/\">accepting speaker applications</a>.  The process will remain open until February 29.  Those who want to speak should submit a topic and plan for a session that lasts 30-40 minutes.</p>\n\n\n\n<p>&ldquo;Heather Baker is our Speaker Wrangler,&rdquo; said Hawkins.  &ldquo;Since this is the first one in years, she has been actively training future speakers. We had an in-person workshop last fall and we are preparing a webinar series soon that will be broken up in chunks.&rdquo;</p>\n\n\n\n<p>Thus far, the event organizers have received 29 applications and are expecting more.  They will evaluate applications from the first of March and let speakers know if their session is approved on March 15.</p>\n\n\n\n<p>The team is still on the hunt for sponsors.  &ldquo;We have the national sponsors, which is very helpful, but we are in the process of getting the word out locally,&rdquo; said Hawkins.  &ldquo;Most of Houston has never heard of WordCamp so it&rsquo;s up to us to start knocking on doors. We have a long list of people and companies that we are reaching out to.&rdquo;</p>\n\n\n\n<p>Individuals or businesses who wish to sponsor the event can sign up via the <a href=\"https://2020.houston.wordcamp.org/become-a-sponsor/\">sponsorship page</a>.  There are four tiers, ranging from $150 to $3,000, with various perks for each level.</p>\n\n\n\n<p>The team chose the Hilton Houston NASA Clear Lake venue for this year&rsquo;s event.  The location was ideal because it had a good room setup, which could allow them to expand in case they had an increase in attendance.  They can also add an extra room if they need to add another speaker track.</p>\n\n\n\n<p>&ldquo;It&rsquo;s also close to NASA which fits our overall theme of &lsquo;Taking Off!\'&rdquo; said Hawkins.</p>\n\n\n\n<p>The team initially had some trouble finding a venue that met their needs, budget, and location.  &ldquo;Houston is a vast city, and it is not very easy to manage so many people that live all over,&rdquo; said Hawkins.  &ldquo;I am sure other cities like Atlanta, LA, and Chicago have the same problem with having a vast city that can extend to an hour drive in each direction.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Jan 2020 19:59:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Post Status: Introducing a new chapter, with Cory Miller as Post Status partner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=73897\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://poststatus.com/cory/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4335:\"<p>I <a href=\"https://poststatus.com/launched/\">created</a> Post Status in January 2013 and <a href=\"https://poststatus.com/lets-grow/\">started</a> the Club in January 2015. January 2020 marks another huge milestone for this community and business.</p>\n\n\n\n<p>I’m very excited to share that <a href=\"https://corymiller.com/\">Cory Miller</a> is now an equal partner of Post Status. Cory purchased half the business and will be working with me in the day-to-day management, writing, community engagement, and everything else we do with Post Status.</p>\n\n\n\n<p>Many should know Cory from his ten years running <a href=\"https://ithemes.com/\">iThemes</a>. After they sold the business to Liquid Web and he spent some time there, he decided to step away and continue his entrepreneurial journey. He’s working on a few projects, and Post Status is a significant part of where he’s dedicating his time and energy.</p>\n\n\n\n<p>Cory is a long-time friend, and iThemes has been a Post Status sponsorship partner since 2015. Cory understands the community, the role Post Status plays in the space, and he brings so much to the table, from established community relationships to product and business experience.</p>\n\n\n\n<p>We’ve known one another going back to 2010 or so. I got to watch as he navigated the WordPress space as the CEO of a theme company turned plugin company, from inception to exit.</p>\n\n\n\n<p>Cory has so many qualities I admire. Most of all, I admire his honesty, his compassion, his passion for people, and his vision for what’s possible. I look forward to working with a true partner on Post Status after so many years of managing the primary responsibilities with much help from many friends and contractors along the way.</p>\n\n\n\n<p>In addition to Cory and myself, David Bisset and Dan Knauss continue to be integral parts of the Post Status effort. Cory and I are thankful for their energy, consistency, and talents.</p>\n\n\n\n<p>We are working together in Oklahoma City this week to finalize our plans for the 2020 year. We already have a lot planned and are looking to get these new initiatives and processes off to a rocking start.</p>\n\n\n\n<h3>Potential in the WordPress community</h3>\n\n\n\n<p>There is so much potential in the WordPress community, and Post Status plays an important role through news, community, and professional development. We are going to continue to do that, and we are also going to make changes that we think will benefit the community as a whole and Post Status Club Members in particular.</p>\n\n\n\n<p>If you’ve ever thought about joining the <a href=\"https://poststatus.com/club\">Post Status Club</a>, it’s a great time to do so. At a minimum, anyone in the WordPress community should subscribe to the <a href=\"https://poststatus.com/newsletter\">newsletter</a>. If you’ve been a member before, we thank you, and we hope we are able to continue to serve you for years to come — better than ever, better together.</p>\n\n\n\n<h3>Cory\'s thoughts</h3>\n\n\n\n<p>I asked Cory to share a couple of his own thoughts on why he’s investing in Post Status, both with his money and energy.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>I’ve been a fan and supporter of Post Status since the beginning. At iThemes we were one of Brian’s first sponsors. Over the years I leaned on Brian’s insights and counsel — personally as well as through Post Status — to inform and grow iThemes.</p><p>When Brian approached me about becoming a partner my first reaction was, “Heck yes!” Over our weeks and months of conversations, my excitement grew and grew as our goals and aspirations for Post Status were revealed to be so well aligned.</p><p>I truly believe in what Brian has built. And I only want to be a value add and look forward to coming alongside Brian, the Post Status team and this great community.</p></blockquote>\n\n\n\n<p>We\'re so excited to finally be able to make this official. We look forward to continuing to serve you our readers, our Club members, our partners, and the broader community.</p>\n\n\n\n<p>Onward!</p>\n\n\n\n<h3>Audio & Video Q&A; with Cory and Brian</h3>\n\n\n\n<p>We’ll be announcing more specific plans over the coming weeks, and below is our conversation post-announcement by audio and video:</p>\n\n\n\n\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"embed-vimeo\"></div>\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Jan 2020 13:55:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Matt: Thirty Six\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50760\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://ma.tt/2020/01/thirty-six/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3332:\"<p>I am now solidly entering my late thirties, and fortunately I am in good health, good cheer, and doing one of my favorite things — exploring a part of the world and culture I haven’t experienced before (Maldives and Sri Lanka).</p>\n\n\n\n<p>The past year has included a number of professional milestones including <a href=\"https://ma.tt/2019/09/series-d/\">a significant amount of fundraising</a> and related activity, bringing in <a href=\"https://ma.tt/2019/08/tumblr-the-day-after/\">a major new product to the Automattic family</a>, the <a href=\"https://ma.tt/2019/11/state-of-the-word-2019/\">maturation of Gutenberg in the WordPress ecosystem</a>, launching the <a href=\"https://distributed.blog\">Distributed blog and podcast</a>, and a growth in the breadth and depth of the Automattic team.</p>\n\n\n\n<p>Partially because of the schedule those milestones required, this ended up being my year with the most travel ever since I started tracking: I flew over 515k miles, to 124 cities in 24 countries. I was able to incorporate a <a href=\"https://photomatt.tumblr.com/post/186959053572/some-beautiful-trails-near-aspen-ran-the-heavy\">good amount of running</a> in my routine, started picking up musical instruments again, and learning more about sound and its impact on our lives. I found <a href=\"https://streaksapp.com/\">small daily habits</a>, like a little bit of exercise or stretching first thing in the morning, to be sustainable and high-impact.</p>\n\n\n\n<p>What suffered in 2019 was my <a href=\"https://ma.tt/2020/01/29-books-in-2019/\">book reading time</a> and making a dent on the <a href=\"https://www.theworlds50best.com\">top 50 list</a>. I still check <a href=\"https://www.techmeme.com\">tech news every day</a>, but I had to unplug from daily non-tech news because it was just too hectic — I’ve found a lot of value in <a href=\"https://www.economist.com\">weekly publications like the Economist</a> to make sense of what’s going on in the world with the benefit of a little distance and time.</p>\n\n\n\n<p>Personally my main goals this year are for the health and wellness of my family, incorporating more playing music and photography into my life, and strengthening <a href=\"https://www.calm.com\">my meditation practice</a>. If you’re reading this, I hope to run into you online or in person and this year let’s do our best together to leave the world a little better than we found it.</p>\n\n\n\n<p>All birthdays: <a href=\"https://ma.tt/2003/01/bday/\">19</a>, <a href=\"https://ma.tt/2004/01/so-im-20/\">20</a>, <a href=\"https://ma.tt/2005/01/hot-barely-legal-matt/\">21</a>, <a href=\"https://ma.tt/2006/01/matt-22/\">22</a>, <a href=\"https://ma.tt/2007/01/twenty-three/\">23</a>, <a href=\"https://ma.tt/2008/01/twenty-four/\">24</a>, <a href=\"https://ma.tt/2009/01/twenty-five/\">25</a>, <a href=\"https://ma.tt/2010/01/twenty-six/\">26</a>, <a href=\"https://ma.tt/2011/01/twenty-seven/\">27</a>, <a href=\"https://ma.tt/2012/01/twenty-eight/\">28</a>, <a href=\"https://ma.tt/2013/01/twenty-nine/\">29</a>, <a href=\"https://ma.tt/2014/01/matt-3-0/\">30</a>, <a href=\"https://ma.tt/2015/01/thirty-one/\">31</a>, <a href=\"https://ma.tt/2016/01/thirty-two/\">32</a>, <a href=\"https://ma.tt/2017/01/thirty-three/\">33</a>, <a href=\"https://ma.tt/2018/01/thirty-four/\">34</a>, <a href=\"https://ma.tt/2019/01/thirty-five/\">35</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Jan 2020 09:15:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress.org blog: WordPress Leaders Nominated for CMX Awards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8288\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wordpress.org/news/2020/01/wordpress-leaders-nominated-for-cmx-awards/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3074:\"<p>Two members of the WordPress leadership team were nominated for excellent work in their field in the first ever Community Industry Awards. <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a> is nominated for <a href=\"https://cmxhub.com/awards-executive\">Executive Leader of a Community Team</a> and <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a> is nominated for <a href=\"https://cmxhub.com/awards-professional\">Community Professional of the Year</a>.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2020/01/josepha_and_andrea.jpg?fit=632%2C281&ssl=1\" alt=\"\" class=\"wp-image-8292\" />\n\n\n\n<p><a href=\"https://cmxhub.com/\">CMX</a> is one of the largest professional organizations dedicated to community builders. The awards were open to public nomination, and finalists were chosen by panels of their peers in the CMX community.</p>\n\n\n\n<p>Andrea has been a vital community strategist for the WordPress project since 2011. Her work to build and support a vibrant community has played a part in the success around the popular open source CMS. Her work is sponsored by Automattic, where she leads a team that focuses on educational efforts, funding, and in-person community-driven events that serve a global base.</p>\n\n\n\n<p>Josepha has been the Executive Director of the WordPress project since 2019. Her work to coordinate and guide volunteer efforts spans 20 teams and involves thousands of volunteers. Her work is also sponsored by Automattic, where she leads the open source division that focuses on all aspects of open source contribution including design, development, volunteer engagement, and the health of the overall WordPress ecosystem.</p>\n\n\n\n<h2>Votes are Open</h2>\n\n\n\n<p>Final recipients are chosen with open voting — if you feel like either Andrea or Josepha have had an impact on your careers, your trajectory in the WordPress project, or the health of WordPress as a whole, there are three ways you can show your support:</p>\n\n\n\n<ul><li>Stop by and vote for them (Andrea&nbsp;<a href=\"https://href.li/?https://cmxhub.com/awards-executive\">here</a>, Josepha&nbsp;<a href=\"https://href.li/?https://cmxhub.com/awards-professional\">here</a>)!</li><li>Share this post with your own communities!</li><li>Tweet some inspirational thoughts about your time/experience/learnings with WordPress (using&nbsp;#WordPress, naturally)!</li></ul>\n\n\n\n<h2>Thank You Notes</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>A lot of care and passion goes into making the WordPress Project as fantastic as it is. I think these awards are a reflection of how wonderful the community and ecosystem are, and I appreciate everyone&#8217;s continued trust in my stewardship!</p><cite>Josepha Haden Chomphosy</cite></blockquote>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>WordPress community organizers are some of the most generous and creative people in the world — working with them is exciting and interesting every day. I’m humbled by this nomination; thank you!</p><cite>Andrea Middleton</cite></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Jan 2020 21:42:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Get Involved With Block-Based WordPress Theme Experiments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96502\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/get-involved-with-block-based-wordpress-theme-experiments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4426:\"<p>As the WordPress theme review team wound down their team meeting yesterday, they were finalizing what their focus area for 2020 would be.  The general agreement among members was that block-based themes should be at the top of the list.  There was some pushback from a minority that did not want to see block-based themes at all.  The reality is that themes will be changing in the next year or two.</p>\n\n\n\n<p>As a team, this is the group of people who will ultimately need to set guidelines based on something WordPress has never done before.  They will also need to work diligently to bring theme authors up to speed on how themes of the future will be built.</p>\n\n\n\n<p>At this point, there are many unknowns, but work on <a href=\"https://github.com/WordPress/gutenberg/labels/%5BFeature%5D%20Full%20Site%20Editing\">tickets for full-site editing</a> is happening at a quick pace.</p>\n\n\n\n<p>Allan Cole, Theme Imagineer at Automattic, later invited team members to get involved with the <a href=\"https://github.com/WordPress/theme-experiments\">Theme Experiments project</a> on GitHub.  It is a way for developers in the WordPress community to help steer the theme-development ship.  Currently, the repository is fairly bare-bones and represents only the early work toward creating themes from blocks.  Each sub-directory in the repository will be an individual experiment that explores creating themes using blocks or block templates.</p>\n\n\n\n<p>The <a href=\"https://wptavern.com/initial-documentation-for-block-based-wordpress-themes-proposed\">initial documentation</a> for block-based themes was introduced in early December 2019.  Since then, a handful of contributors have put together some working theme examples to get the ball rolling.</p>\n\n\n\n<p>The repository is <a href=\"https://github.com/WordPress/theme-experiments/blob/master/CONTRIBUTING.md\">open to contributions</a> from anyone.  This would be a good moment for members of the larger theme development community to start sending in pull requests to share their experiments.</p>\n\n\n\n<p>To test any of the experiments in this repository, you need to be running the latest version of the Gutenberg plugin.  You must also enable the &ldquo;Full Site Editing&rdquo; and &ldquo;Full Site Editing Demo Templates&rdquo; options from within the plugin&rsquo;s &ldquo;Experiments&rdquo; screen.</p>\n\n\n\n<h2>Parisienne Theme</h2>\n\n\n\n<img />Screenshot of the Parisienne theme.\n\n\n\n<p>Currently, the only approved theme experiment is the Parisienne theme.  It&rsquo;s a test of how block templates and template parts work.  A <a href=\"https://parisiennetheme.mystagingwebsite.com/\">live demo</a> of the theme is available.</p>\n\n\n\n<p>Don&rsquo;t expect to be blown away.  There are many missing pieces in the Gutenberg plugin, such as blocks for displaying posts and similar items.  The idea is to explore how templating will work and provide feedback to the Gutenberg development team.</p>\n\n\n\n<p>One major concern I have at this point is the flat nature of the two sub-directories for housing templates and template parts.  With the seven template part files in this theme, I worry that we are not learning from the mistakes of the past.  The sub-folders could become unruly, particularly <code>/template-parts</code>, and house dozens upon dozens of files in a real-world scenario.  This is no different from how themes currently work other than the location of the template files.  Now would be a good time to reimagine the folder structure and optimize the organization of theme templates.  For example, group sidebar templates under a <code>/template-parts/sidebar</code> folder instead of dumping everything into one location.</p>\n\n\n\n<h2>Twenty Nineteen and Twenty Twenty</h2>\n\n\n\n<img />Early look at a block-based Twenty Nineteen theme.\n\n\n\n<p>The repository has two open pull requests for experimenting with blocked-based versions of the <a href=\"https://github.com/WordPress/theme-experiments/pull/4\">Twenty Nineteen</a> and <a href=\"https://github.com/WordPress/theme-experiments/pull/5\">Twenty Twenty</a> default themes.  Of the two, the Twenty Nineteen Blocks theme seemed the least broken, despite the original not being designed specifically for the block editor.</p>\n\n\n\n<p>Porting the most recent default WordPress themes is important because it provides theme authors a way to compare how old methods of handling features will work in the new block system.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Jan 2020 21:39:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"HeroPress: How WordPress Enabled Me To Work Remotely – Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3037\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://heropress.com/essays/starting-early-in-tech/#utm_source=rss&utm_medium=rss&utm_campaign=starting-early-in-tech\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:34324:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/011320-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordPress people tend to be generous, trusting, and helpful.\" /><p><a href=\"https://heropress.com/feed/#indonesian\">Esai ini juga tersedia dalam bahasa Indonesia.</a></p>\n<p>Growing up, I’ve always been surrounded by technology.</p>\n<p>My dad is a programmer, he created my Gmail account and my first blog on Blogger (Blogspot) when I was 10 years old (it’s around 2006?). I filled up my blog with posts resembling diary entries. The content became too private eventually, so I decided to set it on private.</p>\n<p>Besides that first blog, I had about 5 other blogs on Blogger. One was for posts I believed not too private and could be consumed by the public, one was for my class’ blog in middle school, and one for me to learn how to write in English. I don’t remember what the other blogs are for, since I just kept creating and deleting them. I got satisfaction and happiness from pouring my thoughts in writing and publishing them in my blog. Many times, writing my thoughts and feelings helped me process them, even until now.</p>\n<p>Fast forward to high school graduation. Since I love languages (English is one of my favorite subjects!), I actually wanted to major in English in a top public university in my country, but I didn’t get in, so my second option was Information Systems in a private university. There, I learned a lot about IT and business, I learned Java, HTML, CSS, Javascript, and Android programming. I even took some Coursera and Codecademy courses to learn Bootstrap and Ruby on Rails. I was a good student, I love learning the algorithms and I did more than okay, but I didn’t love programming. I’m not that people who can stay calm finding errors in their codes, and then finding out that it’s only missing a character.</p>\n<h3>Meeting WordPress for the first time</h3>\n<p>At that time, my parents built some websites to sell backlinks (don’t hate me). I helped them with the sites, mainly proofreading and formatting the articles, and they would pay me. That’s when I first encountered WordPress. I saw WordPress as something more advanced than Blogger, with more themes and plugins to choose from. The default WordPress websites already looked more professional than Blogger does.</p>\n<p>I also like to earn extra money (who doesn’t?), so I helped a teacher in my neighborhood teaching high school students from my old high school. I don’t know how to explain this, but in Indonesia, it’s common to take extra courses (outside the school) to learn what you’re already taught at school and prepare for tests. So it’s another 2-hour study time after school.</p>\n<p>During another semester, I taught English at a Kumon center (it’s a Japanese franchise for math and English). I also taught about 10 of my peers for 2 semesters and got a pretty good discount for my tuition as a reward. At home, I tried every legal and safe method available to make money online. Some worked, like translating texts from English to Indonesian on Gengo and writing articles in English on Zerys. Some, like online surveys, didn’t. I also created an Upwork account and applied to some jobs there, but I never got one.</p>\n<p>In my last year at university, I had to do a year-long full-time internship. I got mine at a big general insurance company as their IT QC Staff. I learned a lot and met many amazing people there, but when I was offered to continue working there as a Business Analyst, I said no. I wanted to apply for a scholarship for a masters’ degree. And I don’t really like the fact that I have to wake up at 6 and be back home at 7 in the evening and do it all over again the next day.</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image2.jpg\"><img /></a>With my colleagues, I’m the one with the white blouse.\n<p>But one thing I realized just now when I’m writing this is, the whole remote work wouldn’t have happened without the internship. My daily 1.5-hour commute to work made me read Medium everyday. And reading people’s stories on Medium made me want to write and share my stories, so I started writing and sharing my stories there. You’ll see in the next 2 paragraphs the significance of this Medium profile in my career.</p>\n<h3>Start working remotely</h3>\n<p>So after the internship, while I prepared for the scholarship application, I went back to my Upwork profile, revised it, and applied to some jobs as a virtual assistant. Starting from a very low pay, I did everything, like formatting WordPress posts (surprise!), designing social media posts, and processing orders for online shops. I work with people from Singapore, Australia, Europe, and America. After a few happy clients, I increased my hourly rate, slowly but surely. I got familiar with common tools used in a remote work setting, like Slack, Asana, Trello, and Google Suites. I also started writing in English a lot more, on my personal blog on WordPress.com and my Medium.</p>\n<p>One day, around 3 months after I started, a job opening on Upwork caught my attention. They’re a WordPress plugin company called Caldera Labs/Caldera Forms, and they’re looking for someone who could deliver consistency on their blog. They want to publish one blog post per week. I sent my proposal along with my Medium profile URL. <a href=\"http://christiechirinos.com\">Christie Chirinos</a> then replied to my proposal. I remembered she mentioned checking my writings on Medium and that I have a ‘great writing tone’. She wanted to ‘meet’ me in video, so she sent me a Calendly link. I notified her that I would be available at 5 a.m. my time. That was my first time seeing Calendly.. (Calendly is awesome!).</p>\n<p>That was also my first time having to be interviewed via video call. I was ecstatic, but panicked. On the day, I woke up at 4, got dressed, and opened my laptop. Weirdly, my wi-fi died that morning. So I went to the nearest McDonalds to get the interview done, and it went great!</p>\n<p>Long story short, I continued to work with my other clients and started working with Caldera Forms for 15 hours a week. Besides Christie, I also met <a href=\"https://twitter.com/Josh412\">Josh Pollock</a>, Ariella, Anchaal, Rosa, Nico, and Swapnil. At first, I was only tasked with formatting blog posts on WordPress following their style guide. Then I was involved in their overall content strategy, like crafting onboarding emails and coordinating with guest writers. But I’ve always felt welcomed since day one at Caldera Forms. We’re a team of only 5-6 people, we had monthly all-hands video meetings, we talked about our day in Slack. It wasn’t like with any of my clients.</p>\n<p>Christie and Josh are also very active in the WordPress community, they had introduced me to the ‘right’ people to connect with. In order to do that, I had to make an account on WordPress’ Slack. I got to know the amazing community behind WordPress. How people voluntarily contribute their time, energy, and skills to the community, from development, marketing, to translating. It was really inspiring. During my time with Caldera Forms, I also went to my first WordCamp, WordCamp Jakarta 2018, sponsored by Caldera Forms!</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image3.jpg\"><img /></a>Some swags from WordCamp Jakarta 2018, that’s Wapuu ondel-ondel!\n<p>It’s only natural then that I wanted to have my own WordPress website. I had a WordPress.com blog once, but this one is different. You can see <a href=\"http://ascenciafike.com\">my blog here</a>. I felt like a grown-up using WordPress.</p>\n<h3>Transitioning to full-time</h3>\n<p>One day, Caldera Forms was acquired by <a href=\"http://saturdaydrive.com\">Saturday Drive</a>, the company behind <a href=\"http://ninjaforms.com\">Ninja Forms</a>. Josh, Nico, Rosa, and I ‘moved’ there, too. Josh introduced me to <a href=\"http://jameslaws.com\">James Laws</a>, the CEO. But because I was still freelancing and have a few other clients, we used my old contract on Upwork. Saturday Drive was much bigger than Caldera, with 20+ people onboard, and I was really excited! They have product team, support team, and communications team. When we moved there, they’re also in another big transition, which was switching to remote work.</p>\n<p>After a month working with Saturday Drive using the old contract, James offered me a full-time position to manage their affiliate program. It was morning in the U.S., but it’s already 8 p.m. where I live. I was <i>really</i> excited, but it’s also a really hard decision to make. Taking the offer would mean letting go all of my clients and specializing in one side of digital marketing, which is affiliate marketing. I would also have to work 8 hours a day. I stayed up late that night, discussing the possibilities with my parents.</p>\n<p>The next day, I replied to James’ message and accepted his offer.</p>\n<p>It’s been more than 4 months since I started working with Saturday Drive now (time of writing: January 2020). Obviously, it’s different from freelancing, but I love almost every moment of it.</p>\n<p>We use Basecamp instead of Slack, where we set up different questions for different times of the week. Every Wednesday, we would be asked: “What do you look like today?”. There are also questions like “What are you looking forward to most this week?”, “What were the highlights of your work day today?”, and “Read any good books lately?”. We even have fiction and non-fiction book clubs!</p>\n<p>We also use Basecamp’s method of working, called <a href=\"https://basecamp.com/shapeup\">Shape Up</a>. We work on projects in a six-week cycle, and then we’ll have two weeks of cooldown. In the cooldown period, we get to work on things we want to work on. And before the next cycle starts, we’ll submit pitches about the projects we want to work on next.</p>\n<p>What about video calls? We have a big monthly meeting with all team members, and occasional coffee break chats with 4-5 people. If urgently needed, we would also have video calls for projects. Except for these calls, I work in my time zone’s working hours.</p>\n<p>So far, I love working with Saturday Drive and getting to know the people. Although I can’t really relate to the U.S. culture (almost all of the team members are U.S. based), I relate to the values that Saturday Drive has. Most importantly, I’m proud of the work we’re doing!</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image1.png\"><img /></a>We have virtual ‘coffee breaks’.\n<h3>Giving back to the WordPress Community</h3>\n<p>Notice the pattern in my story?</p>\n<p>WordPress people tend to be generous, trusting, and helpful, because the WordPress itself is open-source. WordPress is powered by volunteers, kind people from all over the world doing development, marketing, translation, support, and many more. There are WordPress meetups, local and regional WordCamps, which are organized by organizers and volunteers.</p>\n<p>Because I’ve experienced the generosity of the WordPress people, I wanted to give back to the community. Several months ago, I tried contributing to the Marketing team by attending a few weekly meetings on Slack. But I eventually stopped attending because I was too busy with work (and the meetings are at 10 pm my time).</p>\n<p>Around November 2019, Devin Maeztri from WordPress Indonesia contacted me through Instagram DM. She invited me to join PerempuanWP, an initiative for Indonesian women working in the WordPress world, similar to WomeninWP. So I followed <a href=\"https://twitter.com/PerempuanWP\">@PerempuanWP</a> on Twitter and joined the WordPress Indonesia’s Slack. Not long after that, I contributed to Indonesia’s polyglot team as well, translating the Code of Conduct and revising our Translation Style Guide.</p>\n<p>Currently, I’m preparing an <a href=\"https://wp-id.org/kulgram-4-onboarding-e-mail/\">‘online webinar’ on Telegram</a> and <a href=\"https://wp-id.org/wpjkt-meetup-21-onboarding-email-and-woocommerce-theme-for-your-business\">a talk for WordPress Meetup Jakarta</a>, both about email marketing (both will be done by the time you’re reading this).</p>\n<p>By putting myself out there, or here in this article. I want to represent Asian women. In the future, I hope I can inspire more women, especially Asians, to work remotely.</p>\n<h3>What you should do if you want to work remotely</h3>\n<p>If you’re an introvert, working remotely may sound like a dream come true. Without leaving the comfort of your house (or even your pajamas), you can still work and earn money. But, it’s not all rainbows and butterflies. From my experience, here’s what you should prepare if you want to work remotely.</p>\n<ol>\n<li>You should be comfortable working with computers. All day.<br />\nAt least you can do a basic Google search, because that’s where most of the answers are, especially if you want to start as a general virtual assistant. Take care of your eyes. Stand up and walk around once in awhile.</li>\n<li>It gets boring. You should be OK with <i>not </i>meeting people all day.<br />\nSometimes you just have to focus on your work so much that you can’t afford to get out of the house. But sometimes, the only way to have that focus is to get out of the house and work from a cafe. Just find the balance you need, it’ll get better with experience.</li>\n<li>Learn the English language. Or other international languages.<br />\nIf you want to work internationally, this one is crucial. You won’t be able to work with people from another country if you can’t speak their language.</li>\n<li>Do your best in your current job.<br />\nOne of the best books I’ve read this year was So Good They Can’t Ignore You by Cal Newport. “Don’t follow your passion; rather, let it follow you in your quest to become, in the words of my favorite Steve Martin quote, “so good that they can’t ignore you.”” So, instead of trying to find your passion, enjoy the work you’re doing at the moment, try to master it, and adopt the craftsman mindset. Collect as many skills as you can, and see what those skills can do for the world.<br />\nTLDR; don’t be obsessed with wanting to work remotely. The opportunity will come, eventually.</li>\n<li>Don’t settle for mediocrity.<br />\nJust learn things. As much as you can. From anywhere, about anything. Keep an open mind. Read books, listen to podcasts, and learn new skills.</li>\n<li>Join the community.<br />\nIf you’re working in the WordPress world, join the WordPress community. It’s a great place to learn from and connect with great people.</li>\n</ol>\n<p>Of course, I won’t be able to tell you to follow the same path that I took, but I hope my story and the pointers above can help you to pursue the (remote) career you want.</p>\n<hr />\n<h2 id=\"indonesian\">Bertumbuh bersama teknologi</h2>\n<p>Saya sudah dikelilingi teknologi sejak kecil.</p>\n<p>Papa saya adalah seorang programmer yang familier dengan teknologi. Saat umur saya 10 tahun, Papa membuatkan akun email Gmail dan blog pertama saya di Blogger (Blogspot). Saat itu, artikel blog saya kebanyakan menyerupai diari, catatan dari kejadian sehari-hari yang saya alami. Akhirnya, saya merasa konten tersebut terlalu pribadi, sehingga saya atur aksesnya menjadi pribadi.</p>\n<p>Selain blog pertama itu, saya mempunyai 5 blog lain di Blogger. Satu untuk tulisan yang saya nilai tidak terlalu privat dan bisa dibaca oleh publik, satu untuk blog kelas saya di SMP, dan satu untuk saya belajar menulis dalam Bahasa Inggris. Saya tidak ingat blog yang lain untuk apa, karena banyak yang saya buat lalu saya hapus. Saya merasa puas dan senang saat bisa menuangkan pikiran saya dalam bentuk tulisan. Menulis membantu saya memroses pikiran dan perasaan saya, bahkan sampai saat ini.</p>\n<p>Setelah lulus SMA, saya tadinya ingin kuliah Sastra Inggris di salah satu universitas negeri (saya suka bahasa, Bahasa Inggris mata pelajaran favorit saya!), tetapi karena tidak berhasil masuk, akhirnya saya berkuliah di universitas swasta, mengambil jurusan Sistem Informasi. Di kuliah, saya belajar banyak mengenai TI dan bisnis, saya mempelajari bahasa pemrograman Java, HTML, CSS, Javascript, dan pemrograman Android. Saya juga belajar Bootstrap dan Ruby on Rails secara otodidak lewat Coursera dan Codecademy. Saya bisa memahami pelajaran pemrograman dan mendapat nilai bagus, tetapi saya tidak suka <i>‘coding</i>’. Saya merasa saya tidak cukup sabar untuk menulis kode dan mencari kesalahan dalam kode saya.</p>\n<h3>Bertemu WordPress pertama kali</h3>\n<p>Saat saya kuliah, orangtua saya membangun beberapa website menggunakan WordPress untuk menjual link. Saya membantu mereka mengecek kualitas artikel dan menyusunnya di WordPress, dan mereka membayar saya. Ini pertama kalinya saya bekerja dengan WordPress. Saya ingat, saya menganggap WordPress sebagai platform yang lebih canggih dari Blogger, karena ada lebih banyak cara untuk modifikasi lewat tema dan plugin.</p>\n<p>Saya suka mendapat uang tambahan (siapa yang tidak suka?), sehingga saya membantu mengajar bimbel di dekat rumah. Di semester lain, saya mengajar Inggris di Kumon, di dekat rumah juga. Selain itu, selama 2 semester, saya menjadi mentor di kampus, mengajar 10 orang teman saya yang butuh pelajaran tambahan. Sebagai gantinya, saya mendapat potongan uang kuliah.</p>\n<p>Di rumah, saya juga mencari semua cara yang legal dan aman untuk mencari uang. Saya menerjemahkan teks dari Inggris ke Indonesia menggunakan Gengo dan menulis artikel dalam Bahasa Inggris di Zerys. Saya juga mendaftar di Upwork (marketplace untuk freelancer), apply ke beberapa pekerjaan, tetapi tidak pernah mendapat satupun.</p>\n<p>Di tahun terakhir perkuliahan, saya diwajibkan menjalani magang selama 1 tahun. Saya mendapat kesempatan untuk magang di Asuransi Astra sebagai Staff IT Quality Control mereka. Selama 1 tahun tersebut, saya belajar banyak dan bertemu banyak orang hebat, tetapi saat ditawari posisi tetap menjadi Business Analyst, saya menolak. Saat itu saya ingin mendaftar beasiswa untuk melanjutkan pendidikan S2. Dan saya juga tidak terlalu suka harus bangun jam 6 pagi, sampai di rumah jam 7 malam, dan harus mengulanginya setiap hari.</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image2-1.jpg\"><img /></a>Foto dengan teman-teman kantor, saya yang berbaju putih.\n<p>Tetapi satu hal yang baru saya sadari saat menulis ini, kesempatan remote work yang saya miliki sekarang ini tidak mungkin ada tanpa pengalaman magang tersebut. Perjalanan bus ke kantor setiap hari membuat saya rutin membaca Medium. Membaca cerita-cerita orang di Medium membuat saya ingin menulis dan membagikan cerita saya, sehingga saya melakukannya di Medium.</p>\n<h3>Mulai bekerja remote</h3>\n<p>Setelah magang, saat saya mempersiapkan diri untuk mendaftar beasiswa, saya teringat dengan profil Upwork saya. Saya perbarui info diri dan CV, dan mendaftar ke beberapa lowongan sebagai asisten virtual (virtual assistant). Saya lakukan segala hal mulai dari bayaran yang kecil, seperti mem-format artikel di WordPress, desain pos media sosial, dan memroses pesanan untuk toko online. Saya bekerja dengan klien dari Singapura, Australia, Eropa, dan Amerika. Setelah beberapa review yang bagus dari klien, saya menaikkan tarif per jam saya perlahan-lahan. Saya menjadi mahir menggunakan aplikasi yang sering digunakan di lingkungan kerja remote, seperti Slack, Asana, Trello, dan Google Suites. Saya juga mulai menulis lebih banyak artikel lagi dalam bahasa Inggris, di blog pribadi saya di WordPress.com dan Medium.</p>\n<p>Suatu hari, 3 bulan setelah mulai kerja di Upwork, ada sebuah lowongan yang menarik perhatian saya. Sebuah perusahaan plugin WordPress bernama Caldera Labs/Caldera Forms sedang mencari seseorang yang dapat menjaga konsistensi blog mereka. Mereka ingin menghasilkan satu artikel per minggu. Saya mengirim proposal beserta URL profil Medium saya.</p>\n<p>Tidak lama kemudian, proposal saya dijawab oleh salah satu co-founder mereka, <a href=\"http://christiechirinos.com/\">Christie Chirinos</a>. Saya ingat Christie berkata bahwa ia sudah melihat profil Medium saya dan saya mempunyai ‘nada menulis yang bagus’. Lalu, ia mengirimi saya link Calendly (aplikasi untuk mengatur pertemuan secara online, bisa melihat jadwal kosong dari orang yang bersangkutan), dan saya memberitahunya bahwa saya akan dapat bertemu jam 5 pagi keesokan harinya.</p>\n<p>Itu juga merupakan kali pertama saya diwawancara lewat video. Saya senang dan bersemangat, tetapi juga panik. Pada hari H, saya bangun jam 4 pagi, bersiap-siap, dan membuka laptop. Anehnya, hari itu wi-fi saya putus! Saya akhirnya pergi ke McDonalds terdekat untuk mendapatkan koneksi internet. Untungnya, wawancara tersebut berjalan lancar.</p>\n<p>Saya diterima bekerja di Caldera Forms, sambil terus bekerja dengan klien yang lain, karena beban pekerjaan Caldera Forms saat itu hanya 15 jam seminggu, bahkan kurang. Selain Christie, saya juga bertemu dengan Josh Pollock (co-founder), Ariella, Anchaal, Rosa, Nico, dan Swapnil. Mereka berada di Amerika Serikat, India, dan Perancis.</p>\n<p>Awalnya, saya hanya ditugaskan untuk menyusun artikel di WordPress sesuai dengan style guide yang sudah mereka susun. Setelah beberapa bulan, saya dilibatkan di dalam strategi konten mereka secara keseluruhan, seperti membuat email onboarding dan berkoordinasi dengan penulis tamu. Dari awal, walaupun kami belum pernah bertemu secara langsung, saya merasa disambut oleh tim Caldera Forms. Dalam satu waktu, tim kami hanya berjumlah 5-6 orang, dengan pertemuan bulanan melalui video, dan ‘ngobrol’ harian melalui Slack. Pengalaman dengan Caldera Forms tidak seperti dengan klien saya yang lain.</p>\n<p>Christie dan Josh juga sangat aktif di komunitas WordPress, mereka mengenalkan saya ke orang-orang yang tepat. Untuk berkomunikasi dengan orang-orang tersebut, saya harus membuat akun di Slack Make WordPress. Saya jadi kenal dengan komunitas di balik WordPress, bagaimana orang secara sukarela menyumbangkan waktu, energi, dan kemampuan mereka untuk kemajuan komunitas, kode, pemasaran, hingga penerjemahan. Melihat itu semua sangat menginspirasi saya. Selama di Caldera Forms, saya juga dikirim untuk menghadiri WordCamp pertama saya, WordCamp Jakarta 2018!</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image3-1.jpg\"><img /></a>Merchandise dari WordCamp Jakarta, Wapuu Ondel-ondel!\n<p>Setelah menghadiri WordCamp tersebut, tentunya saya ingin mempunyai website WordPress sendiri dengan domain nama saya sendiri. Teman-teman dapat melihat blog saya <a href=\"http://ascenciafike.com\">disini</a>. Mempunyai blog dengan domain nama saya sendiri terasa seperti langkah selanjutnya dalam perjalanan karir saya.</p>\n<h3>Proses transisi ke pekerjaan penuh waktu</h3>\n<p>Suatu hari, Caldera Forms diakuisisi oleh <a href=\"http://saturdaydrive.com\">Saturday Drive</a>, perusahaan di balik plugin form builder lainnya, <a href=\"http://ninjaforms.com\">Ninja Forms</a>. Josh, Nico, Rosa, dan saya ‘berpindah’ juga. Josh memperkenalkan saya ke <a href=\"http://jameslaws.com\">James Laws</a>, CEO dari Saturday Drive. Saat itu, kami masih menggunakan kontrak lama saya di Upwork, dengan batas waktu kerja 15 jam seminggu. Di Saturday Drive, semuanya berbeda, tim mereka jauh lebih besar dibandingkan Caldera (ada lebih dari 20 orang) sehingga saya sangat bersemangat! Mereka mempunyai tim produk, tim suport, dan tim komunikasi. Tetapi, selain akuisisi tersebut, mereka juga sedang melewati transisi yang lain, yaitu berubah menjadi perusahaan remote.</p>\n<p>Setelah satu bulan bekerja bersama Saturday Drive dengan kontrak lama saya, James tiba-tiba menawari saya posisi penuh waktu untuk mengelola program afiliasi mereka. Saya sangat senang dan bersyukur mendapatkan penawaran tersebut, tetapi juga mengalami dilema. Mengambil tawaran tersebut dan bekerja penuh waktu dengan Saturday Drive berarti melepas semua klien saya dan harus mengambil spesialisasi <i>affiliate marketing</i> (pemasaran afiliasi). Saya juga harus bekerja selama 8 jam sehari. Malam itu, saya tidak bisa tidur, dan saya berdiskusi dengan kedua orangtua saya yang sama bersemangatnya.</p>\n<p>Keesokan harinya, saya menjawab pesan dari James dan menerima tawarannya.</p>\n<p>Sudah lebih dari 4 bulan sejak saya mulai bekerja dengan Saturday Drive (waktu penulisan: bulan Januari 2020). Bekerja penuh waktu dengan satu perusahaan memang sangat berbeda dengan freelancing (bekerja lepas), tetapi saya menikmati hampir setiap momennya.</p>\n<p>Di Saturday Drive, kami menggunakan Basecamp, bukan Slack, dimana kami dapat mengatur pertanyaan rutin untuk anggota yang lain setiap minggunya. Misalnya, setiap Rabu kami akan mendapat pertanyaan: “Bagaimana penampilanmu hari ini?”. Ada juga pertanyaan-pertanyaan seperti: “Apa yang kamu tunggu-tunggu minggu ini?”, “Apa yang berjalan lancar dari kerjamu hari ini?”, dan “Buku apa yang baru kamu baca dan menurutmu bagus akhir-akhir ini?”. Bahkan kami mempunyai klub membaca untuk buku fiksi dan non-fiksi!</p>\n<p>Kami juga menggunakan metode kerja dari Basecamp, yang disebut <a href=\"https://basecamp.com/shapeup\">Shape Up</a>. Kami bekerja dalam siklus, yaitu 6 minggu mengerjakan proyek, lalu 2 minggu mengerjakan hal-hal yang kami ingin kerjakan (disebut <i>cooldown</i>). Sebelum siklus selanjutnya mulai, kami akan mengumpulkan <i>pitch</i> mengenai proyek yang ingin kita lakukan.</p>\n<p>Bagaimana dengan panggilan/konferensi video? Kami mengadakan pertemuan dengan semua anggota tim setiap bulannya, dan <i>ngobrol </i>dengan 4-5 orang setiap 2 minggu. Kalau diperlukan sekali, kami juga mengadakan panggilan video untuk pekerjaan. Saya bekerja dalam zona waktu Indonesia, kecuali untuk mengikuti panggilan-panggilan ini.</p>\n<p>Sejauh ini, saya menikmati bekerja dengan Saturday Drive dan mengenal orang-orang di dalamnya. Walaupun sulit untuk terhubung dengan budaya Amerika (hampir 90% stafnya berada di Amerika), tetapi saya terhubung dan sangat mendukung nilai-nilai yang Saturday Drive pegang. Dan yang terpenting, saya bangga dengan kerja Saturday Drive sebagai perusahaan!</p>\n<a href=\"https://s20094.pcdn.co/wp-content/uploads/2020/01/image1-1.png\"><img /></a>Ngobrol virtual dengan tim Saturday Drive.\n<h3>Memberi kembali ke Komunitas WordPress</h3>\n<p>Apakah teman-teman bisa melihat pola di dalam cerita saya?</p>\n<p>Orang-orang di dalam komunitas WordPress biasanya suka berbagi, sangat percaya kepada orang lain (dan potensi orang lain), dan suka menolong, karena WordPress sendiri bersifat open-source (terbuka). WordPress bisa berjalan karena dibantu oleh para relawan, orang-orag dari seluruh dunia yang secara sukarela menulis kode, membantu pemasaran, penerjemahan, suport, dan masih banyak lagi. Meetup dan WordCamp, baik lokal dan regional, diadakan oleh organizer dan relawan.</p>\n<p>Karena selama ini saya telah merasakan kebaikan dari orang-orang WordPress, saya ingin memberi kembali/membantu komunitas WordPress. Beberapa bulan lalu, saya mencoba berkontribusi ke tim Marketing WordPress global dengan mengikuti beberapa kali pertemuan mingguannya di Slack. Tetapi lama kelamaan saya tidak datang lagi, karena terlalu sibuk dengan pekerjaan (dan pertemuannya diadakan pukul 10 malam).</p>\n<p>Sekitar bulan November 2019, Devin Maeztri dari WordPress Indonesia menghubungi saya lewat DM Instagram. Ia mengundang saya untuk ikut PerempuanWP, sebuah komunitas untuk perempuan Indonesia yang bekerja di dunia WordPress (mirip dengan WomeninWP). Hari itu, saya mulai mengikuti <a href=\"https://twitter.com/PerempuanWP\">@PerempuanWP</a> di Twitter dan bergabung dengan Slack WordPress Indonesia. Tidak lama setelahnya, saya berkontribusi di tim poliglot Indonesia juga, menerjemahkan Kode Etik Komunitas WordPress Indonesia (<i>Code of Conduct</i>) dan merevisi Panduan Penerjemahan (<i>Translation Style Guide</i>).</p>\n<p>Saat ini, saya sedang mempersiapkan <a href=\"https://wp-id.org/kulgram-4-onboarding-e-mail/\">kulgram di grup Telegram PerempuanWP</a> dan menjadi <a href=\"https://wp-id.org/wpjkt-meetup-21-onboarding-email-and-woocommerce-theme-for-your-business\">pembicara di Meetup WordPress Jakarta</a>, keduanya tentang <i>email marketing.</i></p>\n<p>Dengan membagikan pengalaman dan cerita saya, salah satunya melakui artikel ini, saya ingin mewakili perempuan Indonesia dan Asia. Saya berharap saya dapat menginspirasi banyak perempuan di Indonesia dan Asia untuk bekerja secara remote.</p>\n<h3>Apa yang harus Anda lakukan jika ingin bekerja secara <i>remote</i></h3>\n<p>Jika teman-teman adalah seorang yang introver (seperti saya!), bekerja remote mungkin terdengar seperti mimpi yang jadi kenyataan. Tanpa harus meninggalkan rumah (bahkan kadang masih memakai baju tidur), Anda dapat bekerja dan menghasilkan uang. Tetapi tidak semua aspek bekerja remote itu menyenangkan.</p>\n<p>Berdasarkan pengalaman saya, berikut hal-hal yang harus Anda persiapkan jika ingin bekerja secara remote:</p>\n<ol>\n<li>Anda harus siap bekerja di depan komputer. Satu hari penuh.<br />\nPaling tidak Anda harus bisa melakukan pencarian lewat Google, karena akan sangat dibutuhkan untuk bekerja, terutama jika Anda ingin memulai sebagai asisten virtual. Jaga mata Anda. Berdiri dan jalan setiap 30 menit.</li>\n<li>Anda harus siap bosan, dan tidak bertemu orang lain (selain keluarga) selama satu hari.<br />\nKadang Anda harus fokus sekali dengan pekerjaan hingga tidak bisa keluar rumah. Tetapi kadang, satu-satunya cara untuk fokus adalah keluar rumah dan kerja di kafe. Sesuaikan dengan kebutuhan, lama-kelamaan Anda akan menemukan kombinasi yang pas.</li>\n<li>Pelajari bahasa Inggris. Atau bahasa internasional lainnya.<br />\nJika Anda ingin bekerja secara internasional. Poin ini adalah keharusan. Anda tidak akan bisa bekerja dengan orang dari negara lain jika Anda tidak dapat berkomunikasi dalam bahasa mereka.</li>\n<li>Lakukan yang terbaik di pekerjaan Anda saat ini.<br />\nSalah satu buku terbaik yang saya baca di tahun 2019 adalah So Good They Can’t Ignore You oleh Cal Newport. “Jangan ikuti passion Anda; melainkan biarkan passion Anda mengikuti Anda dalam perjalanan, yang Steve Martin sebagai, “bagus sekali hingga mereka tidak dapat mengabaikan Anda.”” Jadi, jangan ikuti passion Anda, tetapi jalani pekerjaan yang Anda punya sekarang sebaik mungkin, coba untuk menguasai kemampuan yang dibutuhkan, dan adopsi cara pikir ‘pengrajin’. Jangan menunggu pekerjaan yang ‘sempurna’, percaya bahwa setiap pekerjaan mempunyai pelajaran bagi diri kita, kumpulkan kemampuan sebanyak mungkin, dan pikirkan apa yang dapat Anda lakukan bagi dunia dengan kemampuan-kemampuan tersebut.<br />\nSingkatnya, jangan terlalu terobsesi dengan ingin bekerja secara remote. Kerjakan pekerjaan Anda sebaik mungkin, kesempatan akan datang pada waktunya.</li>\n<li>Jangan mudah puas.<br />\nApapun tingkat kemampuan Anda saat ini, belajar sebanyak-banyaknya. Darimana saja, tentang apa saja. Tetap terbuka. Baca buku, dengarkan podcast, dan pelajari kemampuan baru.</li>\n<li>Ikut komunitas.<br />\nJika Anda bekerja di dunia WordPress, ikut komunitas WordPress! Selain bisa menolong orang lain, kita juga bisa belajar dari banyak orang hebat dan menambah koneksi.</li>\n</ol>\n<p>Saya berharap pengalaman saya dan tips-tips di atas dapat menginspirasi dan menolong teman-teman yang ingin berkarir secara remote.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=How%20WordPress%20Enabled%20Me%20To%20Work%20Remotely%20%2D%20Bagaimana%20WordPress%20Memungkinkan%20Saya%20Bekerja%20Secara%20Remote&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fstarting-early-in-tech%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fstarting-early-in-tech%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fstarting-early-in-tech%2F&title=How+WordPress+Enabled+Me+To+Work+Remotely+%26%238211%3B+Bagaimana+WordPress+Memungkinkan+Saya+Bekerja+Secara+Remote\" rel=\"nofollow\" target=\"_blank\" title=\"Share: How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/starting-early-in-tech/&media=https://heropress.com/wp-content/uploads/2020/01/011320-min-150x150.jpg&description=How WordPress Enabled Me To Work Remotely - Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/starting-early-in-tech/\" title=\"How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/starting-early-in-tech/\">How WordPress Enabled Me To Work Remotely &#8211; Bagaimana WordPress Memungkinkan Saya Bekerja Secara Remote</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Jan 2020 01:00:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Fike Komala\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"WPTavern: Dollie Platform Launches, Provides Tools to Build and Deploy Pre-Configured WordPress Installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96477\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"https://wptavern.com/dollie-platform-launches-provides-tools-to-build-and-deploy-pre-configured-wordpress-installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4720:\"<p>Stratus5, a company that specializes in cloud container management and business service automation, launched <a href=\"https://getdollie.com/\">Dollie</a> today.  Dollie is a cloud-based eCommerce solution for WordPress developers looking to provide white-label hosting services to their customers.  The platform allows developers and agencies to sell custom, pre-configured WordPress solutions to their clients.</p>\n\n\n\n<p>Dollie is built on top of the Stratus5 Cloudware system.  It includes tools like Blueprints, which allows developers to save and clone custom WordPress configurations.  These configurations are saved to the cloud.  Developers can then launch new instances and monetize them at the click of a button.</p>\n\n\n\n<p>It also has management tools such as billing automation, customer resource management, analytics, backups, permissions, and more.  The platform serves sites via isolated Docker containers.  It runs on a modern stack that includes NGINX, PHP 7.3, Redis, and PerconaDB.</p>\n\n\n\n<p>&ldquo;In the simplest terms, we let developers launch their own cloud hosting service similar to Wix or Squarespace but using WordPress,&rdquo; said Trent Lapinski, VP of Dollie and Stratus5 Cloudware.</p>\n\n\n\n<p>Developers can try Dollie for free and only start paying once they are ready to accept customers.  Pricing begins at $100 per month for the first 10 customers.</p>\n\n\n\n<p>Customer billing can be done via Dollie&rsquo;s payment gateway or the developer&rsquo;s gateway of choice.  The system is backed by the WooCommerce plugin, so any payment gateway that supports WooCommerce Subscriptions is available.  There are no limits on the business model that developers employ.  They can set up custom pricing.</p>\n\n\n\n<p>Take a quick tour of how Dollie works:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<h2>Filling a Missing Gap in the Market</h2>\n\n\n\n<p>&ldquo;We built Dollie because there&rsquo;s a competitive gap in the market between the hosting companies and the developers who actually build websites, themes, and plugins,&rdquo; Trent Lapinski.  &ldquo;I&rsquo;ve seen agencies and many of my developer friends constantly stuck in the rat race of trying to find that next customer, get that next download, and struggle to build sustainable businesses. This is the struggle I faced with CyberChimps selling one-off WordPress products.  Meanwhile, the hosting companies have turned into multi-million and even billion-dollar corporations on the backs of these same developers.&rdquo;</p>\n\n\n\n<p>Lapinski feels like Dollie will level the playing field for developers.  He wishes these tools had existed when he bootstrapped his WordPress startup.  The goal is to allow developers to compete on their own terms.  </p>\n\n\n\n<p>&ldquo;By empowering developers to build sustainable products and services and generate reoccurring-subscription revenue, much like the hosting companies have accomplished, we can grow WordPress by helping developers and agencies grow their businesses,&rdquo; he said.  &ldquo;The key is helping them acquire subscription customers so they can forecast, budget, and bootstrap their businesses in a way I never could when I ran my own theme shop.&rdquo;</p>\n\n\n\n<p>The platform is built on top of WordPress and WooCommerce.  The custom-built technology on top of this allows developers to set up white-label cloud services with minimal up-front knowledge.  The biggest requirement is that developers need to be comfortable with WordPress and WooCommerce.</p>\n\n\n\n<p>&ldquo;Bringing these enterprise-level tools to WordPress developers and giving them the freedom to choose their own business models has simply never been done before,&rdquo; said Lapinski.  &ldquo;Dollie automates many of the processes developers have had to work around for decades, and makes saving, cloning, deploying, and monetizing WordPress products and services as easy as a few clicks.&rdquo;</p>\n\n\n\n<p>Dollie takes no part in what developers or agencies charge their clients outside of providing the tools.  That relationship exists directly between the developer and the client.  Dollie gets paid when developers convert subscribing customers to cover the cloud hosting costs.</p>\n\n\n\n<p>They also allow larger agencies to select third-party cloud providers.  They can then license and partner with Dollie to manage their cloud infrastructure.  The goal is to allow developers to scale as large as needed and customize to suit their needs.</p>\n\n\n\n<p>&ldquo;We are optimistic these tools and the freedom we are enabling for our partners will be the point of difference in how developers view their own value in what they can deliver to their clients and customers,&rdquo; said Lapinski.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Jan 2020 21:13:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Can the Block Directory and Business Interests Coexist?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96444\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/can-the-block-directory-and-business-interests-coexist\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5388:\"<p>WordPress.org is not an official marketplace for plugins and themes.  Except for some plugins that are strictly SaaS products, all extensions to the platform are publicly available for the low cost of $0.</p>\n\n\n\n<p>Despite not directly selling through WordPress.org, the plugin directory is a huge source of income for many individual developers and companies via product and service upsells.  Plugins are big business.  Besides a bounty of third-party marketplaces and individual shops, commercial interests often flow directly in and out of the official WordPress site.  For many developers, it essentially serves as a marketplace.</p>\n\n\n\n<p>In December, we dove into an <a href=\"https://wptavern.com/version-1-prototype-of-the-wordpress-admin-block-directory-announced\">early proposal of the WordPress block directory</a>.  The new directory should land within the WordPress software itself in version 5.5 and will house a new type of plugin.  The idea behind the <a href=\"https://wordpress.org/plugins/browse/block/\">block directory</a> is that it will allow plugin developers to create and share one-off blocks that users can install on their websites.</p>\n\n\n\n<p>This is the future of WordPress.</p>\n\n\n\n<p>Love it or hate it, there will come a time when end-users are primarily looking to install individual blocks to solve their problems.  This is not to say that other types of plugins won&rsquo;t exist or have their place.  They will continue to be a major part of the platform.  However, blocks will be a big deal once users can install them at the click of a button via the WordPress admin.</p>\n\n\n\n<p>The question is whether blocks can also be big business.</p>\n\n\n\n<p>Tavern reader Matt Gowdy <a href=\"https://wptavern.com/version-1-prototype-of-the-wordpress-admin-block-directory-announced#comment-316657\">believes the guidelines</a> for the block directory could be an issue.  &ldquo;There&rsquo;s a lot to like here,&rdquo; he said.  &ldquo;Though I&rsquo;m still troubled by the directory submission rules that are fairly stringently not allowing for any sort of promotional link or defined up-sell of any kind so as not to &lsquo;disrupt the flow.\'&rdquo;</p>\n\n\n\n<p>Currently, the <a href=\"https://github.com/WordPress/wporg-plugin-guidelines/blob/block-guidelines/blocks.md\">block directory guidelines</a> make it clear that advertising of any kind is disallowed:</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Block Plugins are blocks. They must not include advertisements, prompts, or promotional messages.</p></blockquote>\n\n\n\n<p>On the one hand, it makes sense, particularly for something that is not yet built and will eventually serve as a version 1.0. If every block a user installs begins advertising, it could be a recipe for disaster without some type of standard.</p>\n\n\n\n<p>On the other hand, would the idea of not having an upselling route turn WordPress businesses away?  While many developers would be willing to submit blocks, is this sustainable?  Many of the most popular plugins are backed by businesses.  The more popular any particular piece of software becomes, the more likely it is that the software will need funding to cover maintenance, feature updates, and support.</p>\n\n\n\n<p>&ldquo;More often than not these days, people don&rsquo;t have as much free time to invest in coding just for the fun of it,&rdquo; said Gowdy.  &ldquo;I speak mainly of myself, but I have the notion that while WordPress is still grounded pretty firmly in Open Source (not a bad thing), it&rsquo;s been the open markets that have allowed it to grow as much as it has. I don&rsquo;t think it&rsquo;s wrong to allow people the opportunity (within reason) to make something back off their hard work should they choose. Donations are non-viable in my experience as the vast majority of humanity are way cheaper than they would like to admit.&rdquo;</p>\n\n\n\n<p>Currently, the upcoming directory has a limited number of blocks available.  The WordPress Meta and Plugin teams should expect more.  However, it is unclear whether the guideline will slow its growth.</p>\n\n\n\n<p>&ldquo;Without any sort of up-sell channel (rule-defined or element defined in blocks), we aren&rsquo;t going to see the plethora that we are hoping for, nor in some cases the quality that could be brought in by people working professionally on a block plugin,&rdquo; said Gowdy. &ldquo;The time to define these up-sell and link options is right now.&rdquo;</p>\n\n\n\n<p>Gowdy is not alone in his concerns.  Several others expressed similar opinions in the comments on the <a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines\">block directory announcement post</a>.</p>\n\n\n\n<p>&ldquo;Where WordPress started and where it is now are two separate points in time,&rdquo; said Gowdy.  &ldquo;I hope the Open Source community and the marketplaces can find a way to co-exist here in order to really rev up the platform for the future.&rdquo;</p>\n\n\n\n<p class=\"has-text-color has-background has-white-color has-blue-700-background-color is-style-highlight text-white bg-blue-700\">This post is part of a new <a href=\"https://wptavern.com/category/from-the-comments\">From the Comments</a> series where we highlight interesting points of discussion from comments on WP Tavern articles. The hope is to give these comments, which can sometimes get lost, the attention they deserve.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Jan 2020 20:46:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Upcoming Tailwind CSS 1.2.0 Includes Grid Support and New Utilities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96387\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/upcoming-tailwind-css-1-2-0-includes-grid-support-and-new-utilities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3499:\"<p>Adam Wathan, creator of the Tailwind CSS, <a href=\"https://github.com/tailwindcss/tailwindcss/releases/tag/v1.2.0-canary.4\">published the early release notes</a> for the upcoming version 1.2.0 update to the framework.  The new version will include the much-anticipated <a href=\"https://github.com/tailwindcss/tailwindcss/pull/1274\">support for CSS grids</a> and several other useful features for app and website designers.  There are no planned breaking changes with the update.</p>\n\n\n\n<p>Tailwind CSS is a utility-first CSS framework that is quickly gaining support from designers and developers.  Some WordPress themes are starting to pop up in the public sphere that use it, but is more often used as part of the in-house toolset at agencies, in which standards are necessary to keep teams on the same page.</p>\n\n\n\n<p>For developers already using the framework, they can look for an update within days.  &ldquo;Right now I don&rsquo;t have any changes to these features planned, so as long as nobody finds any huge issues I&rsquo;ll tag the real v1.2.0 next week once I get some documentation together,&rdquo; said Wathan on <a href=\"https://twitter.com/adamwathan/status/1214982042083090433\">Twitter</a>.</p>\n\n\n\n<p>Now is a good time for new developers to start tinkering with the CSS framework.  With the addition of new CSS grid classes, there is little that is not possible for the majority of use cases.</p>\n\n\n\n<p>I have been building with Tailwind, or a subset of its classes, for about a year now.  Aside from highly-custom scenarios, I have been able to build most projects while writing little CSS code.  For someone who comes primarily from a developer background, it has been a godsend for quickly putting together complex layouts.  CSS grid support was the big item I had been waiting for.  I had already built a custom grid system based on Tailwind&rsquo;s naming scheme.  My implementation is nearly the same as what is shipping in Tailwind CSS 1.2.0.</p>\n\n\n\n<p>Other new features include classes for CSS features such as:</p>\n\n\n\n<ul><li><code>transition</code></li><li><code>transform</code></li><li><code>stroke-width</code></li><li><code>box-sizing</code></li><li><code>clear</code></li></ul>\n\n\n\n<p>Version 1.2.0 adds extra utility classes for rounded corners and shadow sizes.  It also extends its support for setting an element&rsquo;s maximum width.  New utility classes were added for removing a max-width and setting it based on predefined breakpoints.</p>\n\n\n\n<p>The <a href=\"https://rsms.me/inter/\">Inter font</a> now sits at the top of the font stack and will be used if installed on the user&rsquo;s system or if the developer loads it on the site.  Inter is a popular font created specifically for computer screens.  It comes in both fixed and variable options.  The Twenty Twenty theme <a href=\"https://wptavern.com/wordpress-5-3-kirk-released-brings-new-default-theme-editor-improvements-and-ui-tweaks\">released with WordPress 5.3</a> uses the variable version of Inter for several elements within its design.</p>\n\n\n\n<p>For developers who are extending Tailwind CSS, they now have a <a href=\"https://github.com/tailwindcss/tailwindcss/pull/1268\">new plugin API</a> for building custom plugins.  Plugins can also <a href=\"https://github.com/tailwindcss/tailwindcss/pull/1162\">extend the user&rsquo;s configuration file</a>.</p>\n\n\n\n<p>Overall, it looks like it will be a solid update.  I am excited about digging into it and using some of the new utility classes.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 10 Jan 2020 21:11:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WPTavern: Gutenberg 7.2 Adds Long-Awaited Multi-Button Block and Gallery Image Size Option\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96362\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/gutenberg-7-2-adds-long-awaited-multi-button-block-and-gallery-image-size-option\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4723:\"<p>The Gutenberg team <a href=\"https://make.wordpress.org/core/2020/01/09/whats-new-in-gutenberg-8-january/\">released version 7.2</a> of the plugin yesterday after a four-week release hiatus for the holidays.  This update includes at least 180 pull requests to the project&rsquo;s repository by 56 contributors. The largest user-facing features include a new &ldquo;buttons&rdquo; block that allows users to add multiple buttons in a row and the ability to define the size of images in a gallery block.  These were two highly-requested features.</p>\n\n\n\n<p>The update supports changing the font size in the relatively new navigation block.  Users can also add a link for the image in the media &amp; text block.  A few dozen other minor enhancements across multiple components made their way into the update.  Most enhancements continue to clean up the interface and improve usability.</p>\n\n\n\n<p>Many bug fixes are included in version 7.2.  Accessibility improvements include using radio inputs for text alignment, adding an appropriate <code>group</code> role to the block wrapper, adding a label to the social icons block, and more.  Several fixes should improve how pasting content in the editor works, which generally works well already.</p>\n\n\n\n<p>The team continued building upon experimental features, which must be activated via the Gutenberg &gt; Experiments screen in the admin. Outside of a handful of bug fixes and enhancements, the most interesting change is the introduction of a new experimental admin screen.  Gutenberg 7.2 now includes an early beta of a full-site editing page.</p>\n\n\n\n<h2>Adding Buttons in a Row</h2>\n\n\n\n<img />Adding multiple buttons within the Buttons block.\n\n\n\n<p><em>If I had a nickel for every time a user asked how to put two buttons next to each other&hellip;</em>You know how the story goes.</p>\n\n\n\n<p>One of the most-common website layouts today is a large &ldquo;hero&rdquo; section, a heading, some text, and a button, perhaps two.  An end-user could easily build this with a combination of the cover, heading, paragraph, and button blocks if only a single button was needed.  However, that second button was troubling without some custom code work.</p>\n\n\n\n<p>The introduction of the buttons block changes everything.  It is a block that allows end-users to add any number of individual button blocks in a row.  At the moment, the block essentially serves as a wrapper.  The block&rsquo;s only option is the ability to set the alignment of the inner button blocks.</p>\n\n\n\n<h2>Image Size Selector for Galleries</h2>\n\n\n\n<img />Selecting a custom image size for the Gallery block.\n\n\n\n<p>The lack of an option to set the size of gallery images has been one of Gutenberg&rsquo;s largest failures since its inception.  After years of this basic option for the gallery shortcode with the classic editor, the gallery block has always felt incomplete.</p>\n\n\n\n<p>For some users, the lack of basic features that have long existed in the classic editor <a href=\"https://wptavern.com/gutenberg-one-year-later#comment-314188\">is frustrating</a>.  That frustration is understandable, given the fast-paced movement on newer and shinier features.  It is refreshing to see work being done toward addressing long-missing features such as this.</p>\n\n\n\n<p>The gallery block now has a new &ldquo;Images Sizes&rdquo; dropdown select for choosing the size of the images shown.  This option will solve at least a couple of major issues.  By selecting a custom size, the images will utilize less bandwidth for site visitors.  Previously, full-sized images were displayed.  It also allows users to select a consistent size so that galleries with multiple image aspect ratios are better aligned in a grid.  Basically, it can make for prettier galleries.</p>\n\n\n\n<h2>Site Editor Screen Beta</h2>\n\n\n\n<img />Testing the beta Site Editor screen.\n\n\n\n<p>Gutenberg 7.2 introduces a &ldquo;Site Editor&rdquo; screen, which can be enabled by ticking the &ldquo;Enable Full Site Editing&rdquo; checkbox on the Gutenberg &gt; Experiments admin page.  The new screen is an early, bare-bones beta exploration into what will eventually be fully-fledged site editor.</p>\n\n\n\n<p>At this point, the screen does not do much.  End-users can insert blocks and little else.  Content on this screen is not stored for later.  There is not even a save button yet.  Mostly, it serves as another step toward site editing, which could possibly land in core WordPress late in 2020.  However, that is an optimistic schedule, and it is far too early to make a solid guess.  There are a lot of open questions that need answers and technical hurdles to jump.  A 2021 release might be more realistic, depending on the pace of development.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Jan 2020 20:47:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: BobWP.com Shifts Focus to WooCommerce, Rebrands as ‘Do the Woo’\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96305\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/bobwp-com-shifts-focus-to-woocommerce-rebrands-as-do-the-woo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4426:\"<img />\n\n\n\n<p>BobWP.com <a href=\"https://bobwp.com/bobwp-is-now-do-the-woo-woocommerce-news-and-community/\">announced yesterday</a> that the site and its podcast would be rebranded to &ldquo;Do the Woo at BobWP .&rdquo; After a decade of more generalized WordPress topics and news, it will now focus specifically on the WooCommerce plugin and its community.  The podcast will also be aired weekly, notching up their previous twice-monthly episodes.</p>\n\n\n\n<p>For Bob Dunn, founder and co-host, this was move was a natural result of where the community he had built was heading.  &ldquo;Over the last 3 years, we have consistently created content around WooCommerce on our site,&rdquo; he said.  &ldquo;I saw that this was what our readers wanted, so built that up and in March of last year, made the decision to focus entirely on WooCommerce.&rdquo;</p>\n\n\n\n<p>Dunn said he has been a fan of WooCommerce since its launch.  &ldquo;It has always been a favorite of mine, and I have used it to sell a lot of stuff. But oddly enough, never physical products.&rdquo;</p>\n\n\n\n<p>Starting in 2020, the podcast will run weekly.  To keep up the brisk pace, the show is bringing on two new co-hosts.  Joining the team is Jonathan Wold, community lead for WooCommerce, and Mendel Kurland, developer advocate a Liquid Web.  Brad Williams, CEO of WebDevStudios, has been a co-host since 2018.</p>\n\n\n\n<p>New episodes of the podcast will air every Thursday.  The show is pre-recorded on Tuesday of the same week, so the content should remain timely.</p>\n\n\n\n<p>Do the Woo will specifically cater to its WooCommerce audience, but it may delve into the larger eCommerce world from time to time.  However, Dunn recommends listening in on the <a href=\"https://wpecommerceshow.com/\">WP eCommerce Show</a> for topics that explore the larger WordPress and eCommerce landscape.</p>\n\n\n\n<p>Dunn does not feel like there will be a shortage of topics to explore every week with WooCommerce-specific content.  &ldquo;At first, yes, it is a bit of a challenge finding topics around it,&rdquo; he said.  &ldquo;But, expanding it to bring in more of what people are doing in the space, no matter how big or small, opens it up more.&rdquo;  He is optimistic about the show&rsquo;s future.  &ldquo;I&rsquo;ll dig as deep as I need to go.  And, with its growth, it may come to the time where there will always be more [content] than I need.&rdquo;</p>\n\n\n\n<p>The podcast&rsquo;s format remains simple.  &ldquo;We basically bring a guest in, learn more about what they are doing and their involvement in the Woo ecosystem,&rdquo; said Dunn.  &ldquo;We wrap it up, typically covering two or three news items. The conversation isn&rsquo;t planned at all.  We just take it where it leads us.&rdquo;</p>\n\n\n\n<p>Dunn originally began the Doo the Woo podcast in 2016 but broadened the scope that same year to WordPress and eCommerce.  &ldquo;I missed it, and at the end of 2017, brought it back as more of an interview-style show, with me and a guest,&rdquo; he said.  &ldquo;For the next few months, I did very few shows and felt I need to change it up to be more conversational.&rdquo;  He brought on Williams as a co-host at that point.  &ldquo;We did a few shows where Brad and I would just chat Woo stuff, and both came to the conclusion it would be fun to bring on a guest, but still keeping it conversational.&rdquo;</p>\n\n\n\n<p>The podcast episodes were sporadic until the middle of 2019, which was the start of the bi-weekly schedule.  Today, with three extra co-hosts, the team can rotate who is hosting a particular episode.</p>\n\n\n\n<p>Dunn said he still catches a few other podcasts but not as many as in the past.  &ldquo;Always been a fan of and still listen to <a href=\"https://mattreport.com/\">Matt Report</a> and <a href=\"https://getoptionspodcast.com/\">Get Options</a>,&rdquo; he said.  &ldquo;I am sure I have listened to just about every WP-centric podcast a few times over the years. Without naming each one, there are several good choices depending on what you are looking for. Podcast listening is a very personal choice and I just recommend people dabble in what is out there and find those that click with you.&rdquo;</p>\n\n\n\n<p>Listen to <a href=\"https://bobwp.com/whats-coming-to-the-do-the-woo-podcast-in-2020/\">episode 33</a> where the team discusses the show&rsquo;s plans for 2020 and beyond:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Jan 2020 21:07:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: Landing Kit for WordPress Maps Any Post or Page to a Custom Domain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96301\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/landing-kit-for-wordpress-maps-any-post-or-page-to-a-custom-domain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7094:\"<img />\n\n\n\n<p>Phil Kurth and Jason Schuller launched a new WordPress product named <a href=\"https://wplandingkit.com/\">Landing Kit</a> today.  The plugin allows end-users to map a domain name to any post, page, or custom post type entry.  It includes other features such as SSL support and URL redirecting.  More features like custom templates and Gutenberg blocks are on the way.</p>\n\n\n\n<p>Kurth is the director and WordPress product developer at <a href=\"https://hookturn.io/\">Hookturn.io</a>, a premium WordPress plugin company, and runs <a href=\"https://www.awesomeacf.com/\">Awesome ACF</a>, a community hub around the Advanced Custom Fields plugin.  Schuller has several ongoing projects.  He runs <a href=\"https://rivyt.com/\">RIVYT</a>, a website for video creators to share their work.  In October, he <a href=\"https://wptavern.com/jason-schuller-launches-dsko-a-discovery-network-for-creators-and-brands\">launched DSKO</a>, which is a discovery network built on WordPress for creators and brands.</p>\n\n\n\n<p><a href=\"https://leeflets.com\">Leeflets</a>, a project Schuller created for building single-page websites, served as the catalyst for the Landing Kit project.  The plugin brings similar functionality to any WordPress install.</p>\n\n\n\n<p>Often, WordPress is overkill for single-page sites.  The platform is ideal for larger sites and applications.  For people who need to manage multiple single-page sites, Landing Kit could be a blessing.  By setting up a single WordPress install with the plugin active, users can map any domain to any post or page.  It also works with custom post types.  This keeps site management limited to a single admin interface and point of maintenance.</p>\n\n\n\n<p>The plugin should not be confused with domain-mapping plugins built for multisite.  While it will work on multisite, the intent is not to map domains to subsites in a network.  Instead, it is meant to specifically map domains to single posts or pages on single-site installations.</p>\n\n\n\n<p>The plugin has two pricing tiers. The lower tier costs $59 per year for support and updates on up to three installations. It will also include access to a single page template in the near future.  The larger pricing tier at $159 per year offers support and updates for unlimited installations and will provide access to all templates as they become available.</p>\n\n\n\n<p>Landing Kit is Schuller&rsquo;s first foray in the WordPress product market space since selling his former WordPress theme business, Press75, in 2014.  His return is already making a splash and seems to be a welcome addition to the ecosystem given the feedback on his <a href=\"https://twitter.com/jasonpatricksc/status/1214574389036900353\">Twitter announcement</a>.</p>\n\n\n\n<p>&ldquo;It was never a goal of mine to jump back in, but sometimes these things just happen naturally,&rdquo; said Schuller.  &ldquo;I&rsquo;ve consistently used WordPress as a platform to iterate on ideas, and with each new build I end up creating unique functionality to solve specific problems. Landing Kit is the result of one of those problems I had the solve while creating Leeflets.&rdquo;</p>\n\n\n\n<p>Kurth was brought in to work on the project because of his experience building WordPress plugins.  He described the first version as not having many technical challenges because they had a working prototype to build from.  &ldquo;The most difficult part was thinking across multiple contexts and maintaining a clear picture of what would be happening across multiple domains at any time,&rdquo; he said.  &ldquo;I expect more difficult challenges as we start to move deeper into feature territory as we&rsquo;ll have bigger decisions to make and new technical hurdles to face, particularly when we start exploring remote block/template libraries.&rdquo;</p>\n\n\n\n<h2>Plugin Features</h2>\n\n\n\n<img />Potential book template for Landing Kit.\n\n\n\n<p>Version 1.0 of the plugin keeps things simple, which is a signature of Schuller&rsquo;s past work.  The plugin has a domain management screen.  It provides a convenient location to edit and configure all mapped domains for the installation.  Domain mapping is also available through the post-editing screen.</p>\n\n\n\n<p>The SSL options allow users to serve individual domains over HTTPS or to do so on a global basis.  The plugin also makes it easy to decide whether a post or page should be available via the main website or if requests to the single view should be 301 redirected to the mapped domain.</p>\n\n\n\n<p>There are some technical requirements to make use of the plugin.  Users must be on a host with the ability to add alias or add-on domains, have a dedicated IP address for their website, and be running WordPress 5.0 or above.  End-users should also be familiar with managing DNS records, specifically A-Records, with their web host.  These requirements are necessary to make sure domains are pointing to the correct location.  These are common features and available through many hosts.  Each host should have specific instructions for working with these features.</p>\n\n\n\n<p>The big value-add will be the plugin&rsquo;s custom templates and its upcoming Gutenberg blocks.  These will allow users to quickly build out single-page sites that look and feel different from the active theme for their WordPress installation.</p>\n\n\n\n<p>&ldquo;In line with the idea of complete niche templates (essentially bundled blocks), it makes sense to break that concept down a level in form of niche specific blocks you could pick and choose to create your own landing pages with a bit more freedom,&rdquo; said Schuller. &ldquo;There&rsquo;s so much potential with Gutenberg to get creative, especially when you&rsquo;re thinking specifically about landing pages and what creators might need to achieve a specific goal.&rdquo;</p>\n\n\n\n<p>Kurth and Schuller plan to release templates aimed at specific product niches.  &ldquo;I&rsquo;m hoping to get the first template out the door within the next few weeks,&rdquo; said Schuller on <a href=\"https://twitter.com/jasonpatricksc/status/1214576733669617664\">Twitter</a>.  The concept could be interesting as templates could essentially serve as &ldquo;mini themes.&rdquo;  If the plugin gains enough traction and a large user base, there is potential for a larger marketplace to form around single-page template designs.</p>\n\n\n\n<p>Take a video tour of the plugin:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>Schuller said that they are kicking around some other feature ideas for the future.  Nothing is set in stone yet.  &ldquo;People have also expressed interest in a Leeflets-style front-end experience for managing pages, which would essentially make Landing Kit a SaaS in a box,&rdquo; he said.  &ldquo;I&rsquo;m not sure if that&rsquo;s something we&rsquo;ll explore in the near term, but an option at the very least.&rdquo;</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p class=\"has-background has-gray-100-background-color bg-gray-100\"><strong>Update &ndash; January 8, 2020:</strong>  Additional quotes from Landing Kit creators added.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Jan 2020 03:34:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Lessons Learned by Stepping Outside WordPress Comfort Zone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96264\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/lessons-learned-by-stepping-outside-wordpress-comfort-zone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6861:\"<p>It was late summer in 2018. I was an aging developer who wasn&rsquo;t quite sure where I fit into the WordPress world anymore.  I had spent over a decade learning the ins and outs of the platform that launched my career and also served as a hobby for other pet projects I wanted to tackle.</p>\n\n\n\n<p>In part, I was bored.  I needed a new challenge.</p>\n\n\n\n<p>I love WordPress. More than that, I appreciate what WordPress has allowed me to accomplish over the years. However, I was no longer happy with it for my personal blog.  It was suitable for the job, but I often found it had a lot more gadgets and gizmos than I needed. I had also been writing blog posts in Markdown for many years rather than the classic editor.  WordPress was simply no longer a part of my workflow for my blog.  At times, it was a hindrance.</p>\n\n\n\n<p><em>Challenge accepted.</em></p>\n\n\n\n<p>Over a weekend, I built a working custom blog system.  I am hesitant to call it a Content Manage System (CMS) because it lacked crucial features, such as an administrative interface, that are at the heart of any CMS.  Nevertheless, I built a working system from scratch in two days.</p>\n\n\n\n<p>I had no idea I could accomplish such a feat without relying on the useful functions and tools that WordPress had so generously provided for most of my programming career.  I cannot count the number of times I accidentally typed out <code>esc_attr()</code> or <code>esc_html()</code> only to remember those were WordPress functions.  <em>My WordPress muscle memory was strong.</em>  Without knowing it, everything I had learned through building on top of WordPress pushed me to become a more well-rounded PHP developer.  There are few APIs I had not worked with from core WordPress.  I understood much of the source code and knew the reasons for a lot of the legacy gunk.</p>\n\n\n\n<p>My personal project paled in comparison to WordPress&rsquo; power and still does to this day.  However, it moved me outside my comfort zone.  It allowed me to explore old ideas in new ways.</p>\n\n\n\n<p>One example was understanding how rewrite rules and routing worked.  Some of my friends and I recently joked that no one really understands the WordPress Rewrite API.  You just tinker with it until something works and the new code no longer breaks your site.  There are many existing libraries out there, but I wanted to understand how this worked for my own edification.  Therefore, I set out to build an HTTP request, router, and controller class.  The end result was an elegant solution, which borrowed heavily from other PHP frameworks.</p>\n\n\n\n<p>With a simple line of code, as shown below for setting up a &ldquo;book&rdquo; content type, I could handle incoming requests for a book page, map it to the correct resource, and output the template on the front end. I began to wonder why I had shied away from this foundational website concept for so many years as a developer.</p>\n\n\n\n<pre class=\"wp-block-code\"><code>// Create \'example.com/books/book-name\'.\n$this-&gt;router-&gt;get( \'books/{name}\', Controller::class );</code></pre>\n\n\n\n<p>There were many other areas where I began to question the &ldquo;WordPress way&rdquo; of doing things.  During this journey of discovery, I was able to learn things that I could bring back for use in my WordPress projects.  By stepping out into the larger world of website development, I was able to better see the flaws in the platform that helped me fall in love with programming.  However, I was also better able to see the beauty in the system that thousands of developers have kept running for the preceding 15 years.</p>\n\n\n\n<h2>It Is Not All About Code</h2>\n\n\n\n<p>I had the opportunity to study and learn large frameworks like <a href=\"https://laravel.com/\">Laravel</a> and <a href=\"https://symfony.com/\">Symfony</a>.  However, I also studied how other platforms worked from a pure user-experience perspective.</p>\n\n\n\n<p>The one thing I knew for certain is that I wanted to test platforms created for people who wrote in Markdown.  I wasn&rsquo;t looking for huge platforms to compete with WordPress&rsquo; power, such as Joomla or Drupal.  Instead, I was looking at lighter-weight solutions like <a href=\"https://getgrav.org/\">Grav</a>, <a href=\"https://jekyllrb.com/\">Jekyll</a>, and <a href=\"https://gohugo.io/\">Hugo</a>.  I wanted to understand how the user experience fit in with my workflow.</p>\n\n\n\n<p>Of all the solutions I tested, each had its advantages.  Each also had features or methods of doing things that wasn&rsquo;t to my taste.  The good thing about the experience was that I was able to identify how I wanted my blogging platform to work for me.  Reading thoughts from others in those communities also allowed me to hear from users outside of the WordPress community about why they loved their preferred blogging system.</p>\n\n\n\n<p>I soldiered forward.  Using what I learned from those platforms, I built something that I was happy to use.  It wasn&rsquo;t perfect and would likely never be.  Room for growth is not a bad thing.</p>\n\n\n\n<p>During this time, I rekindled my love of blogging with WordPress.  While not always the popular opinion, the block editor felt leaps and bounds better than the classic editor.  It was something I could see myself using regularly.  Aside from my personal blog, I began using it on other projects.  I still write in Markdown every day.  However, I find myself enjoying writing within WordPress&rsquo; editor for the first time in years.</p>\n\n\n\n<h2>Why You Should Try New Platforms</h2>\n\n\n\n<p>From a developer perspective, it is not a good idea to become complacent and rely on a single system.  Instead of calling yourself a &ldquo;WordPress developer,&rdquo; think beyond that terminology.  Instead, you should be a PHP programmer or JavaScript programmer.  Or, better yet, simply call yourself a programmer.  Programmers solve problems.  The tools or languages are what you use to get from Point A to Point B.</p>\n\n\n\n<p>On the job market, being a more well-rounded programmer opens up more opportunities.  While most of us can only hope that WordPress will be the leading platform for the next 10, 20, or 50 years, you should be prepared for any future.</p>\n\n\n\n<p>Another benefit of working with other platforms from time to time is that you learn ideas that you can bring back into the WordPress ecosystem.  For example, it is interesting to see how the <a href=\"https://roots.io/sage/\">Sage starter theme</a> implements Laravel Blade&rsquo;s templating engine.  These ideas can help shape WordPress&rsquo; future.</p>\n\n\n\n<p>Some ideas can be pushed into core WordPress.  Others can improve team workflows within agencies.</p>\n\n\n\n<p>Continuing education benefits the WordPress community as a whole.  Don&rsquo;t limit that education to WordPress-specific ideas.  Learn from the outside and bring it back.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Jan 2020 21:19:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"BuddyPress: BuddyPress 5.1.2 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=309637\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://buddypress.org/2020/01/buddypress-5-1-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1190:\"<p><a href=\"https://downloads.wordpress.org/plugin/buddypress.5.1.2.zip\">BuddyPress 5.1.2</a> is now available. This is a security release. All BuddyPress installations are strongly encouraged to upgrade as soon as possible.</p>\n\n\n\n<p>The 5.1.2 release addresses one security issue:</p>\n\n\n\n<ul><li>Certain REST API requests could result in the exposure of private data. Discovered and reported independently by <a href=\"https://profiles.wordpress.org/walbo/\">Petter Walbø Johnsgård</a> and <a href=\"https://profiles.wordpress.org/finebet/\">Jacek Suski</a>.</li></ul>\n\n\n\n<p>The vulnerability was reported privately to the BuddyPress team, in accordance with&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">WordPress’s security policies</a>. Our thanks to the reporters for practicing coordinated disclosure.</p>\n\n\n\n<p>For complete details, visit the&nbsp;<a href=\"https://codex.buddypress.org/releases/version-5-1-2/\">5.1.2 changelog</a>.</p>\n\n\n\n<p>Update to BuddyPress 5.1.2 today in your WordPress Dashboard, or by&nbsp;<a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the WordPress.org plugin repository</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Jan 2020 21:36:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Boone Gorges\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: Pods Framework Loses Primary Sponsorship, Seeks Donors To Fund Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96194\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/pods-framework-loses-primary-sponsorship-seeks-donors-to-fund-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8184:\"<img />\n\n\n\n<p>Scott Kingsley Clark, lead developer of the Pods Framework, <a href=\"https://pods.io/2020/01/02/pods-needs-your-help-in-2020/\">announced the project was seeking new donors</a> on Thursday.  Automattic, the primary sponsor, dropped out after funding the project since 2012.  This has put the team in a position to seek help for maintaining and supporting the project.  Automattic was previously covering around 90% of the costs.</p>\n\n\n\n<p>The <a href=\"https://wordpress.org/plugins/pods/\">Pods Framework</a> is a WordPress plugin that allows end-users or developers to create and extend custom post types, content types, users, media, and comments.  Essentially, it is a complete content management framework for those who need more than the basics that WordPress offers.  It has well over a dozen <a href=\"https://pods.io/plugins/\">add-on plugins</a> for extra functionality and currently has over 80,000 active installations.</p>\n\n\n\n<p>There are <a href=\"https://friends.pods.io/about-the-team/\">six primary contributors</a> to the Pods plugin.  They have also brought on a React developer who is just getting started with UI work on Pods 2.8.  Other than work from the team, the project receives patches and contributions from the larger Pods community.</p>\n\n\n\n<p>With the loss of funding from Automattic, Pods is receiving around $700 each month from donors. &ldquo;Once we found out that Automattic was going to focus their sponsorship funding towards other priorities of theirs, we put together a plan of action to reduce overall costs,&rdquo; said Clark.</p>\n\n\n\n<p>The team&rsquo;s goal is to have at least 200 sponsors.  The average recurring monthly donation is about $17.  Coupled with their current 40 regular donors, they need an additional 160 at the same donation average to cover costs.  This would at least allow the team to be efficient with their time.</p>\n\n\n\n<p>&ldquo;Right now our feature/fix development and support efforts will begin to suffer from lack of funding because we&rsquo;ll be spread too thin,&rdquo; said Clark.  &ldquo;I work a full-time job and can&rsquo;t pick up the extra weight entirely on my own.&rdquo;  Clark&rsquo;s job with Modern Tribe gives him some flexibility to work on the project, but it is minimal and only when time is available.</p>\n\n\n\n<p>People who are willing to sponsor the project monthly can contribute via the <a href=\"https://friends.pods.io/donations/become-a-friend/\">Friends of Pods</a> sponsorship page.  The project also has a <a href=\"https://friends.pods.io/donations/one-time-donation/\">one-time donation option</a> for those wanting to go that route.</p>\n\n\n\n<h2>Automattic Was Crucial to Success</h2>\n\n\n\n<p>In his announcement, Clark said Automattic&rsquo;s decision to pull their sponsorship was because the company wanted to put their funds toward native Gutenberg projects.  Pods is a project that spans beyond Gutenberg.  However, it does have some Gutenberg integration and more features in the works.</p>\n\n\n\n<p>Since 2012, Automattic has been the largest sponsor of Pods.  Their funding allowed the team to support and continue developing the plugin.  &ldquo;We&rsquo;re so appreciative of Automattic&rsquo;s support,&rdquo; said <a href=\"https://twitter.com/podsframework/status/1212792297911443456\">Clark on Twitter</a>.  &ldquo;They&rsquo;ve sponsored Pods for over 7 years, I know their decision was a tough one for them.&rdquo;</p>\n\n\n\n<p>In 2011, <a href=\"https://wptavern.com/pods-what-happened-after-the-kickstarter-campaign\">Pods surpassed its goal</a> in a Kickstarter campaign.  The project raised over $4,000 with a goal of $1,500.  The campaign was intended to fund the development of Pods 2.0.  In hindsight, the dollar amount was far too low to realistically fund such a complex project.</p>\n\n\n\n<p>&ldquo;I naively thought that would be enough to accomplish everything and more we wanted to do for our big Pods 2.0 release,&rdquo; said Clark.  &ldquo;I was really wrong. Adding developers at a late stage in a project can take even more time than you anticipate. I also had to work around those developers&rsquo; schedules and spend time coordinating with them instead of building things myself. It was a huge challenge as I hadn&rsquo;t really led a team on a side project while having a full-time job before.&rdquo;</p>\n\n\n\n<p>Clark had to reach into his pocket and put money towards the funding problem.  Yet, the team hit more roadblocks getting Pods 2.0 released.  &ldquo;That&rsquo;s when I reached out to Automattic, which they offered to help out here and there to sponsor some more development&rdquo;, he said. &ldquo;I was at the right job and had the right developers in place to really make the most of that arrangement. I had tons of time on the clock at work to build projects with Pods and I could build features/fix problems every day. With the added help of the funding, we were covered for many years to come.&rdquo;</p>\n\n\n\n<p>The arrangement was a blessing for the project, propelling it forward for years.  &ldquo;Without Automattic, we surely couldn&rsquo;t have continued on with the huge undertaking that the Pods 2.0 rewrite was,&rdquo; said Clark.  &ldquo;We would have just shelved everything and only added minor fixes/enhancements to Pods going forward.&rdquo;</p>\n\n\n\n<p>Clark described the funding as crucial to maintaining a premium product for free.  &ldquo;Given what I know about many other free products out there, I can see why our support for Pods itself has sometimes been compared to premium support because of the people we could keep involved helping everyone with their project challenges and Pods questions,&rdquo; he said.</p>\n\n\n\n<p>After success with Pods 2.0 and several releases, the Pods team reached back out to Automattic.  They were able to secure more funding with the agreement that they would diversify their funding and bring in more sponsors, which they were able to accomplish.</p>\n\n\n\n<h2>What the Future Holds</h2>\n\n\n\n<p>Clark is hopeful that they can meet their sponsorship goals.  If not, they may have to explore some commercial options.  However, he said Pods and its primary features will remain free of charge.</p>\n\n\n\n<p>&ldquo;Development is not cheap,&rdquo; said Clark.  &ldquo;In fact, we&rsquo;ve thought about diversifying our funding for a while, but ironically our sponsorship agreement with Automattic prohibited us from exploring premium add-ons to help fund more growth.&rdquo;</p>\n\n\n\n<p>While the funding was a blessing, it may have also been a crutch.  &ldquo;If we had suddenly gotten millions of active installs to support, we would have been in big trouble,&rdquo; he said.  &ldquo;You can&rsquo;t scale sponsorships with a growing userbase.&rdquo;</p>\n\n\n\n<p>Clark said he is committed to making sure the next three major feature releases go out for free as part of the main Pods plugin, regardless of the funding situation.  &ldquo;I believe in making it easy to build projects in WordPress and some of those features are just really crucial to normal projects,&rdquo; he said.</p>\n\n\n\n<p>The team is exploring the potential for premium add-ons.  However, if going that route, the add-ons would be with useful features that go beyond the core needs of the plugin.  &ldquo;We have some really awesome features that we&rsquo;ve always wanted to do and this could be the avenue to build them while giving huge value to our Friends of Pods,&rdquo; he said.  &ldquo;This could be an added benefit to them for supporting our project, which they&rsquo;d get as a reward for keeping their Friends of Pods membership active.&rdquo;</p>\n\n\n\n<p>The future is uncertain.  The project is not in danger of disappearing at this point.  However, the reality is that development and support have real-world costs that need to be met.</p>\n\n\n\n<p>&ldquo;It&rsquo;s still too early to know exactly what we can do with the funding we have and what we can expect to get from our 2020 fundraising efforts,&rdquo; said Clark.  &ldquo;We don&rsquo;t know if those ongoing funding struggles will prevent us from spending time to build new add-ons to generate new revenue either. It&rsquo;s all up in the air right now.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Jan 2020 17:59:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress.org blog: The Month in WordPress: December 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8282\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2020/01/the-month-in-wordpress-december-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8184:\"<p>As 2019 draws to a close and we look ahead to another exciting year let’s take a moment to review what the WordPress community achieved in December.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.3.1 and 5.3.2 Releases</h2>\n\n\n\n<p>The WordPress 5.3.1 security and maintenance release was announced on December 13. It features 46 fixes and enhancements. This version corrects four security issues in WordPress versions 5.3 and earlier. Shortly afterwards, WordPress 5.3.2 was released, addressing a couple high severity Trac tickets, and includes 5 fixes and enhancements, so you’ll want to upgrade. You can read more about these releases in the announcements for <a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-1-security-and-maintenance-release/\">5.3.1</a> and <a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\">5.3.2</a>.</p>\n\n\n\n<h2>Update on the Nine Core Projects for 2019</h2>\n\n\n\n<p>At the end of 2018, <a href=\"https://profiles.wordpress.org/matt/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>matt</a> <a href=\"https://make.wordpress.org/core/2018/12/08/9-priorities-for-2019/\">announced</a> the nine projects that would be the main focus areas for Core development in the next year. Have we made progress? Yes! <a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> <a href=\"https://make.wordpress.org/core/2019/12/06/update-9-projects-for-2019/\">posted a full update</a> on the team’s work. In brief, two of the projects have been completed and shipped in major releases, four are targeted for release in versions 5.4 and 5.5 of WordPress, and the remaining three have seen significant progress but are not yet slated for completion. These will continue to see progress throughout 2020.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordPress Major Release Calendar</h2>\n\n\n\n<p>The Core team has published <a href=\"https://make.wordpress.org/core/2019/11/21/tentative-release-calendar-2020-2021/\">a tentative release calendar</a> for 2020 and 2021. This is intended to provide the community with more information about what lies ahead.</p>\n\n\n\n<p>The schedule is considered tentative because there are always variables that could affect these plans — not least that the Core team may need more time to finish the work planned for a release.</p>\n\n\n\n<h2>Initial Documentation for Block-Based WordPress Themes</h2>\n\n\n\n<p>The Gutenberg team has started working on <a href=\"https://github.com/WordPress/gutenberg/pull/18890/files\">the initial documentation</a> for what block-based themes might look like, marking a significant change in the way themes are conceptualized. With full-site editing now a realistic goal for WordPress, themes will certainly look different in the future.</p>\n\n\n\n<p>Want to help shape the future of block-based themes in WordPress Core? Following <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> is a good start! You can also join in on the discussion <a href=\"https://make.wordpress.org/themes/2019/12/04/questions-about-the-future-of-themes/\">on this blog post</a>, or help out with the work to <a href=\"https://github.com/WordPress/gutenberg/blob/master/lib/demo-block-templates/index.html\">create a demo space for experimentation with the future of themes</a>. As always, contribution to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a> is open to everyone! Join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a> to see what other people are saying, and contribute your own thoughts.</p>\n\n\n\n<h2>Gutenberg Updates Abound</h2>\n\n\n\n<p>It’s been a busy month for Gutenberg! Version 7.0, including a new navigation block, <a href=\"https://make.wordpress.org/core/2019/11/27/whats-new-in-gutenberg-27-november/\">was announced</a> on November 27. This was followed by <a href=\"https://make.wordpress.org/core/2019/12/11/whats-new-in-gutenberg-11-december/\">version 7.1</a>, announced on December 11; it includes 161 merged pull requests that offer a fresh UI to new users, an option to switch between edit and navigation modes, captions for the table block, and many other enhancements.</p>\n\n\n\n<p>Want to get involved in building Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, contribute to <a href=\"https://github.com/WordPress/gutenberg/\">Gutenberg on GitHub</a>, and join the #core-editor channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>Arrival of the BuddyPress Beta Tester Plugin</h2>\n\n\n\n<p>On December 2, <a href=\"https://buddypress.org/2019/12/bp-beta-tester-1-0-0/\">the BuddyPress Beta Tester plugin</a> was added to the WordPress.org plugins directory. This feature is a great way for the WordPress community to provide early feedback on releases.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/plugins/bp-beta-tester/\">download the plugin</a> now. If you find that something is not working as expected during your beta tests, let the BuddyPress team know by submitting a ticket on the <a href=\"https://buddypress.trac.wordpress.org/newticket\">Development Tracker</a> or posting a new topic in the BuddyPress <a href=\"https://buddypress.org/support/\">support forums</a>.​​</p>\n\n\n\n<h2>An Update on the Block Directory in the WordPress Editor&nbsp;</h2>\n\n\n\n<p>The Design team received lots of excellent feedback on the <a href=\"https://make.wordpress.org/design/2019/07/11/block-directory-in-wp-admin-concepts/\">early concepts for the Block Directory</a>. This feedback was incorporated into a Version 1 update to the <a href=\"https://make.wordpress.org/design/tag/block-directory/\">#block-directory</a> project. The Block Directory is to be included in WordPress 5.5, which is slated for August 2020. To learn more about the Block Directory, check out <a href=\"https://make.wordpress.org/design/2019/12/19/block-directory-in-wp-admin-v1/\">this announcement post</a> and help out by sharing your feedback. </p>\n\n\n\n<p>Want to get involved in building the Block Directory? Follow <a href=\"https://make.wordpress.org/design/\">the Design team blog</a>. If you have a block you’d like to include in the directory you can <a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines/\">submit it following the information here</a>. </p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li><a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines/\">Guidelines for the Block Directory</a> have been drafted; the team is actively working on them now.</li><li>The<a href=\"https://make.wordpress.org/community/2020-wordpress-global-community-sponsorship-program/\"> Global Community Sponsorship Program for 2020</a> has been announced.&nbsp;</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/12/09/do-not-contact-reviewers-outside-of-the-wordpress-org-system-about-your-review/\">has published a reminder</a> for developers about the proper way to communicate with reviewers.</li><li>The Community Team is in the process of <a href=\"https://make.wordpress.org/community/2019/12/05/community-team-reps-for-2020/\">selecting new team reps</a>.</li><li><a href=\"https://meetup.com/pro/wordpress\">The WordPress meetup program</a> crossed the 800-group mark this month and includes groups from more than 100 countries.</li><li>The team that helped to create the 2019 State of the Word slide deck <a href=\"https://wordpress.org/news/2019/12/state-of-the-word-the-story-of-the-slides/\">shared how the slides were created using Gutenberg</a>, powered by the Slides plugin.&nbsp;</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Jan 2020 17:05:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Angela Jin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Matt: 29 Books in 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50689\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://ma.tt/2020/01/29-books-in-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4654:\"<p>As a follow-on to my lists in <a href=\"https://ma.tt/2017/12/books-in-2017/\">2017</a> and <a href=\"https://ma.tt/2019/01/39-books-in-2018/\">2018</a>, here are the books I completed this year. I&#8217;ve linked all to the Kindle edition except the Great Mental Models, which is so gorgeous in hardcover you should get that one, and the The World is Sound isn&#8217;t available as an ebook. Bold are ones I particularly enjoyed or found myself discussing with others a lot.</p>\n\n\n\n<ol><li><a href=\"https://www.amazon.com/dp/B000JMKNZG/\">The Pilgrimage by Paulo Coehlo</a></li><li><strong><a href=\"https://www.amazon.com/dp/B079WM7KLS/\">21 Lessons for the 21st Century by Yuval Noah Harari</a></strong></li><li><a href=\"https://www.amazon.com/dp/B005MHHRQG/\">No Longer at Ease by Chinua Achebe</a></li><li><a href=\"https://www.amazon.com/dp/B078LJW4G4/\">Imagine it Forward by Beth Comstock</a></li><li><strong><a href=\"https://www.amazon.com/gp/product/1999449002/\">The Great Mental Models Vol. 1 by Shane Parrish</a></strong></li><li><strong><a href=\"https://www.amazon.com/dp/B01MPZNG63/\">Why Buddhism is True by Robert Wright</a></strong></li><li><a href=\"https://www.amazon.com/dp/B079WNQFZQ/\">There Will Be No Miracles Here by Casey Gerald</a></li><li><a href=\"https://www.amazon.com/dp/B01MSICPW3/\">Less by Andrew Sean Greer</a></li><li><a href=\"https://www.amazon.com/dp/B078VW3VM7/\">Bad Blood by John Carreyrou</a></li><li><a href=\"https://www.amazon.com/dp/B07TMKPD67/\">nejma by Nayyirah Waheed</a></li><li><a href=\"https://www.amazon.com/dp/B07CRJB8WJ/\">Trust Exercise by Susan Choi</a> (also on <a href=\"https://twitter.com/BarackObama/status/1211033245812441091\">Obama&#8217;s book list</a>, and based on the high school I went to, HSPVA)</li><li><strong><a href=\"https://www.amazon.com/dp/B000FCK206/\">Genghis Khan and the Making of the Modern World by Jack Weatherford</a></strong></li><li><strong><a href=\"https://www.amazon.com/dp/B005GFBNSW/\">The Way to Love by Anthony de Mello</a></strong></li><li><a href=\"https://www.amazon.com/dp/B005BRSFCC/\">The Fifth Agreement by Don Miguel Ruiz, Don Jose Ruiz, and Janet Mills</a></li><li><strong><a href=\"https://www.amazon.com/dp/B07CWHYVW5/\">Empty Planet by Darrell Bricker</a></strong></li><li><a href=\"https://www.amazon.com/dp/B00JTYQJ3K/\">Brave New World by Aldous Huxley</a></li><li><a href=\"https://www.amazon.com/gp/product/B005GG0MXI/\">How to Talk So Kids Will Listen &amp; Listen So Kids Will Talk by Adele Faber and Elian Mazlish</a></li><li><a href=\"https://www.amazon.com/dp/B07MPXZYJ7/\">Make it Scream, Make it Burn by Leslie Jamison</a></li><li><strong><a href=\"https://www.amazon.com/dp/B001JAHG98/\">A Short History of Progress by Ronald Wright</a></strong></li><li><strong><a href=\"https://www.amazon.com/dp/B07G13W75M/\">Conscious: A Brief Guide to the Fundamental Mystery of the Mind by Annaka Harris</a></strong></li><li><strong><a href=\"https://www.amazon.com/dp/0892813180/\">The World Is Sound: Nada Brahma: Music and the Landscape of Consciousness by Joachim-Ernst Berendt</a></strong></li><li><a href=\"https://www.amazon.com/dp/B00R3MHWUE/\">The 15 Commitments of Conscious Leadership by Jim Dethmer and Diana Chapman</a></li><li><strong><a href=\"https://www.amazon.com/dp/B004W3FM4A/\">Finite and Infinite Games by James P. Carse</a></strong></li><li><a href=\"https://www.amazon.com/dp/B079G6KMVS/\">Four Soldiers by Hubert Mingarelli</a></li><li><strong><a href=\"https://www.amazon.com/dp/B07L2F9S6H/\">Working by Robert Caro</a></strong></li><li><a href=\"https://www.amazon.com/dp/B0049H9AVU/\">Attached by Amir Levine and Rachel Heller</a></li><li><a href=\"https://www.amazon.com/dp/B075HYVP7C/\">Skin in the Game by Nassim Nicholas Taleb</a></li><li><a href=\"https://www.amazon.com/dp/B012271Z5M/\">The Devil&#8217;s Financial Dictionary by Jason Zweig</a></li><li><a href=\"https://www.amazon.com/dp/B07FLNFRGK/\">How to Do Nothing: Resisting the Attention Economy by Jenny Odell</a> (also on Obama&#8217;s book list)</li></ol>\n\n\n\n<p>What&#8217;s interesting is that if you were to purchase every single one of those books, it would be about $349. You could get them all for nothing from your local library, <a href=\"https://www.amazon.com/gp/help/customer/display.html?nodeId=200747550\">even on a Kindle</a>. The money I spend on books is by far and away the best investment I make every year — books expand my mind and enrich my life in a way that nothing else does.</p>\n\n\n\n<p>All years: <a href=\"https://ma.tt/2017/12/books-in-2017/\">2017</a>, <a href=\"https://ma.tt/2019/01/39-books-in-2018/\">2018</a>, <a href=\"https://ma.tt/2020/01/29-books-in-2019/\">2019</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Jan 2020 07:00:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"WPTavern: Building the Community We Deserve\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96166\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wptavern.com/building-the-community-we-deserve\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4338:\"<img />\n\n\n\n<p>One of our internal discussions about the future of WP Tavern has stuck with me since it wrapped up.  The discussion was centered on pushing comment threads in the right direction.  We often receive comments that border on conspiracy-theory territory (<em>and those that cross over head first</em>).  We also get comments that make statements of fact without backing up those claims with evidence.</p>\n\n\n\n<p>Not all those who make such comments have ill intentions.  The issue is often that the ideas presented in a comment are not fully-fleshed out.  Often, the commentator had not taken the time to shape their words into something that births thoughtful responses.  Such is the nature of comments on the web.</p>\n\n\n\n<p>WP Tavern&rsquo;s big goal for 2020 should be about shepherding our community.  Going forward, we will take steps toward fostering better discussions.</p>\n\n\n\n<h2>Building Our Community in the New Year</h2>\n\n\n\n<p>Shepherding the community is about creating a welcoming environment for everyone.  All of our readers should feel comfortable leaving their thoughts on a given topic.</p>\n\n\n\n<p>As a new writer in a long-standing community, I sometimes receive uplifting private messages and emails from community members.  They often have kind words or love the coverage of a specific topic.  The trouble is getting some of those people to engage in the comments.  As my grandma, who would welcome anyone into her home, would say, &ldquo;Y&rsquo;all stop by sometime and chat for a while.&rdquo;  Some people are timid about commenting publicly.  Others feel like they will be attacked or their ideas will be dismissed offhand.  Fostering a community they would feel comfortable participating in is the goal.</p>\n\n\n\n<p>The first step toward this goal is an <a href=\"https://wptavern.com/comment-policy\">update to our comment policy</a>.</p>\n\n\n\n<p>The intention of our policy has remained the same.  In general, be kind to people.  The updated policy includes some new guidelines on what is unacceptable and some clearer language in some areas.  It would be nice to eventually move back to the point where we no longer moderated every comment before publishing them on the site.  We are not there yet, but I remain optimistic.</p>\n\n\n\n<p>The other major plan is around integrating community elements into the site design.  Rest assured that this is something being worked on.  Better showcasing recent comments is high on the list.  However, we can go beyond that by showcasing users with the most comments, top comments by the number of likes, and more.  I have some ideas that I hope to implement this year to make our readers feel like they have more of a stake in the site.  This place is as much about you all as it is about our team.</p>\n\n\n\n<h2>Ask the Bartender</h2>\n\n\n\n<p>We have quietly added an <a href=\"https://wptavern.com/contact-me/ask-the-bartender\">Ask the Bartender</a> form on the site.  This is our idea of an advice column that you might see in traditional journalism.</p>\n\n\n\n<p>At this point, it is experimental.  The plan is to publish a periodic article where one of our writers answers questions from our readers.  This will give you all an opportunity to bring up the big questions that you want our community to discuss.</p>\n\n\n\n<p>We do not have an official format for how this will work yet.  It will largely depend on the questions that people submit.  We are open to nearly any type of WordPress-related question right now.</p>\n\n\n\n<h2>What We All Can Do</h2>\n\n\n\n<p>The biggest thing I ask of the Tavern community that we make 2020 the year that we thoughtfully engage with one another. </p>\n\n\n\n<p>More than that, when discussing topics with others online, there is no need to feel like you must win an argument.  That usually leads to nowhere good.  Present your ideas and let them stand on their own merit.</p>\n\n\n\n<p>With that idea in mind, think about writing responses in the form of a blog post.  Then, let us know about the post here at the Tavern.  Taking the time to write a post allows your ideas to mature.  Doing this lets you build a stronger argument if you rationally think it through.  Also, WordPress is blogging software at heart.  We should use it more often to blog about WordPress.</p>\n\n\n\n<p>Happy New Year, everyone!  Let&rsquo;s make this a memorable one.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Jan 2020 21:01:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WPTavern: Reflecting on 2019: The Year in Review\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com/reflecting-on-2019-the-year-in-review\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11823:\"<img />\n\n\n\n<p>Another year is in the bag.  With a project as large and far-reaching as WordPress, there was no shortage of news and controversy.  We covered a lot of stories in 2019 and are gearing up for another exciting year.</p>\n\n\n\n<p>I always like to take a moment at the end of the year to look over everything that happened.  Despite how well a website or project performs, it is good to take stock of each success.  It is a time of reflection.  Even in bad years, you should be able to find positive things to remember.  This helps shape how you view your websites, projects, or even life.  Ending the year remembering those positive things can help propel you into the new year.</p>\n\n\n\n<p>It is equally important to find areas for improvement.  However, you cannot understand what the next steps are until you have taken a look at where you have been. </p>\n\n\n\n<p>With that in mind, let&rsquo;s take a moment to reflect on the past year&rsquo;s journey for WP Tavern and WordPress.</p>\n\n\n\n<h2>WP Tavern Stats</h2>\n\n\n\n<p>In 2019, WP Tavern published 382 posts.  That is an increase of 52 posts over 2018.</p>\n\n\n\n<p>Average words per post are the highest in WP Tavern&rsquo;s history, coming in at 587 words.  I am certain my long-windedness played a small role in that.  We also had fewer quick posts on the whole.  That is a format we should experiment with more.</p>\n\n\n\n<p>Total and average comments are down.  Admittedly, we have been a bit heavy-handed with deleting comments that break our comment policy this year.  Average Jetpack-powered &ldquo;likes&rdquo; per post are at an all-time high (6.9 likes per post).  Total likes are the second-highest for a year (2,614 likes).  We are also seeing a lot of engagement on Twitter.  It will be interesting to see how this plays out in 2020 with social media having such a stronghold on how people engage with one another online.</p>\n\n\n\n<p>We need to continue improving both the frequency and the quality of comments.</p>\n\n\n\n<h2>The Year in WordPress</h2>\n\n\n\n<p>WordPress <a href=\"https://wptavern.com/happy-sweet-16-wordpress\">turned 16 years old</a> this year.  <em>It&rsquo;s old enough to drive now.</em></p>\n\n\n\n<p>The community enjoyed three major updates throughout the year:</p>\n\n\n\n<ul><li><a href=\"https://wptavern.com/wordpress-5-1-improves-editor-performance-encourages-users-to-update-outdated-php-versions\">Version 5.1 &ldquo;Betty&rdquo;</a> improved editor performance and encouraged users to update PHP.</li><li><a href=\"https://wptavern.com/wordpress-5-2-jaco-released-includes-fatal-php-error-protection-and-a-recovery-mode\">Version 5.2 &ldquo;Jaco&rdquo;</a> included PHP fatal error protection and a recovery mode.</li><li><a href=\"https://wptavern.com/wordpress-5-3-kirk-released-brings-new-default-theme-editor-improvements-and-ui-tweaks\">Version 5.3 &ldquo;Kirk&rdquo;</a> introduced the Twenty Twenty theme and made significant UI tweaks.</li></ul>\n\n\n\n<p>Most of the year was focused on the Gutenberg plugin and porting its features and improvements into WordPress.  WP Tavern covered nearly <a href=\"https://wptavern.com/tag/gutenberg\">everything you ever wanted to know about Gutenberg</a>.</p>\n\n\n\n<p>Matt Mullenweg&rsquo;s <a href=\"https://wptavern.com/state-of-the-word-2019-recap-all-roads-lead-to-the-block-editor\">2019 State of the Word</a> primarily focused on the work that went into the block editor in the past 12 months.  He also outlined the next phases of the project, which include full-site customization, collaboration between post authors, and multilingual sites.</p>\n\n\n\n<h2>Alex Mills (Viper007Bond) Passed Away</h2>\n\n\n\n<p>In February, the WordPress community lost one of its greatest members, Alex Mills, as his <a href=\"https://wptavern.com/alex-mills-ends-his-battle-with-leukemia\">battle with leukemia ended</a>.  Alex was a mentor and hero to many of us.  As a developer, I learned more from his work than I may ever be able to pay forward.  We never met in person, but he was one of my early teachers by simply leading the way for people like me.</p>\n\n\n\n<p>His <a href=\"https://wordpress.org/plugins/regenerate-thumbnails/\">Regenerate Thumbnails</a> plugin also saved me countless hours over the years.  I cannot imagine building or testing WordPress themes without it.  <a href=\"https://wptavern.com/automattic-adopts-alex-mills-plugins\">Automattic adopted the plugins</a> Alex built during his WordPress journey.</p>\n\n\n\n<p>Alex, thank you for everything you contributed to the WordPress community.</p>\n\n\n\n<h2>Favorites From 2019</h2>\n\n\n\n<p>The following are various WordPress and Tavern-related things that I found most interesting throughout 2019.</p>\n\n\n\n<h3>Posts From Tavern Writers</h3>\n\n\n\n<p>We have had numerous well-written stories from everyone who has contributed in 2019.  The following are personal favorites from contributors other than myself that I wanted to highlight before we close the year out.  </p>\n\n\n\n<p>These are my favorites for various reasons and presented in no particular order.  Sometimes, I liked the content of the article.  At other times, I appreciated them for how well-written they were.  If you missed them, now is a good time to hop back and check out some stories our team has written this year.</p>\n\n\n\n<ul><li><a href=\"https://wptavern.com/wordpress-governance-project-flagged-as-unsanctioned-first-meeting-set-for-january-15\">WordPress Governance Project Flagged as Unsanctioned, First Meeting Set for January 15</a></li><li><a href=\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\">GPL Author Richard Stallman Resigns from Free Software Foundation</a></li><li><a href=\"https://wptavern.com/matt-mullenweg-and-david-heinemeier-hansson-discuss-wordpress-market-share-monopolies-and-power-in-open-source-communities\">Matt Mullenweg and David Heinemeier Hansson Discuss WordPress Market Share, Monopolies, and Power in Open Source Communities</a></li><li><a href=\"https://wptavern.com/proposal-to-auto-update-old-versions-of-wordpress-to-4-7-sparks-heated-debate\">Proposal to Auto-Update Old Versions of WordPress to 4.7 Sparks Heated Debate</a></li><li><a href=\"https://wptavern.com/automattic-acquires-tumblr-plans-to-rebuild-the-backend-powered-by-wordpress\">Automattic Acquires Tumblr, Plans to Rebuild the Backend Powered by WordPress</a></li><li><a href=\"https://wptavern.com/gutenberg-one-year-later\">Gutenberg: One Year Later</a></li><li><a href=\"https://wptavern.com/possibilities-of-a-cms-in-the-spatial-computing-future\">Possibilities of a CMS in the Spatial Computing Future </a></li></ul>\n\n\n\n<h3>My Articles</h3>\n\n\n\n<p>I am closing in on 70 posts since becoming a fulltime contributor to WP Tavern.  This job has allowed me to explore a variety of topics in a few months, and I look forward to continuing this into 2020.  I enjoyed writing many stories, but there were two that I was particularly happy to have the opportunity to cover.</p>\n\n\n\n<p>The first was my coverage of the <a href=\"https://wptavern.com/u-s-supreme-court-denies-dominos-appeal-to-determine-whether-websites-must-be-accessible\">U.S. Supreme Court&rsquo;s denial of Domino&rsquo;s appeal</a> to determine whether its website must be accessible to all of its customers.  This story helped me jump far outside my comfort zone of strictly writing about WordPress and development topics.  It was also a stark reminder that we, as a community, need to become better at making the web accessible for all people.</p>\n\n\n\n<p>The post I enjoyed working on the most was <a href=\"https://wptavern.com/chilean-news-publication-el-soberano-first-to-launch-on-newspack\">El Soberano&rsquo;s launch on Newspack</a>.  The interesting thing about covering this story was not the actual re-launch of the publication.  It was getting to chat with other journalists, particularly those who were down in the trenches and fighting for justice.  It reminded me that, at the end of the day, journalism is always about people.</p>\n\n\n\n<h3>Favorite Theme</h3>\n\n\n\n<p>This was an easy pick.  <a href=\"https://wordpress.org/themes/twentytwenty/\">Twenty Twenty</a> takes the top spot on my list.  There were themes released this year with designs better-suited to my tastes.  There were certainly other themes pushing more limits in terms of functionality.</p>\n\n\n\n<p>What I like most about Twenty Twenty is that it seems unafraid to be bold.  It showcases how a theme can have personality while being designed around the block editor.  I am not sure if I would ever use it for my sites simply because it&rsquo;s not my preferred style.  However, I appreciate its artistic merit.</p>\n\n\n\n<h3>Favorite Plugin</h3>\n\n\n\n<p>While it was not released in 2019, <a href=\"https://wordpress.org/plugins/give/\">GiveWP</a> is the most interesting plugin I have used this year.  It is a fundraising plugin that allows WordPress users to accept donations directly from their website.</p>\n\n\n\n<p>I worked with the plugin in two capacities this year.  The first was as a plugin developer who was building an integration between it and another plugin.  As a developer, I appreciated how well-written and well-documented the code was.  The team behind the plugin includes top-notch programmers.</p>\n\n\n\n<p>I also helped push a couple of friends to set it up for their projects.  Both were pleased with their experiences.</p>\n\n\n\n<h2>Top 10 Posts From 2019</h2>\n\n\n\n<p>The following posts are the most-commented posts of the year.  Loads of comments typically mean controversy around here, so this list may contain, more or less, the most controversial topics of the year.  Either way, there are some great discussions in some of the comment threads.</p>\n\n\n\n<ul><li><a href=\"https://wptavern.com/wp-taverns-new-design-no-more-wood-grain\">WP Tavern&rsquo;s New Design: No More Wood-Grain</a> <em>(91 comments, 32 likes)</em></li><li><a href=\"https://wptavern.com/jetpack-7-1-adds-feature-suggestions-to-plugin-search-results\">Jetpack 7.1 Adds Feature Suggestions to Plugin Search Results</a> <em>(76 comments, 8 likes)</em></li><li><a href=\"https://wptavern.com/gutenberg-one-year-later\">Gutenberg: One Year Later</a> <em>(75 comments, 29 likes)</em></li><li><a href=\"https://wptavern.com/pluginvulnerabilities-com-is-protesting-wordpress-org-support-forum-moderators-by-publishing-zero-day-vulnerabilities\">PluginVulnerabilities.com is Protesting WordPress.org Support Forum Moderators by Publishing Zero-Day Vulnerabilities</a> <em>(64 comments, 10 likes)</em></li><li><a href=\"https://wptavern.com/black-friday-banner-gone-wrong-advertising-in-free-plugins\">Black Friday Banner Gone Wrong: Advertising in Free Plugins</a> <em>(59 comments, 20 likes)</em></li><li><a href=\"https://wptavern.com/justin-tadlock-joins-wp-tavern\">Justin Tadlock Joins WP Tavern</a> <em>(52 comments, 45 likes)</em></li><li><a href=\"https://wptavern.com/yoastcon-overshadowed-by-twitter-storm-joost-de-valk-seo-industry-leaders-called-out-for-objectifying-women\">YoastCon Overshadowed by Twitter Storm: Joost de Valk, SEO Industry Leaders Called Out for Objectifying Women</a> <em>(37 comments, 5 likes)</em></li><li><a href=\"https://wptavern.com/wordpress-poised-to-begin-implementing-proposal-to-auto-update-older-sites-to-4-7\">WordPress Poised to Begin Implementing Proposal to Auto-Update Older Sites to 4.7</a> <em>(36 comments, 4 likes)</em></li><li><a href=\"https://wptavern.com/rebirth-of-creativity-gutenberg-and-the-future-of-wordpress-themes\">Rebirth of Creativity: Gutenberg and the Future of WordPress Themes</a> <em>(33 comments, 41 likes)</em></li><li><a href=\"https://wptavern.com/wordpress-5-3-kirk-released-brings-new-default-theme-editor-improvements-and-ui-tweaks\">WordPress 5.3 &ldquo;Kirk&rdquo; Released, Brings New Default Theme, Editor Improvements, and UI Tweaks</a> <em>(32 comments, 24 likes)</em></li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Dec 2019 21:06:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordPress Theme Review Team Announces Alpha Color Picker for the Customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96116\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wordpress-theme-review-team-announces-alpha-color-picker-for-the-customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5142:\"<img />Using the color picker in the customizer.\n\n\n\n<p>The WordPress Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/12/30/new-color-alpha-package-available/\">announced its color picker control</a> today.  The project is a single package that allows theme authors to include an advanced color control in the customizer.  The control allows users to select a hex color with an optional alpha channel to handle transparency.</p>\n\n\n\n<p>The color control is the fourth feature package released by the team in 2019.  The <a href=\"https://wptavern.com/justin-tadlock-proposes-idea-to-solve-common-theme-issues\">idea for feature packages</a> took off in June.  Feature packages are repositories for single features that theme authors may use in their themes.  Their purpose is to standardize common features so that developers do not have to <em>recreate the wheel</em>, so to speak.</p>\n\n\n\n<p>Arguably, the color control is the most complex package the team has built.  The bulk of the work was handled by feature packages lead, Ari Stathopoulos.  The project is available via its <a href=\"https://github.com/WPTRT/control-color-alpha\">GitHub repository</a> and <a href=\"https://packagist.org/packages/wptrt/control-color-alpha\">Packagist</a>.</p>\n\n\n\n<p>Officially, the team launched version 1.0 in October, but the project has undergone some changes since its release.  Initially, the project utilized the Iris color picker script included with WordPress.  However, the team ran into trouble making it work as they wanted with RGBA colors.  The team refactored the project to use <a href=\"https://casesandberg.github.io/react-color/\">React Color</a> instead.</p>\n\n\n\n<p>&ldquo;The main issue with this project was the thing that WordPress is most famous for &mdash; backward-compatibility,&rdquo; said Stathopoulos.  &ldquo;Compatibility is one of WP&rsquo;s greatest assets, but at the same time, a pain for developers. Things don&rsquo;t get updated because they need to work for plugin A/B/C that hasn&rsquo;t been updated in 6 years. So scripts like the Iris picker, things that were great half a decade ago, have been abandoned and are just dead weight. RGBA support could easily have been in WP core&rsquo;s picker.  There was always a demand for it.  But it never happened.&rdquo;</p>\n\n\n\n<p>The team decided to move forward without relying on past solutions.   Stathopoulos said the biggest hurdle with building the control to use React Color was making it look native to WordPress.  He described the project as an example for others to see that it was possible to use React in the customizer.</p>\n\n\n\n<p>Setting up the control with the basics is relatively easy.  Theme authors should be able to quickly integrate it into their themes by following the <a href=\"https://github.com/WPTRT/control-color-alpha/blob/v1.1.2/README.md#usage\">usage instructions</a>.  Color data is stored as a hex value (e.g., <code>#000000</code>) if there is no transparency or as a RGBA value (e.g., <code>rgba(0,0,0,0)</code>) if there is.</p>\n\n\n\n<p>The control does come with more advanced features.  For example, it is possible to store color data as an array, which includes a slew of information, such as:</p>\n\n\n\n<ul><li>RGB (red, green, blue)</li><li>HSL (hue, saturation, lightness)</li><li>Alpha transparency</li><li>Hex</li><li>CSS value</li><li>Accessibility properties</li></ul>\n\n\n\n<p>The accessibility properties are interesting and may allow theme authors to help to ensure users choose colors that meet accessibility standards.  Some of the included data is the color&rsquo;s luminance, contrast with white and black, max contrast color, and more.</p>\n\n\n\n<h2>The Future of Feature Packages</h2>\n\n\n\n<p>Currently, the TRT&rsquo;s feature packages are not widely adopted by theme authors.  The overall project is still in its infancy.  In the wake of the news that WordPress will be moving toward full-site editing, the team is not sure what that will mean for the project going forward.</p>\n\n\n\n<p>Stathopoulos said that some theme authors are hesitant to do big things at the moment.  It&rsquo;s a tough sell to get developers on board when the future of theme development is in a holding pattern, waiting for the other Gutenberg shoe to drop.</p>\n\n\n\n<p>&ldquo;We&rsquo;ve been discussing and thinking of what packages we should build,&rdquo; said Stathopoulos.  &ldquo;The problem is that the editor is the centerpiece of WordPress.  Everything else just surrounds the editor.  Gutenberg is expanding, and it looks like it&rsquo;s taking over everything else in WordPress. So we think the next packages should be around the editor too.&rdquo;</p>\n\n\n\n<p>He said some of the initial package ideas like a standardized hook system, more customizer controls, and accessible menus may not be the best route.  Those ideas may not make sense in the context of a block-editing world.  The team could see the launch of such packages dead on arrival.</p>\n\n\n\n<p>&ldquo;It&rsquo;s a tricky, transitional period for themes and theme developers,&rdquo; said Stathopoulos.  &ldquo;We all need to learn how to better leverage the editor.&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Dec 2019 20:28:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: What Should an Author Bio Block Look Like?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=96070\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/what-should-an-author-bio-block-look-like\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6173:\"<img />Two author bio block mock-ups compared.\n\n\n\n<p>Joshua Wold, co-representative for the WordPress design team, <a href=\"https://make.wordpress.org/design/2019/12/23/author-card-block-exploration/\">shared an early exploration</a> of an author card block.  Community members explored several ideas at the design table during the contributor day at WordCamp US 2019.  In the post, Wold followed up on the original sketches from that melding of design minds.</p>\n\n\n\n<p>The original idea for the author block was a <a href=\"https://github.com/WordPress/gutenberg/issues/1844\">GitHub ticket</a> created in July 2017, but it was far ahead of its time.  The Gutenberg project needed to focus on the basics and more common blocks for post content at that point.  Now is the time to shift gears and begin work on these more complex blocks that will likely be a large part of the full-site editing phase of the project.</p>\n\n\n\n<p>Currently, there are several proposed components to the author block:</p>\n\n\n\n<ul><li>Image/Avatar</li><li>Name</li><li>Description/Biography</li><li>Website Link</li><li>Social Network Links</li><li>Recommended Posts</li></ul>\n\n\n\n<p>I am on the fence about a recommended posts option as part of the block.  If they were recommended posts written by that author, it could be an interesting concept to explore.  However, version 1 of the block should focus on the most common elements, which the other components in the list cover.</p>\n\n\n\n<p>Wold asked four key questions about the future of the block.  The following are my responses to each.</p>\n\n\n\n<h2>What Is the Value of the Block and How Will It Be Used?</h2>\n\n\n\n<p>Coming from the theme world, what surprises me is that WordPress has never standardized on this feature at this point.  Author bio sections are commonplace in theme development.  Core should have standardized this feature years ago.  We have a standard search form, comment list, featured image, and more.  Many of the features that WordPress has standardized over the years were born out of theme designers carving the path forward, and author bios are no different.</p>\n\n\n\n<p>It has long made sense for an author bio template tag to exist.  However, we are living in a block world.  The concept has merely shifted.</p>\n\n\n\n<p>We do not need an author bio block today.  We will need it tomorrow.  As we shift closer and closer to full-site editing, we need to be building, iterating, and testing these types of blocks in preparation for the point of no return.  This block, along with similar blocks, should drop in core at the same time the switch is flipped on full-site editing.</p>\n\n\n\n<p>The primary use case will be for end-users to edit their theme&rsquo;s block templates to stick the author bio at the end of their single post views.  However, such a block need not be limited to that scenario.  Users could create a &ldquo;team&rdquo; or &ldquo;authors&rdquo; page on their site.  Some may want to drop these into columns or create some sort of gallery of author bios.</p>\n\n\n\n<p>I could see taking this even further and naming it a &ldquo;user bio&rdquo; block.  Use cases do not have to be centered around the concept of an author.</p>\n\n\n\n<h2>Where Should the Author Data Come From?</h2>\n\n\n\n<p>The primary, or at least initial, source of data should come from user data and metadata stored in the database.  It does not make sense to duplicate efforts by retyping content within the block if it already exists.</p>\n\n\n\n<p>One big question will be around social icons.  If these are a part of the block, there is no current source to pull the URLs from.  If automatically generating the data, WordPress will need to add social media contact methods to the user profile screen in the admin.  That can be a slippery slope when deciding which social networks to include.  However, core WordPress could stick to three or four major networks and provide a filter hook for plugin authors to utilize along with a standard for how additional fields are handled.</p>\n\n\n\n<p>There is also the possibility that this block could simply be a pre-defined pattern of existing, smaller blocks that pulled in data like a user biography, user social icons, and user avatar.  Then, the site owner could move other blocks in and out as they saw fit.</p>\n\n\n\n<h2>What Block Design Options Should Be Available?</h2>\n\n\n\n<p>The obvious design options are the standard text color, background color, and font size options.  <a href=\"https://github.com/WordPress/gutenberg/issues/16848\">Border design options</a> would be a bonus, but that goes beyond the scope of this specific block.</p>\n\n\n\n<p>The standard alignment options would be welcome, particularly center, wide, and full.  An alignment option for the avatar image to shift it left or right could also be useful.  It could work similarly to the existing Media &amp; Text core block.</p>\n\n\n\n<p>I would not go overboard with design options.  Let theme authors create custom block styles for users to choose from.  That is the theme author&rsquo;s job.</p>\n\n\n\n<h2>What Additional Features Should the Block Handle?</h2>\n\n\n\n<p>Outside of an avatar and biography, a social icon list is the most necessary feature.  It is almost ubiquitous with author bio boxes.</p>\n\n\n\n<p>What I would like to see is an author/user &ldquo;gallery&rdquo; block that builds upon this initial idea.  At the moment, I am already imagining the painful user experience of creating a team page and putting individual user bio blocks into columns.  Then, I am further imagining having to update that page and potentially move columns around.  As an end-user, there are times when I want to micro-manage certain aspects of my site.  This would not be one of them.  Just give me a simple block to list user bios in some sort of columnized format.</p>\n\n\n\n<p>Such a block could provide an avenue for many types of options.  Maybe an option to list authors of a certain post type.  Perhaps an option to list users by role.  Or, let me list the top users by post count.</p>\n\n\n\n<p>This idea may be pushing over into plugin territory.  However, in terms of what I would want to do with my sites, this would be high on the list.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Dec 2019 20:00:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Joseph: 2020 Style\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://blog.josephscott.org/?p=17917\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://blog.josephscott.org/2019/12/27/2020-style/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:951:\"<p>With the year 2020 fast approaching, I thought it would be a good time to change up the style on <a href=\"https://blog.josephscott.org/\">blog.josephscott.org</a>.  To that end, I&#8217;m trying out the <a href=\"https://wordpress.org/themes/twentytwenty/\">Twenty Twenty WordPress theme</a>.</p>\n<a href=\"https://blog.josephscott.org/wp-content/uploads/2019/12/screenshot-blog-josephscott-org.png\"><img src=\"https://blog.josephscott.org/wp-content/uploads/2019/12/screenshot-blog-josephscott-org-450x1024.png\" alt=\"\" width=\"450\" height=\"1024\" class=\"size-large wp-image-17932\" /></a>blog.josephscott.org\n<p>One of the things I&#8217;m really happy to see in the Twenty Twenty theme is the use of <a href=\"https://github.com/WordPress/twentytwenty/pull/163\">vanilla JavaScript, without jQuery</a>.  I&#8217;m hopeful that more WordPress themes will follow that pattern ( jQuery has been great, but if you don&#8217;t need it, don&#8217;t use it ).</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Dec 2019 18:02:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"josephscott\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Rank Math SEO Plugin Adds WordPress Block Editor Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95921\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/rank-math-seo-plugin-adds-wordpress-block-editor-support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5310:\"<p>The team behind the <a href=\"https://wordpress.org/plugins/seo-by-rank-math/\">Rank Math SEO plugin</a> released an update that includes full support for the block editor on December 18.  The update includes around two dozen features, improvements, and fixes.  The biggest feature update was the inclusion of a new plugin sidebar for the block editor.</p>\n\n\n\n<p>Some of the new features include a filter for unlimited focus keywords, an email notification each time the plugin is automatically updated, and a warning when using the review Schema type.  It also improved compatibility with the Elementor plugin&rsquo;s sitemap module and added Advanced Custom Fields integration to the sidebar.  A full list of features is available in the plugin&rsquo;s <a href=\"https://rankmath.com/changelog/\">public change log</a>.</p>\n\n\n\n<p>The team has a <a href=\"https://s.rankmath.com/demo\">public demo available</a> for end-users to test the plugin without having to install it on their sites.</p>\n\n\n\n<p>Bhanu Ahluwalia, co-founder and CMO at Rank Math, said that everyone on the team had been experimenting with the Gutenberg plugin since the first beta was released.  &ldquo;We had some experience with Gutenberg, but working on Rank Math has taught us so many things and helped us on so many levels,&rdquo; he said.</p>\n\n\n\n<p>It was not always a smooth journey.  Ahluwalia said the team wanted to keep the plugin lightweight and not sacrifice speed with new technologies.  &ldquo;We had to learn React, Webpack, ES6, etc.,&rdquo; he said.  &ldquo;In essence, we had to re-learn patterns, practices, and pitfalls of Gutenberg, and we had to do it all with little-to-no documentation available. We had to dive deep into the code and get ourselves familiar with every line of code to ensure nothing interfered with the existing functions of our plugin.&rdquo;</p>\n\n\n\n<h2>Testing the Block Editor Sidebar</h2>\n\n\n\n<img />Rank Math sidebar as seen in the block editor.\n\n\n\n<p>Immediately upon activating the update, I noted the Rank Math button at the top right of the editor.  Admittedly, I was not happy with the space the button took up or its difference in design when compared to other plugin sidebar buttons.  Instead of a simple icon, the button includes both an icon and an SEO score.  As more and more plugins and themes begin adding sidebars of their own, this space could become cluttered quickly.  I would like to see this scaled back to simply be an icon and not take up precious screen real estate.</p>\n\n\n\n<p>The plugin manages to pack a ton of options and information into a tight spot.  Once viewing the plugin sidebar, it presents four sub-tabs (General, Advanced, Schema, and Social), each with custom panels or sections.  While I am not generally a fan of complex SEO plugins and prefer solutions such as <a href=\"https://wptavern.com/slim-seo-keeps-options-simple-and-handles-the-legwork-of-seo\">Slim SEO</a>, the plugin handles the interface gracefully.</p>\n\n\n\n<p>In comparison to the old meta boxes, the interface is a huge step up.  The meta box system used in previous versions of the plugin or with the current Classic editor is cumbersome at best.  The team had to get more creative to pull off a solution for the sidebar, which forced them to tighten up the interface.</p>\n\n\n\n<p>Not all users were happy with the <a href=\"https://wordpress.org/support/topic/sidebar-really/\">narrow space</a> provided by the new sidebar.  The Rank Math team was ahead of the game and included a <a href=\"https://rankmath.com/kb/filters-hooks-api-developer/#disable-gutenberg-sidebar\">filter hook to disable</a> this feature.  Disabling will return the old-style meta box at the bottom of the post-editing area.</p>\n\n\n\n<p>&ldquo;Supporting both the Classic Editor and Gutenberg at once with a single plugin is hectic to say the least,&rdquo; said Ahluwalia. &ldquo;We would rather put our energy into a single editing experience, but seeing how WordPress is evolving after Gutenberg, we have to double our efforts to offer a consistent user experience.&rdquo;</p>\n\n\n\n<p>At the moment, the team plans to continue supporting the classic editor until at least 2022.  &ldquo;Depending on the user feedback and the acceptance of the Classic editor, we can continue to support it even further,&rdquo; said Ahluwalia.</p>\n\n\n\n<p>The Rank Math also team shared a video of block editor support on Twitter:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">&#127881; Here\'s a sneak preview of Rank Math\'s upcoming major update which adds <a href=\"https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw\">#Gutenberg</a> support &ndash; now it\'s even easier for people using the latest version of <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> to use Rank Math <a href=\"https://twitter.com/hashtag/SEO?src=hash&ref_src=twsrc%5Etfw\">#SEO</a> &#128285;<br /><br />Want to take the Beta for a spin now? Join us on Facebook<a href=\"https://t.co/Ykfhj2d5Z1\">https://t.co/Ykfhj2d5Z1</a> <a href=\"https://t.co/E1ItpD0b4B\">pic.twitter.com/E1ItpD0b4B</a></p>&mdash; Rank Math SEO (@rankmathseo) <a href=\"https://twitter.com/rankmathseo/status/1198226289129189376?ref_src=twsrc%5Etfw\">November 23, 2019</a></blockquote>\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Dec 2019 19:53:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"BuddyPress: BuddyPress 5.1.1 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=309527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://buddypress.org/2019/12/buddypress-5-1-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1122:\"<p><a href=\"https://downloads.wordpress.org/plugin/buddypress.5.1.1.zip\">BuddyPress 5.1.1</a> is now available. This is a security release. All BuddyPress installations are strongly encouraged to upgrade as soon as possible.</p>\n\n\n\n<p>The 5.1.1 release addresses one security issue:</p>\n\n\n\n<ul><li>A denied of service was fixed that could allow a logged in user to remove another user&#8217;s avatar and also any empty folder. Discovered by <a href=\"https://hackerone.com/nomnom\">nomnom</a>.</li></ul>\n\n\n\n<p>Thi vulnerability was reported privately to the BuddyPress team, in accordance with&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">WordPress’s security policies</a>. Our thanks to the reporter for practicing coordinated disclosure.</p>\n\n\n\n<p>For complete details, visit the&nbsp;<a href=\"https://codex.buddypress.org/releases/version-5-1-1/\">5.1.1 changelog</a>.</p>\n\n\n\n<p>Update to BuddyPress 5.1.1 today in your WordPress Dashboard, or by&nbsp;<a href=\"https://wordpress.org/plugins/buddypress/\">downloading from the WordPress.org plugin repository</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Dec 2019 09:45:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mathieu Viet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Version 1 Prototype of the WordPress Admin Block Directory Announced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95946\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/version-1-prototype-of-the-wordpress-admin-block-directory-announced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7139:\"<p>Mel Choyce-Dwan shared the first version of the <a href=\"https://make.wordpress.org/design/2019/12/19/block-directory-in-wp-admin-v1/\">WordPress admin block directory prototype</a> the design team has been working on.  The goal is to bring the block directory to the admin in WordPress 5.5, which is currently <a href=\"https://wptavern.com/progress-on-wordpress-2019-projects-sets-2020-roadmap\">set for August 2020 on the roadmap</a>.  The post also outlines reusable components that can be used in other areas of the admin in the long term.</p>\n\n\n\n<p>The <a href=\"https://www.figma.com/proto/Y4jCNPkjCuSRiGYEoaAZujhm/Gutenberg-Block-Directory-wp-admin?node-id=1460%3A277&viewport=366%2C373%2C0.25&scaling=min-zoom\">Figma prototype</a> is available for those who want to give it a test run.  It is important to remember that this is an early version and many things can change by the time the block directory lands in WordPress.</p>\n\n\n\n<p>The prototype was built after feedback from the <a href=\"https://make.wordpress.org/design/2019/07/11/block-directory-in-wp-admin-concepts/\">first round of concepts shared</a> in July on the Make Design blog.</p>\n\n\n\n<p>For this admin project to be successful, WordPress plugin developers will need to start submitting blocks to the <a href=\"https://wordpress.org/plugins/browse/block/\">block directory</a> on WordPress.org.  At the moment, there are only 10 blocks listed.  Getting in early will give block authors an edge on the competition.  The block directory has a few <a href=\"https://make.wordpress.org/meta/2019/12/06/block-directory-plugin-guidelines/\">additional guidelines</a> beyond normal plugins that authors should review.</p>\n\n\n\n<h2>About Blocks Screen</h2>\n\n\n\n<img />About Blocks admin screen.\n\n\n\n<p>The About Blocks screen is the primary blocks admin screen.  It appears to be an informational page with resources for users to learn more about using blocks on their sites.  It also has links to development resources for designing and building blocks.  </p>\n\n\n\n<p>Making this information directly available, especially to users, would be a smart decision if it makes it into the final design.  As we move toward an entirely new way to build websites with WordPress, it is important to provide learning tools to users.  This seemed to be one of the missing components when the block editor first launched in core.  If done right, it could ease the burden on new users and old users who are transitioning to the new editor.</p>\n\n\n\n<p>The above screenshot also shows the new admin screen header proposal.  The page title is followed by a short description of what the screen is about.  Followed the intro are action links on the left and meta-type links on the right.  I am a fan of the generous use of whitespace and extra information.</p>\n\n\n\n<h2>Add Blocks Screen</h2>\n\n\n\n<img />Add Blocks screen.\n\n\n\n<p>The <a href=\"https://www.figma.com/proto/Y4jCNPkjCuSRiGYEoaAZujhm/Gutenberg-Block-Directory-(wp-admin)?node-id=1460%3A2958&viewport=366%2C373%2C0.25&scaling=min-zoom\">add blocks screen</a> is similar to the current new plugin screen in the WordPress admin.  The primary &ldquo;Featured&rdquo; tab (the tab opened when first visiting the screen) is broken down into various sections, such as &ldquo;Blocks We Love&rdquo; and &ldquo;Popular Tags.&rdquo;</p>\n\n\n\n<p>One of the more interesting sections of this page is the &ldquo;Top Authors&rdquo; list.  This concept would be a great way to give recognition to block authors who are building useful blocks for the community.</p>\n\n\n\n<p>There is also a &ldquo;Recent Blocks&rdquo; section near the bottom of the page.  I would rather see a top tab for that.  It feels a bit buried in the current design.  New plugin and theme authors already struggle to break into popular lists.  Recently-added blocks should be higher up the page or have a dedicated tab/page to showcase them a bit more.</p>\n\n\n\n<h2>Installed Blocks Screen</h2>\n\n\n\n<img />Installed Blocks screen.\n\n\n\n<p>The <a href=\"https://www.figma.com/proto/Y4jCNPkjCuSRiGYEoaAZujhm/Gutenberg-Block-Directory-(wp-admin)?node-id=1460%3A2958&viewport=366%2C373%2C0.25&scaling=min-zoom\">block installation screen</a> is similar to the existing installed plugins screen in core and lists all of the blocks that are installed.  There are also active and inactive tabs.  Improvements here are primarily around list table design.  On the whole, they are minor adjustments, but the look of the tables is much nicer.  <em>Can we have this in core, across the board, now?</em></p>\n\n\n\n<p>A new element is the &ldquo;Instances&rdquo; column, which lists the number of times a block has been used on the site.  By clicking the number, you are taken to a new screen that lists the posts the block has been used in.  It also displays the instances for each post.  This would be a useful feature for deciding whether to deactivate or remove a block.</p>\n\n\n\n<p>Side note to this:  I have worked on numerous projects in the past where I was doing cleanup and attempting to figure out if a plugin, especially those with shortcodes, were in use on the site.  Showing the instances count for blocks is brilliant.</p>\n\n\n\n<h2>Manage Blocks Screen</h2>\n\n\n\n<img />Manage Blocks screen.\n\n\n\n<p>Plugins such as <a href=\"https://wordpress.org/plugins/block-options/\">EditorsKit</a> have had built-in block management for a while.  However, this feature feels like it should be in core WordPress.  There are numerous core blocks that some users will likely never use.  Having the ability to hide them from the block inserter will reduce clutter and make it easier to find the blocks they need.</p>\n\n\n\n<p>The <a href=\"https://www.figma.com/proto/Y4jCNPkjCuSRiGYEoaAZujhm/Gutenberg-Block-Directory-(wp-admin)?node-id=1460%3A14224&viewport=366%2C373%2C0.25&scaling=min-zoom\">block management screen</a> will allow users to activate or deactivate any specific block on their website.  Like the block installation screen, it also displays the number of instances a block is in use.</p>\n\n\n\n<h2>Reusable Blocks Screen</h2>\n\n\n\n<img />Reusable Blocks screen.\n\n\n\n<p>The <a href=\"https://www.figma.com/proto/Y4jCNPkjCuSRiGYEoaAZujhm/Gutenberg-Block-Directory-(wp-admin)?node-id=1460%3A15861&viewport=366%2C373%2C0.25&scaling=min-zoom\">reusable blocks screen</a> is already available in WordPress.  It does not currently have an admin menu link, so it is not easily discoverable.  You can view it by going to the <code>yoursite.com/wp-admin/edit.php?post_type=wp_block</code> URL or clicking the &ldquo;Manage All Reusable Blocks&rdquo; link under the &ldquo;Reusable&rdquo; tab in the block inserter.</p>\n\n\n\n<p>This screen allows users to manage blocks that are stored for reuse within multiple posts.  Like the installation and management screens, the prototype displays an instances column for tracking how often the block has been used.</p>\n\n\n\n<p>Users can import and export reusable blocks.  It will be interesting to see if more WordPress users start sharing their block creations with others once this screen has better exposure or if it will be something people simply use to copy blocks from site to site.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Dec 2019 21:09:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WPTavern: WordPress 5.3.2 Addresses a Handful of Bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95927\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/wordpress-5-3-2-addresses-a-handful-of-bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2810:\"<p>On December 18, less than a week since <a href=\"https://wptavern.com/wordpress-5-3-1-includes-security-and-bug-fixes-accessibility-enhancements-and-twenty-twenty-changes\">WordPress 5.3.1 security update</a> shipped to the masses, the core team dropped a <a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\">version 5.3.2 maintenance release</a>.  No security issues were named in this update.  Instead, 5.3.2 addresses a couple of high-priority bugs along with a few other issues.</p>\n\n\n\n<p>Users with automatic updates enabled should already be updated to the latest version or will receive an update soon.  Other users should update as soon as they are able, especially if their installation is affected by any of the following issues.</p>\n\n\n\n<p>The first high-priority fix addressed an issue with modified post objects that have an invalid date.  The fix ensures that the <code>get_feed_build_date()</code> function handles this scenario.  The documentation was updated to clarify the function will return <code>false</code> on failure.  This change also led to a comparison-check fix in the test tools when inserting a post with a future or published status.</p>\n\n\n\n<p>The second major bug fixed in 5.3.2 was an edge case where unique file names could clash.  On case-sensitive systems, the <code>wp_unique_filename()</code> function failed to rename some files when the uploaded file matched an existing file with an uppercase file extension.  The fix addresses a fatal error in those cases.</p>\n\n\n\n<p>Developers tackled another issue with the <code>wp_unique_filename()</code> function.  When a destination directory for an uploaded file was unreadable, WordPress was throwing PHP warnings.  The fix includes only running the final filename-collision test for files that are saved to the user&rsquo;s <code>/uploads</code> directory.</p>\n\n\n\n<p>Building off the accessibility work in the previous release, buttons with the <code>.active</code> class are now properly styled in the non-default admin color schemes.  On some screens, particularly the Permalinks admin screen, active buttons had white text on a light gray background, making them unreadable.</p>\n\n\n\n<p>Users who wish to do so, can <a href=\"https://wordpress.org/support/wordpress-version/version-5-3-2/\">view the full release documentation</a> from WordPress.</p>\n\n\n\n<p>With the widespread usage of automatic updates, it would be nice to see more of these quicker releases during the development cycle.  Maybe weekly releases are a bit much.  However, shipping a few extra minor releases between major upgrades would be a good opportunity to knock out some of the 6,500 Trac tickets on <a href=\"https://wptavern.com/progress-on-wordpress-2019-projects-sets-2020-roadmap\">WordPress&rsquo; 2020 roadmap</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Dec 2019 00:19:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress.org blog: WordPress 5.3.2 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8275\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/12/wordpress-5-3-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2828:\"<p>WordPress 5.3.2 is now available!</p>\n\n\n\n<p>This maintenance release features 5 fixes and enhancements.</p>\n\n\n\n<p>WordPress 5.3.2 is a short-cycle maintenance release. The next major release will be&nbsp;version 5.4.</p>\n\n\n\n<p>You can download WordPress 5.3.2 by clicking the button at the top of this page, or visit your<strong>&nbsp;Dashboard → Updates</strong>&nbsp;and click&nbsp;<strong>Update Now</strong>.</p>\n\n\n\n<p>If you have sites that support automatic background updates, they’ve already started the update process.</p>\n\n\n\n<h2>Maintenance updates</h2>\n\n\n\n<p>Shortly after&nbsp;<a href=\"https://wordpress.org/news/2019/12/wordpress-5-3-1-security-and-maintenance-release/\">WordPress 5.3.1 was released</a>, a couple of high severity Trac tickets were opened. The Core team scheduled this quick maintenance release to resolve these issues.</p>\n\n\n\n<p>Main issues addressed in 5.3.2:</p>\n\n\n\n<ul><li>Date/Time: Ensure that&nbsp;<code>get_feed_build_date()</code>&nbsp;correctly handles a modified post object with invalid date.</li><li>Uploads: Fix file name collision in&nbsp;<code>wp_unique_filename()</code>&nbsp;when uploading a file with upper case extension on non case-sensitive file systems.</li><li>Media: Fix PHP warnings in&nbsp;<code>wp_unique_filename()</code>&nbsp;when the destination directory is unreadable.</li><li>Administration: Fix the colors in all color schemes for buttons with the&nbsp;<code>.active</code>&nbsp;class.</li><li>Posts, Post Types: In&nbsp;<code>wp_insert_post()</code>, when checking the post date to set&nbsp;<code>future</code>&nbsp;or&nbsp;<code>publish</code>&nbsp;status, use a proper delta comparison.</li></ul>\n\n\n\n<p>For more information,&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&type=!task+(blessed)&resolution=fixed&milestone=5.3.2&col=id&col=summary&col=owner&col=type&col=priority&col=component&col=version&order=priority\">browse the full list of changes on Trac</a>&nbsp;or check out the&nbsp;<a href=\"https://wordpress.org/support/wordpress-version/version-5-3-2/\">version 5.3.2 HelpHub documentation page</a>.</p>\n\n\n\n<h2>Thanks!</h2>\n\n\n\n<p>Thank you to everyone who contributed to WordPress 5.3.2:</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion hulse</a>, <a href=\"https://profiles.wordpress.org/eden159/\">eden159</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Dec 2019 22:42:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: One-Time vs. Recurring Payments for WordPress Products\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95900\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/one-time-vs-recurring-payments-for-wordpress-products\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6248:\"<p>Jeff Starr posed the question at Digging into WordPress: <a href=\"https://digwp.com/2019/12/pricing-model-better/\">Which Pricing Model Do You Prefer: One-Time or Recurring?</a></p>\n\n\n\n<p>It is not the first time the question has been asked in the WordPress community and will not be the last.  It is important that we keep coming back to it from time to time.</p>\n\n\n\n<p>In the early days of the commercial WordPress ecosystem, many shops sold products for a one-time fee.  This was particularly true during the 2007-2010 years, which were what many dub the &ldquo;WordPress themes heyday,&rdquo; a period in which theme shops raked in tons of cash due to lack of competition.</p>\n\n\n\n<p>As the market became more saturated, many businesses saw the writing on the wall.  One-time fees for commercial themes or plugins did not make for a sustainable business model.  Of course, some companies pushed forward with that model.  They were either large enough to capitalize on an influx of new customers every year or they continued to push out new products for existing customers to buy.</p>\n\n\n\n<p>Today, most theme and plugin shops utilize a recurring business model.  Many of those shops also set up automatic renewals.  From a business perspective, companies need to keep existing customers while bringing in new buyers to continue maintaining, supporting, and building new features for the current product catalog.  Companies also need growth to build new products.  A recurring fee helps ease the burden of supporting and maintaining the existing products.</p>\n\n\n\n<p>Pippin Williamson <a href=\"https://pippinsplugins.com/automatic-license-renewals-twenty-months-later/\">saw massive revenue growth</a> over 20 months after turning on automatic renewals across his company&rsquo;s various products.  Other companies have seen similar increases with the same model.</p>\n\n\n\n<p>As a former business owner, I <em>dumb-lucked</em> my way into yearly, recurring payments.  When I first launched a theme shop in 2008, that was the model I went with.  I did not know a single thing about running a business except that money exchanged hands.  I was in my early 20s and accustomed to living off minimum wage, digging change from the couch to buy a value meal, and finding creative ways &mdash; short of dumpster diving &mdash; to scrape by.  Anything better than that was a success for me.  Recurring payments just made sense, especially because I was vastly undercutting my competitors in price.  That one decision helped sustain my business for many years.  In hindsight, I would not have had the little success I had with a single-payment model because I never brought in enough new customers.</p>\n\n\n\n<p>Having worked on the business end of WordPress for over a decade and being a member of the community for even longer, it is easy for me to say most companies should use a recurring business model.</p>\n\n\n\n<p>However, as a software customer in general, I have not always maintained that mindset.  There are many pieces of software that I loathe paying for each year.  This was particularly true before running a business that dealt with software.  There is a part of me that feels some shame for disliking the recurring model with non-WordPress software.  Those businesses need to pay their employees and afford to continue making the product better.</p>\n\n\n\n<p>On the other hand, there is always that part of me that simply wants to pay for something once and always have access to it.  Perhaps I am a product of my culture.  Software is unlike other art forms where Version 1.0 is the finished product.  Customers do not always see the work that goes on to maintain, support, and continue building a product.  That is certainly true when I look at non-WordPress software.</p>\n\n\n\n<p>For WordPress products, I am always more than happy to pay a recurring fee because I have been on the other side.  I also get to talk with others every day who are trying to run their own companies.  That human variable in the equation changes how I view software in the WordPress ecosystem in a way that is much harder with other software.</p>\n\n\n\n<h2>A Middle Ground</h2>\n\n\n\n<p>Starr pointed out a middle-of-the-road option that few WordPress companies take but is often the model used for other software products.  Major releases of software carry an upgrade fee while minor and patch releases are included with the initial purchase.  Often, major software releases have years in between.  Customers may not feel like they are constantly having to pay for updates in this system.  Major upgrades also mean feature upgrades.  Features are what sell the product to the average end-user.</p>\n\n\n\n<p><a href=\"https://www.literatureandlatte.com/scrivener/overview\">Scrivener</a>, a writing program for authors, uses this model.  Instead of having to pay yearly, I can upgrade to the new, shiny version when it drops with loads of features.  As a customer, I feel like I am getting something tangible when forking over the cash for an update.</p>\n\n\n\n<p>Perhaps I am happy to continue paying for software that helps me pursue my lifelong dream of becoming a novelist.  Perhaps the company simply knows how to sell to its customer base.  Either way, it is one piece of software that I have never complained about renewing.</p>\n\n\n\n<h2>What is the Best Option?</h2>\n\n\n\n<p>To answer the question posed by Starr, I will always prefer a one-time fee as a customer simply because it is in my nature to want to pay the least amount I can for anything.  However, I would prefer most WordPress businesses to go with whatever model is most sustainable for their specific business.  We are all in this boat together, and I wish growth for the ecosystem.</p>\n\n\n\n<p>One of the missing pieces with many WordPress plugin and theme shops is that they need to find creative ways to sell the customer on coming back.  Support and maintenance can be eye-catching for agencies and freelancers, but they are not always selling points for the average consumer after that initial purchase.</p>\n\n\n\n<p>Right now, there is a sense of complacency as WordPress-related businesses have stuck with similar recurring options over the last several years.  It might be time for someone to shake things up.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Dec 2019 20:37:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: Bluehost Launches Premium WordPress Theme Marketplace to Customers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95726\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://wptavern.com/bluehost-launches-premium-wordpress-theme-marketplace-to-customers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5675:\"<img />Screenshot of the Bluehost Marketplace from the customer dashboard.\n\n\n\n<p>In November, web hosting provider Bluehost <a href=\"https://www.bluehost.com/blog/bluehost-news/introducing-wordpress-themes-to-the-bluehost-marketplace-12981/\">launched a WordPress plugin and theme marketplace</a>.  The company integrated with <a href=\"https://www.mojomarketplace.com/\">MOJO Marketplace</a> to provide access to WordPress products via its customer dashboard.  Currently, the marketplace is open to third-party theme developers.  Plugin authors will have to wait, but they will eventually be able to sell their plugins through the Bluehost Marketplace.</p>\n\n\n\n<p>By integrating with MOJO Marketplace, much of the existing infrastructure and products are already in place.  Bluehost can simply offer the products to its customers through a custom-built interface and provide MOJO sellers with another avenue for distribution.</p>\n\n\n\n<p>The idea behind the marketplace is for Bluehost&rsquo;s customers to be able to build their websites without ever leaving their control panel.  &ldquo;Ultimately, we are trying to save customers time and energy from having to hunt for these things themselves and instead work within the dashboard to find the themes and plugins that are best fit for their site,&rdquo; said Suhaib Zaheer, general manager for Bluehost.</p>\n\n\n\n<p>&ldquo;Our native marketplace also provides our customers with the ability to automatically install the themes and plugins they have purchased, reducing the amount of time and number of steps required to get their site appearance and functionality up and running,&rdquo; he said.</p>\n\n\n\n<p>The Bluehost Marketplace currently has over 900 themes and 18 WooCommerce plugins for customers to choose from.  The themes are all viewable via the <a href=\"https://www.mojomarketplace.com/themes/wordpress\">WordPress themes page</a> on the MOJO website.  All themes uploaded by sellers go through a manual review process by the Bluehost Marketplace team before approval.  This includes basic items like design quality, functionality, installation, and documentation.</p>\n\n\n\n<p>There is also a &ldquo;Bluehost Certified&rdquo; filter available to users who want to use themes that have been further tested for quality control.  &ldquo;We conduct additional reviews to certify themes for our Bluehost Certified category on a quarterly basis,&rdquo; said Zaheer .</p>\n\n\n\n<p>There appear to be 85 themes that are Bluehost Certified based on a screenshot acquired of the marketplace.  However, that number is not verified.  The MOJO Marketplace page does not appear to have a filter to view these, but it is available to users of Bluehost&rsquo;s hosting service.</p>\n\n\n\n<h2>Selling on the Bluehost Marketplace</h2>\n\n\n\n<p>Theme developers who want to sell themes via Bluehost can apply through <a href=\"https://mojosupport.zendesk.com/hc/en-us/categories/200823136-Sellers\">MOJO Marketplace</a>.  Authors should note that they would like to be Bluehost Certified.  </p>\n\n\n\n<p>Theme sellers who want to get certification must meet the <a href=\"https://my.bluehost.com/hosting/help/certified-wordpress-themes\">Bluehost Certified guidelines</a>.  Some are fairly normal and would be expected in today&rsquo;s market such as responsiveness, browser compatibility, fast load times, and active support from the author.</p>\n\n\n\n<p>Others are a bit of a head-scratcher.  </p>\n\n\n\n<p>Certification requires that themes support page builders.  It&rsquo;s unclear which page builders need to be supported and what level of support is necessary.  Ideally, this would be the other way around.  Page builders should be built in such a way that they do not need theme-specific support.</p>\n\n\n\n<p>Demo content is required.  It is not clear if the requirements simply mean to provide an installable XML file with demo content or for the theme to output demo content in the absence of user content.  Based on the description, it seems like the latter.  If so, I would not want any part of that as a potential theme author.  I could see requiring the use of the WordPress starter content feature in this case but nothing more.</p>\n\n\n\n<p>The requirements also list &ldquo;plugins supported&rdquo; with no additional description.  <em>Good luck to theme authors figuring out exactly what that means.</em></p>\n\n\n\n<p>Bluehost needs to make its Bluehost Certified page more detailed to be attractive to potential theme authors.  There are far too many unanswered questions.</p>\n\n\n\n<p><a href=\"https://mojosupport.zendesk.com/hc/en-us/articles/115001076306-Commission-Rates\">Commission rates</a> are the same rates as other themes on the MOJO Marketplace.  Themes sold exclusively through the marketplace earn between 50% and 70% based on the number of sales.  Non-exclusive theme commissions are at a flat rate of 50%.  Both exclusive and non-exclusive authors can distribute their themes through the Bluehost Marketplace.</p>\n\n\n\n<p>&ldquo;Theme sellers are welcome to set the price of their item,&rdquo; said Zaheer.  &ldquo;However, we recommend they stay within $49-$69 range. If the review team does not feel the price is uniform with other themes in the same category, they will request a price change in order to be sold on the Marketplace.&rdquo;</p>\n\n\n\n<p>The pricing recommendation seems to be a bit on the low end, but it is consistent with the theme industry&rsquo;s race to the bottom.  Quality theme work should be at least double.</p>\n\n\n\n<p>Fortunately for theme authors, pricing is based on yearly renewals.  They are required to offer technical assistance within 24-48 hours while a user&rsquo;s yearly support license is up to date.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Dec 2019 20:40:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress.org blog: State of the Word: the story of the slides\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=8233\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2019/12/state-of-the-word-the-story-of-the-slides/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8021:\"<p>During the State of the Word at WordCamp US 2019, Matt Mullenweg shared that Gutenberg was used to create his slides and the presentation was powered by the Slides plugin. Using WordPress to power a slide deck isn’t an obvious choice, so we wanted to showcase the process and give some tips for making slide layouts using Gutenberg.</p>\n\n\n\n<p><em>This post is co-written by Ella and <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie</a>, who (along with <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique</a>, <a href=\"https://profiles.wordpress.org/itsjonq/\">Q</a></em> <em>and a cast of supporters) helped create this year’s State of the Word slide deck.</em></p>\n\n\n\n<h2>How it Started</h2>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/ellatrix/\">Ella Van Durpe</a> was selected to speak at <a href=\"https://www.youtube.com/watch?v=ZNWNhUPrqB4\">JSConf</a> and ReactEurope and wanted slides for her presentation.&nbsp;</p>\n\n\n\n<p>In the past, she’d used Reveal.js to create slides and enjoyed the freedom to create anything using HTML, CSS and JavaScript. These languages were comfortable, familiar, and also can be published on the web in their native format.&nbsp;</p>\n\n\n\n<p>For these new presentations, she wanted to use Reveal.js again but didn’t feel like writing all the HTML by hand. Creating blocks of content visually, without having to actually write any code, which can be published natively to the web, is exactly what Gutenberg was built for.</p>\n\n\n\n<p>The plugin was prototyped quickly, with hardcoded styles on the slides and zero options. At the end of each presentation, Ella shared a brief demo of the Gutenberg-based slides and the audience was amazed.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">.<a href=\"https://twitter.com/ellatrx?ref_src=twsrc%5Etfw\">@ellatrx</a> any chance you might open source this? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> <a href=\"https://t.co/6hygMpBqUA\">https://t.co/6hygMpBqUA</a></p>&mdash; Pascal Birchler (@swissspidy) <a href=\"https://twitter.com/swissspidy/status/1131573525612048385?ref_src=twsrc%5Etfw\">May 23, 2019</a></blockquote>\n</div>\n\n\n\n<p>As WordCamp US approached, Ella suggested that her plugin be used for State of the Word. Since it was such a hit with her audience members, it seemed like this would be a great chance to share it with the WordPress community as a whole.</p>\n\n\n\n<span id=\"more-8233\"></span>\n\n\n\n<h2>How it Works</h2>\n\n\n\n<h3>Technical information</h3>\n\n\n\n<p>The plugin registers a custom post type called “presentation” and a new “slide” block. The slide block is a sort of enhanced “Group” block, which is restricted to the root of the post, but you can put any other block inside it. As a result, you have a post filled with only slides at the root and slides filled with content. This maps perfectly to the Reveal.js markup, which requires content in HTML section elements.</p>\n\n\n\n<p>Since these slides each have their own design, the theme styles are disabled and styling is set from each slide. A custom presentation template is provided by the plugin to render the custom post on the front-end.</p>\n\n\n\n<p>Then Ella added options to style the slides. For example, she added options to control the slide background and font, at both the document level and individual slide level. She also added Reveal.js options, which allow you to change the transition style and speed. Lastly, she added a custom CSS field to allow style overwrites.</p>\n\n\n\n<p>For the State of the Word, she also added speaker notes and a speaker view.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/image.png?fit=632%2C363&ssl=1\" alt=\"\" class=\"wp-image-8271\" />\n\n\n\n<h3>How it&#8217;s Designed</h3>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/01.png?fit=632%2C515&ssl=1\" alt=\"\" class=\"wp-image-8262\" />\n\n\n\n<p>The inspiration for the slide designs came from Blue Note album covers (which were also the inspiration for the <a href=\"https://www.slideshare.net/photomatt/state-of-the-word-2011/\">2011 State of the Word slides</a>). These album covers inspired the recent “About” page in WordPress core and the starter content for the new Twenty Twenty theme. This style consists of strong, geometric shapes and simple forms with clean lines. Photography and bold typography are at the heart of this look.</p>\n\n\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2019/12/image-17.png?fit=632%2C541&ssl=1\" alt=\"\" class=\"wp-image-8267\" />\n\n\n\n<p>Various color palettes and font pairings were explored before selecting the best combination for the presentation.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/03.png?fit=632%2C407&ssl=1\" alt=\"\" class=\"wp-image-8259\" />\n\n\n\n<p>A strong photographic element was needed for the slides. Past WordCamps are a great source of photos, so we dug through years of photo galleries to find just the right shots. With colors, fonts, and photos, we laid the foundation to build the deck.</p>\n\n\n\n<h2>Tips for Making Gutenberg Slides</h2>\n\n\n\n<h3>Tip One: columns are your friends</h3>\n\n\n\n<p>If you want slides with a precise layout, use columns. As you can see here, we used a 3 column layout to center content within a slide:</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/3.png?w=632&ssl=1\" alt=\"\" class=\"wp-image-8260\" />\n\n\n\n<h3>Tip Two: spacer blocks are useful</h3>\n\n\n\n<p>Want to really unlock the power of columns? Combine them with the spacer block! We used spacer blocks to position content over background images, like in this slide:</p>\n\n\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2019/12/6.png?w=632&ssl=1\" alt=\"\" class=\"wp-image-8264\" />\n\n\n\n<h3>Tip Three: test on large screens</h3>\n\n\n\n<p>It’s important to preview and test your slides as you go. Make sure to design for the size and aspect ratio of the projector you’ll be using and do a visual check in presentation mode from time to time.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/12/notes.png?fit=632%2C405&ssl=1\" alt=\"\" class=\"wp-image-8269\" />\n\n\n\n<h3>Tip Four: check your videos</h3>\n\n\n\n<p>A good demo video is integral to showcase new features. Joen Asmussen has a great post on <a href=\"https://automattic.design/2019/11/12/good-ui-demo-videos/\">creating effective demo videos</a>.</p>\n\n\n\n<h2>Lessons learned</h2>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>I’d love to make the art directed compositions easier to create. </em></p><cite><em>Mel Choyce-Dwan</em></cite></blockquote>\n\n\n\n<p>As Gutenberg evolves, one big improvement is that art direction will get easier. Even with the improvements this year, creating some layouts in Gutenberg was trickier than expected. For the more complicated compositions, we relied on SVGs. Eventually, the need for hacks will dissolve away, and a new world of exciting possibilities will open for everyone.</p>\n\n\n\n<p>Browsers offered one of our biggest learnings in this presentation, more than they would if you use Keynote or Powerpoint, for example (tools most of us have used). Often, we found that what we created in the editor varied a when viewed full-screen. We were able to mitigate this by updating the plugin to use a fixed size, instead of using the entire browser window.</p>\n\n\n\n<h2>Wrapping it up</h2>\n\n\n\n<p>If you would like to check out the State of the Word, you can watch the <a href=\"https://wordpress.tv/2019/11/03/2019-state-of-the-word/\">video</a> and read all about it in a <a href=\"https://ma.tt/2019/11/state-of-the-word-2019/\">post</a>.</p>\n\n\n\n<p>The Slides plugin is not only available on the plugin repo, but you can also get the code from <a href=\"https://github.com/WordPress/slides\">GitHub</a> and <a href=\"https://translate.wordpress.org/projects/wp-plugins/slide/\">help translate</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Dec 2019 19:27:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Ella van Durpe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 07 Feb 2020 06:54:25 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Fri, 07 Feb 2020 06:45:08 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20200206234948\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(136, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1581076468', 'no'),
(137, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1581033268', 'no'),
(138, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1581076468', 'no'),
(139, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2020/02/the-month-in-wordpress-january-2020/\'>The Month in WordPress: January 2020</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-7-4-adds-new-color-controls-link-ui-and-block-scaffolding-for-developers\'>WPTavern: Gutenberg 7.4 Adds New Color Controls, Link UI, and Block Scaffolding for Developers</a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/syed-balkhi-on-awesome-motives-acquisition-of-all-in-one-seo/\'>Post Status: Syed Balkhi on Awesome Motive’s acquisition of All In One SEO</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/key-takeaways-from-the-first-future-of-themes-meeting\'>WPTavern: Key Takeaways From the First ‘Future of Themes’ Meeting</a></li></ul></div>', 'no'),
(141, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581057062;s:7:\"checked\";a:6:{s:16:\"storefront-child\";s:5:\"1.0.0\";s:10:\"storefront\";s:5:\"2.5.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(142, 'current_theme', 'KienPhong Child', 'yes'),
(143, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581034306;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'storefront_nux_fresh_site', '1', 'yes'),
(147, 'theme_mods_storefront-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:36;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(149, '_transient_timeout_plugin_slugs', '1581143989', 'no'),
(150, '_transient_plugin_slugs', 'a:8:{i:0;s:19:\"akismet/akismet.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:2;s:9:\"hello.php\";i:3;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:4;s:47:\"show-current-template/show-current-template.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:7;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'no'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'woocommerce_store_address', 'Phú Trinh, Phan Thiết, BÌnh Thuận', 'yes'),
(160, 'woocommerce_store_address_2', '', 'yes'),
(161, 'woocommerce_store_city', 'Phú Thuận', 'yes'),
(162, 'woocommerce_default_country', 'VN:*', 'yes'),
(163, 'woocommerce_store_postcode', '', 'yes'),
(164, 'woocommerce_allowed_countries', 'all', 'yes'),
(165, 'woocommerce_all_except_countries', '', 'yes'),
(166, 'woocommerce_specific_allowed_countries', '', 'yes'),
(167, 'woocommerce_ship_to_countries', '', 'yes'),
(168, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(169, 'woocommerce_default_customer_address', 'base', 'yes'),
(170, 'woocommerce_calc_taxes', 'no', 'yes'),
(171, 'woocommerce_enable_coupons', 'yes', 'yes'),
(172, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(173, 'woocommerce_currency', 'VND', 'yes'),
(174, 'woocommerce_currency_pos', 'left', 'yes'),
(175, 'woocommerce_price_thousand_sep', ',', 'yes'),
(176, 'woocommerce_price_decimal_sep', '.', 'yes'),
(177, 'woocommerce_price_num_decimals', '2', 'yes'),
(178, 'woocommerce_shop_page_id', '6', 'yes'),
(179, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(180, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(181, 'woocommerce_placeholder_image', '5', 'yes'),
(182, 'woocommerce_weight_unit', 'kg', 'yes'),
(183, 'woocommerce_dimension_unit', 'cm', 'yes'),
(184, 'woocommerce_enable_reviews', 'yes', 'yes'),
(185, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(186, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(187, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(188, 'woocommerce_review_rating_required', 'yes', 'no'),
(189, 'woocommerce_manage_stock', 'yes', 'yes'),
(190, 'woocommerce_hold_stock_minutes', '60', 'no'),
(191, 'woocommerce_notify_low_stock', 'yes', 'no'),
(192, 'woocommerce_notify_no_stock', 'yes', 'no'),
(193, 'woocommerce_stock_email_recipient', 'tranthithanhtra8@gmail.com', 'no'),
(194, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(195, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(196, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(197, 'woocommerce_stock_format', '', 'yes'),
(198, 'woocommerce_file_download_method', 'force', 'no'),
(199, 'woocommerce_downloads_require_login', 'no', 'no'),
(200, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(201, 'woocommerce_prices_include_tax', 'no', 'yes'),
(202, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(203, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(204, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(205, 'woocommerce_tax_classes', '', 'yes'),
(206, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(207, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(208, 'woocommerce_price_display_suffix', '', 'yes'),
(209, 'woocommerce_tax_total_display', 'itemized', 'no'),
(210, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(211, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(212, 'woocommerce_ship_to_destination', 'billing', 'no'),
(213, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(214, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(215, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(216, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(217, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(218, 'woocommerce_registration_generate_username', 'yes', 'no'),
(219, 'woocommerce_registration_generate_password', 'yes', 'no'),
(220, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(221, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(222, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(223, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(224, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(225, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(226, 'woocommerce_trash_pending_orders', '', 'no'),
(227, 'woocommerce_trash_failed_orders', '', 'no'),
(228, 'woocommerce_trash_cancelled_orders', '', 'no'),
(229, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(230, 'woocommerce_email_from_name', 'Kien Phong JR', 'no'),
(231, 'woocommerce_email_from_address', 'tranthithanhtra8@gmail.com', 'no'),
(232, 'woocommerce_email_header_image', '', 'no'),
(233, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(234, 'woocommerce_email_base_color', '#96588a', 'no'),
(235, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(236, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(237, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(238, 'woocommerce_cart_page_id', '7', 'no'),
(239, 'woocommerce_checkout_page_id', '8', 'no'),
(240, 'woocommerce_myaccount_page_id', '9', 'no'),
(241, 'woocommerce_terms_page_id', '', 'no'),
(242, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(243, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(244, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(245, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(246, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(247, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(248, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(249, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(250, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(251, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(252, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(253, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(254, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(255, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(256, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(257, 'woocommerce_api_enabled', 'no', 'yes'),
(258, 'woocommerce_allow_tracking', 'yes', 'no'),
(259, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(260, 'woocommerce_single_image_width', '600', 'yes'),
(261, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(262, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(263, 'woocommerce_demo_store', 'no', 'no'),
(264, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(265, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(266, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(269, 'default_product_cat', '15', 'yes'),
(272, 'woocommerce_version', '3.9.1', 'yes'),
(273, 'woocommerce_db_version', '3.9.1', 'yes'),
(274, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:19:\"no_shipping_methods\";}', 'yes'),
(275, 'storefront_cleared_widgets', '1', 'yes'),
(276, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"MZv0hUaVs9hnwK5cjkwxMfrC1mgDa8Kh\";}', 'yes'),
(277, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(278, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(295, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(299, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(300, '_transient_timeout_wc_tracks_blog_details', '1581122356', 'no'),
(301, '_transient_wc_tracks_blog_details', 'a:4:{s:3:\"url\";s:28:\"http://localhost/kienphongjf\";s:9:\"blog_lang\";s:5:\"en_US\";s:7:\"blog_id\";N;s:14:\"products_count\";i:0;}', 'no'),
(302, 'woocommerce_product_type', 'both', 'yes'),
(304, 'woocommerce_tracker_last_send', '1581035958', 'yes'),
(305, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(306, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(307, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(309, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(313, 'mailchimp_woocommerce_version', '2.3.1', 'no'),
(314, 'mailchimp-woocommerce', 'a:2:{s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"VND\";}', 'yes'),
(316, 'mailchimp-woocommerce-store_id', '5e3cb1d652f43', 'yes'),
(321, '_transient_timeout__woocommerce_helper_updates', '1581079205', 'no'),
(322, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1581036005;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(324, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(325, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes'),
(326, '_transient_product_query-transient-version', '1581057546', 'yes'),
(329, '_transient_shipping-transient-version', '1581035995', 'yes'),
(330, '_transient_timeout_wc_shipping_method_count', '1583627995', 'no'),
(331, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1581035995\";s:5:\"value\";i:0;}', 'no'),
(332, 'woocommerce_onboarding_opt_in', 'no', 'yes'),
(334, 'woocommerce_admin_install_timestamp', '', 'yes'),
(335, 'woocommerce_onboarding_profile', 'a:0:{}', 'yes'),
(336, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(339, 'woocommerce_admin_version', '0.25.0', 'yes'),
(346, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:8:{s:4:\"slug\";s:27:\"orders-empty-stripe-payment\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}i:27;a:8:{s:4:\"slug\";s:29:\"products-empty-stripe-payment\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:26:\"woocommerce-gateway-stripe\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/stripe-payment.svg\";s:5:\"title\";s:6:\"Stripe\";s:4:\"copy\";s:132:\"The complete payments platform engineered for growth. Millions around the globe use Stripe to start, run and scale their businesses.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:40:\"https://woocommerce.com/products/stripe/\";}}s:7:\"updated\";i:1581036043;}', 'no'),
(347, '_site_transient_timeout_available_translations', '1581046843', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(348, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-05 08:33:42\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-03 13:14:07\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-23 02:24:08\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 19:20:00\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 19:05:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-27 14:39:02\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-10 11:38:15\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-14 11:38:17\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:26:42\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-24 17:29:56\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-10 10:14:21\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:31:58\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 21:29:53\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:04:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 21:30:20\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-16 16:42:18\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-06 05:52:53\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-23 23:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-11 03:56:06\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-14 16:08:46\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-07 04:01:34\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-09 12:35:27\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 17:46:33\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-15 23:45:20\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 09:08:55\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 16:37:38\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 12:30:18\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-01 17:58:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-20 16:09:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:22:28\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:22:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-20 17:02:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-02 04:22:13\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-19 02:18:44\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 19:42:41\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-12 09:57:15\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:22:22\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-22 13:20:49\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 00:32:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-04 11:20:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-04 16:57:22\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:11:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 22:44:44\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 07:05:13\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 12:53:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-02-03 23:36:03\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-16 03:03:10\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-29 17:33:44\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(351, 'WPLANG', '', 'yes'),
(352, 'new_admin_email', 'tranthithanhtra8@gmail.com', 'yes'),
(360, '_transient_timeout_wc_report_sales_by_date', '1581140858', 'no'),
(361, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"50018a7017a38c6cada7baed1ac4f8cd\";a:0:{}s:32:\"0c467d43f703257efec4bc934705de40\";a:0:{}s:32:\"8c4368124e4d66a99991d6e7649c3f36\";a:0:{}s:32:\"ddfa62d4c399a49a7496fbcb8d61a179\";N;s:32:\"5b7398269ef6c5f858780bbac5787240\";a:0:{}s:32:\"3d5289b42addd813c4ac155f3e23256b\";a:0:{}s:32:\"62e036eb4df56cc9ab7dd7778ffe962c\";a:0:{}s:32:\"648d0297ca70767a3af1a96b91b99646\";a:0:{}}', 'no'),
(362, '_transient_timeout_wc_admin_report', '1581140858', 'no'),
(363, '_transient_wc_admin_report', 'a:1:{s:32:\"763ec9828a4459e3036fcb4b9bc4855c\";a:0:{}}', 'no'),
(371, '_site_transient_timeout_popular_importers_69cd15e323f8b8b43ca0db6173636469', '1581209328', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(372, '_site_transient_popular_importers_69cd15e323f8b8b43ca0db6173636469', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(427, '_transient_product-transient-version', '1581053944', 'yes'),
(436, '_transient_timeout_wc_shipping_method_count_legacy', '1583635396', 'no'),
(437, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1581035995\";s:5:\"value\";i:0;}', 'no'),
(452, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(458, 'category_children', 'a:0:{}', 'yes'),
(460, 'pa_color_children', 'a:0:{}', 'yes'),
(461, 'pa_size_children', 'a:0:{}', 'yes'),
(466, '_transient_timeout_wc_product_children_25', '1583635714', 'no'),
(467, '_transient_wc_product_children_25', 'a:2:{s:3:\"all\";a:4:{i:0;i:43;i:1;i:36;i:2;i:37;i:3;i:38;}s:7:\"visible\";a:4:{i:0;i:43;i:1;i:36;i:2;i:37;i:3;i:38;}}', 'no'),
(468, '_transient_timeout_wc_var_prices_25', '1583646009', 'no'),
(469, '_transient_wc_var_prices_25', '{\"version\":\"1581053944\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"43\":\"45.00\",\"36\":\"42.00\",\"37\":\"45.00\",\"38\":\"45.00\"},\"regular_price\":{\"43\":\"45.00\",\"36\":\"45.00\",\"37\":\"45.00\",\"38\":\"45.00\"},\"sale_price\":{\"43\":\"45.00\",\"36\":\"42.00\",\"37\":\"45.00\",\"38\":\"45.00\"}}}', 'no'),
(470, '_transient_timeout_wc_product_children_24', '1583635714', 'no'),
(471, '_transient_wc_product_children_24', 'a:2:{s:3:\"all\";a:3:{i:0;i:20;i:1;i:34;i:2;i:35;}s:7:\"visible\";a:3:{i:0;i:20;i:1;i:34;i:2;i:35;}}', 'no'),
(472, '_transient_timeout_wc_var_prices_24', '1583646009', 'no'),
(473, '_transient_wc_var_prices_24', '{\"version\":\"1581053944\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"20\":\"20.00\",\"34\":\"20.00\",\"35\":\"15.00\"},\"regular_price\":{\"20\":\"20.00\",\"34\":\"20.00\",\"35\":\"15.00\"},\"sale_price\":{\"20\":\"20.00\",\"34\":\"20.00\",\"35\":\"15.00\"}}}', 'no'),
(483, '_transient_timeout_wc_related_28', '1581139857', 'no'),
(484, '_transient_wc_related_28', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=28\";a:4:{i:0;s:2:\"29\";i:1;s:2:\"30\";i:2;s:2:\"31\";i:3;s:2:\"40\";}}', 'no'),
(487, 'storefront_nux_guided_tour', '1', 'yes'),
(497, 'product_cat_children', 'a:2:{i:17;a:3:{i:0;i:18;i:1;i:19;i:2;i:20;}i:31;a:3:{i:0;i:32;i:1;i:33;i:2;i:34;}}', 'yes'),
(503, '_transient_timeout_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51', '1583645947', 'no'),
(504, '_transient_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51', 'a:2:{s:7:\"version\";s:10:\"1581053944\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:33;i:1;i:31;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(505, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1583645947', 'no'),
(506, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:\"version\";s:10:\"1581053944\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:27;i:1;i:40;i:2;i:28;i:3;i:41;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(515, '_transient_timeout_wc_featured_products', '1583645947', 'no'),
(516, '_transient_wc_featured_products', 'a:4:{i:0;i:33;i:1;i:30;i:2;i:31;i:3;i:24;}', 'no'),
(527, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(533, 'woocommerce_tracker_ua', 'a:1:{i:0;s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/85.0.130 Chrome/79.0.3945.130 Safari/537.36\";}', 'yes'),
(534, '_site_transient_timeout_browser_f8263813a4a4674d50db1024d9c4924a', '1581659258', 'no'),
(535, '_site_transient_browser_f8263813a4a4674d50db1024d9c4924a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(536, '_transient_timeout_wc_low_stock_count', '1583646458', 'no'),
(537, '_transient_wc_low_stock_count', '0', 'no'),
(538, '_transient_timeout_wc_outofstock_count', '1583646458', 'no'),
(539, '_transient_wc_outofstock_count', '0', 'no'),
(549, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(679, '_transient_timeout_wc_term_counts', '1583648499', 'no'),
(680, '_transient_wc_term_counts', 'a:6:{i:20;s:1:\"5\";i:17;s:2:\"14\";i:22;s:1:\"1\";i:19;s:1:\"3\";i:21;s:1:\"2\";i:18;s:1:\"5\";}', 'no'),
(681, '_transient_timeout_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', '1583649548', 'no'),
(682, '_transient_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', 'a:2:{s:7:\"version\";s:10:\"1581057546\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:42;i:1;i:41;i:2;i:40;i:3;i:39;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(683, '_transient_timeout_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', '1583649548', 'no'),
(684, '_transient_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', 'a:2:{s:7:\"version\";s:10:\"1581057546\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:33;i:1;i:31;i:2;i:30;i:3;i:24;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(685, '_transient_timeout_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', '1583649548', 'no'),
(686, '_transient_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', 'a:2:{s:7:\"version\";s:10:\"1581057546\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:19;i:1;i:18;i:2;i:17;i:3;i:16;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(687, '_transient_timeout_wc_products_onsale', '1583648499', 'no'),
(688, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(689, '_transient_timeout_wc_product_loop_e5369b77f07fe5444fb1aae0ef57c8d5', '1583649548', 'no'),
(690, '_transient_wc_product_loop_e5369b77f07fe5444fb1aae0ef57c8d5', 'a:2:{s:7:\"version\";s:10:\"1581057546\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(691, '_transient_timeout_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', '1583649548', 'no'),
(692, '_transient_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', 'a:2:{s:7:\"version\";s:10:\"1581057546\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:19;i:1;i:18;i:2;i:17;i:3;i:16;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(697, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(698, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(700, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1581067816', 'no'),
(701, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4664;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3889;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2663;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2540;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1952;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1792;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1771;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1481;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1466;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1461;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1448;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1409;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1389;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1176;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1160;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1120;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1090;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1085;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:977;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:866;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:865;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:840;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:781;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:760;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:756;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:751;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:728;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:698;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:694;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:641;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:641;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:626;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:625;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:612;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:575;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:571;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:570;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:543;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:541;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:534;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:528;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:494;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:494;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:493;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:486;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:466;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:459;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:436;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:428;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:413;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:393;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:392;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:377;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:374;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:364;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:356;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:345;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:329;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:328;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:326;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:324;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:323;}}', 'no'),
(705, '_site_transient_timeout_theme_roots', '1581058854', 'no'),
(706, '_site_transient_theme_roots', 'a:6:{s:16:\"storefront-child\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(711, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1581060918', 'no'),
(712, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(715, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1581057587;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.9.15\";s:9:\"hello.php\";s:5:\"1.7.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.3.1\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.1\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:6:\"0.25.0\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.25.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(730, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 11, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1581035994;}'),
(6, 10, '_edit_last', '1'),
(7, 10, '_edit_lock', '1581035997:1'),
(8, 12, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581035999;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(9, 13, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581039643;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(10, 14, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581043321;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(11, 15, '_wp_attached_file', '2020/02/sample_products.csv'),
(12, 15, '_wp_attachment_context', 'import'),
(93, 21, '_wp_attached_file', '2020/02/sample_tax_rates.csv.txt'),
(94, 21, '_wp_attachment_context', 'import'),
(95, 22, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581046985;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(98, 24, '_sku', 'woo-vneck-tee'),
(99, 24, '_sale_price_dates_from', ''),
(100, 24, '_sale_price_dates_to', ''),
(101, 24, 'total_sales', '0'),
(102, 24, '_tax_status', 'taxable'),
(103, 24, '_tax_class', ''),
(104, 24, '_manage_stock', 'no'),
(105, 24, '_backorders', 'no'),
(106, 24, '_low_stock_amount', ''),
(107, 24, '_sold_individually', 'no'),
(108, 24, '_weight', ''),
(109, 24, '_length', ''),
(110, 24, '_width', ''),
(111, 24, '_height', ''),
(112, 24, '_upsell_ids', 'a:0:{}'),
(113, 24, '_crosssell_ids', 'a:0:{}'),
(114, 24, '_purchase_note', ''),
(115, 24, '_default_attributes', 'a:0:{}'),
(116, 24, '_virtual', 'no'),
(117, 24, '_downloadable', 'no'),
(118, 24, '_product_image_gallery', '32,33'),
(119, 24, '_download_limit', '0'),
(120, 24, '_download_expiry', '0'),
(121, 24, '_stock', ''),
(122, 24, '_stock_status', 'instock'),
(123, 24, '_wc_average_rating', '0'),
(124, 24, '_wc_rating_count', 'a:0:{}'),
(125, 24, '_wc_review_count', '0'),
(126, 24, '_downloadable_files', 'a:0:{}'),
(127, 24, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(128, 24, '_product_version', '3.5.3'),
(129, 24, '_thumbnail_id', '44'),
(130, 24, '_price', '15'),
(131, 24, '_price', '20'),
(132, 24, '_regular_price', ''),
(133, 24, '_sale_price', ''),
(134, 25, '_sku', 'woo-hoodie'),
(135, 25, '_sale_price_dates_from', ''),
(136, 25, '_sale_price_dates_to', ''),
(137, 25, 'total_sales', '0'),
(138, 25, '_tax_status', 'taxable'),
(139, 25, '_tax_class', ''),
(140, 25, '_manage_stock', 'no'),
(141, 25, '_backorders', 'no'),
(142, 25, '_low_stock_amount', ''),
(143, 25, '_sold_individually', 'no'),
(144, 25, '_weight', ''),
(145, 25, '_length', ''),
(146, 25, '_width', ''),
(147, 25, '_height', ''),
(148, 25, '_upsell_ids', 'a:0:{}'),
(149, 25, '_crosssell_ids', 'a:0:{}'),
(150, 25, '_purchase_note', ''),
(151, 25, '_default_attributes', 'a:0:{}'),
(152, 25, '_virtual', 'no'),
(153, 25, '_downloadable', 'no'),
(154, 25, '_product_image_gallery', '35,36,37'),
(155, 25, '_download_limit', '0'),
(156, 25, '_download_expiry', '0'),
(157, 25, '_stock', ''),
(158, 25, '_stock_status', 'instock'),
(159, 25, '_wc_average_rating', '0'),
(160, 25, '_wc_rating_count', 'a:0:{}'),
(161, 25, '_wc_review_count', '0'),
(162, 25, '_downloadable_files', 'a:0:{}'),
(163, 25, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(164, 25, '_product_version', '3.5.3'),
(165, 25, '_thumbnail_id', '47'),
(166, 25, '_price', '42'),
(167, 25, '_price', '45'),
(168, 25, '_regular_price', ''),
(169, 25, '_sale_price', ''),
(170, 26, '_sku', 'woo-hoodie-with-logo'),
(171, 26, '_regular_price', '45'),
(172, 26, '_sale_price', ''),
(173, 26, '_sale_price_dates_from', ''),
(174, 26, '_sale_price_dates_to', ''),
(175, 26, 'total_sales', '0'),
(176, 26, '_tax_status', 'taxable'),
(177, 26, '_tax_class', ''),
(178, 26, '_manage_stock', 'no'),
(179, 26, '_backorders', 'no'),
(180, 26, '_low_stock_amount', ''),
(181, 26, '_sold_individually', 'no'),
(182, 26, '_weight', ''),
(183, 26, '_length', ''),
(184, 26, '_width', ''),
(185, 26, '_height', ''),
(186, 26, '_upsell_ids', 'a:0:{}'),
(187, 26, '_crosssell_ids', 'a:0:{}'),
(188, 26, '_purchase_note', ''),
(189, 26, '_default_attributes', 'a:0:{}'),
(190, 26, '_virtual', 'no'),
(191, 26, '_downloadable', 'no'),
(192, 26, '_product_image_gallery', ''),
(193, 26, '_download_limit', '0'),
(194, 26, '_download_expiry', '0'),
(195, 26, '_stock', ''),
(196, 26, '_stock_status', 'instock'),
(197, 26, '_wc_average_rating', '0'),
(198, 26, '_wc_rating_count', 'a:0:{}'),
(199, 26, '_wc_review_count', '0'),
(200, 26, '_downloadable_files', 'a:0:{}'),
(201, 26, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(202, 26, '_product_version', '3.5.3'),
(203, 26, '_price', '45'),
(204, 26, '_thumbnail_id', '53'),
(205, 27, '_sku', 'woo-tshirt'),
(206, 27, '_regular_price', '18'),
(207, 27, '_sale_price', ''),
(208, 27, '_sale_price_dates_from', ''),
(209, 27, '_sale_price_dates_to', ''),
(210, 27, 'total_sales', '0'),
(211, 27, '_tax_status', 'taxable'),
(212, 27, '_tax_class', ''),
(213, 27, '_manage_stock', 'no'),
(214, 27, '_backorders', 'no'),
(215, 27, '_low_stock_amount', ''),
(216, 27, '_sold_individually', 'no'),
(217, 27, '_weight', ''),
(218, 27, '_length', ''),
(219, 27, '_width', ''),
(220, 27, '_height', ''),
(221, 27, '_upsell_ids', 'a:0:{}'),
(222, 27, '_crosssell_ids', 'a:0:{}'),
(223, 27, '_purchase_note', ''),
(224, 27, '_default_attributes', 'a:0:{}'),
(225, 27, '_virtual', 'no'),
(226, 27, '_downloadable', 'no'),
(227, 27, '_product_image_gallery', ''),
(228, 27, '_download_limit', '0'),
(229, 27, '_download_expiry', '0'),
(230, 27, '_stock', ''),
(231, 27, '_stock_status', 'instock'),
(232, 27, '_wc_average_rating', '0'),
(233, 27, '_wc_rating_count', 'a:0:{}'),
(234, 27, '_wc_review_count', '0'),
(235, 27, '_downloadable_files', 'a:0:{}'),
(236, 27, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(237, 27, '_product_version', '3.5.3'),
(238, 27, '_price', '18'),
(239, 27, '_thumbnail_id', '56'),
(240, 28, '_sku', 'woo-beanie'),
(241, 28, '_regular_price', '20'),
(242, 28, '_sale_price', '18'),
(243, 28, '_sale_price_dates_from', ''),
(244, 28, '_sale_price_dates_to', ''),
(245, 28, 'total_sales', '0'),
(246, 28, '_tax_status', 'taxable'),
(247, 28, '_tax_class', ''),
(248, 28, '_manage_stock', 'no'),
(249, 28, '_backorders', 'no'),
(250, 28, '_low_stock_amount', ''),
(251, 28, '_sold_individually', 'no'),
(252, 28, '_weight', ''),
(253, 28, '_length', ''),
(254, 28, '_width', ''),
(255, 28, '_height', ''),
(256, 28, '_upsell_ids', 'a:0:{}'),
(257, 28, '_crosssell_ids', 'a:0:{}'),
(258, 28, '_purchase_note', ''),
(259, 28, '_default_attributes', 'a:0:{}'),
(260, 28, '_virtual', 'no'),
(261, 28, '_downloadable', 'no'),
(262, 28, '_product_image_gallery', ''),
(263, 28, '_download_limit', '0'),
(264, 28, '_download_expiry', '0'),
(265, 28, '_stock', ''),
(266, 28, '_stock_status', 'instock'),
(267, 28, '_wc_average_rating', '0'),
(268, 28, '_wc_rating_count', 'a:0:{}'),
(269, 28, '_wc_review_count', '0'),
(270, 28, '_downloadable_files', 'a:0:{}'),
(271, 28, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(272, 28, '_product_version', '3.5.3'),
(273, 28, '_price', '18'),
(274, 28, '_thumbnail_id', '59'),
(275, 29, '_sku', 'woo-belt'),
(276, 29, '_regular_price', '65'),
(277, 29, '_sale_price', '55'),
(278, 29, '_sale_price_dates_from', ''),
(279, 29, '_sale_price_dates_to', ''),
(280, 29, 'total_sales', '0'),
(281, 29, '_tax_status', 'taxable'),
(282, 29, '_tax_class', ''),
(283, 29, '_manage_stock', 'no'),
(284, 29, '_backorders', 'no'),
(285, 29, '_low_stock_amount', ''),
(286, 29, '_sold_individually', 'no'),
(287, 29, '_weight', ''),
(288, 29, '_length', ''),
(289, 29, '_width', ''),
(290, 29, '_height', ''),
(291, 29, '_upsell_ids', 'a:0:{}'),
(292, 29, '_crosssell_ids', 'a:0:{}'),
(293, 29, '_purchase_note', ''),
(294, 29, '_default_attributes', 'a:0:{}'),
(295, 29, '_virtual', 'no'),
(296, 29, '_downloadable', 'no'),
(297, 29, '_product_image_gallery', ''),
(298, 29, '_download_limit', '0'),
(299, 29, '_download_expiry', '0'),
(300, 29, '_stock', ''),
(301, 29, '_stock_status', 'instock'),
(302, 29, '_wc_average_rating', '0'),
(303, 29, '_wc_rating_count', 'a:0:{}'),
(304, 29, '_wc_review_count', '0'),
(305, 29, '_downloadable_files', 'a:0:{}'),
(306, 29, '_product_attributes', 'a:0:{}'),
(307, 29, '_product_version', '3.5.3'),
(308, 29, '_price', '55'),
(309, 29, '_thumbnail_id', '61'),
(310, 30, '_sku', 'woo-cap'),
(311, 30, '_regular_price', '18'),
(312, 30, '_sale_price', '16'),
(313, 30, '_sale_price_dates_from', ''),
(314, 30, '_sale_price_dates_to', ''),
(315, 30, 'total_sales', '0'),
(316, 30, '_tax_status', 'taxable'),
(317, 30, '_tax_class', ''),
(318, 30, '_manage_stock', 'no'),
(319, 30, '_backorders', 'no'),
(320, 30, '_low_stock_amount', ''),
(321, 30, '_sold_individually', 'no'),
(322, 30, '_weight', ''),
(323, 30, '_length', ''),
(324, 30, '_width', ''),
(325, 30, '_height', ''),
(326, 30, '_upsell_ids', 'a:0:{}'),
(327, 30, '_crosssell_ids', 'a:0:{}'),
(328, 30, '_purchase_note', ''),
(329, 30, '_default_attributes', 'a:0:{}'),
(330, 30, '_virtual', 'no'),
(331, 30, '_downloadable', 'no'),
(332, 30, '_product_image_gallery', ''),
(333, 30, '_download_limit', '0'),
(334, 30, '_download_expiry', '0'),
(335, 30, '_stock', ''),
(336, 30, '_stock_status', 'instock'),
(337, 30, '_wc_average_rating', '0'),
(338, 30, '_wc_rating_count', 'a:0:{}'),
(339, 30, '_wc_review_count', '0'),
(340, 30, '_downloadable_files', 'a:0:{}'),
(341, 30, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(342, 30, '_product_version', '3.5.3'),
(343, 30, '_price', '16'),
(344, 30, '_thumbnail_id', '65'),
(345, 31, '_sku', 'woo-sunglasses'),
(346, 31, '_regular_price', '90'),
(347, 31, '_sale_price', ''),
(348, 31, '_sale_price_dates_from', ''),
(349, 31, '_sale_price_dates_to', ''),
(350, 31, 'total_sales', '0'),
(351, 31, '_tax_status', 'taxable'),
(352, 31, '_tax_class', ''),
(353, 31, '_manage_stock', 'no'),
(354, 31, '_backorders', 'no'),
(355, 31, '_low_stock_amount', ''),
(356, 31, '_sold_individually', 'no'),
(357, 31, '_weight', ''),
(358, 31, '_length', ''),
(359, 31, '_width', ''),
(360, 31, '_height', ''),
(361, 31, '_upsell_ids', 'a:0:{}'),
(362, 31, '_crosssell_ids', 'a:0:{}'),
(363, 31, '_purchase_note', ''),
(364, 31, '_default_attributes', 'a:0:{}'),
(365, 31, '_virtual', 'no'),
(366, 31, '_downloadable', 'no'),
(367, 31, '_product_image_gallery', ''),
(368, 31, '_download_limit', '0'),
(369, 31, '_download_expiry', '0'),
(370, 31, '_stock', ''),
(371, 31, '_stock_status', 'instock'),
(372, 31, '_wc_average_rating', '0'),
(373, 31, '_wc_rating_count', 'a:0:{}'),
(374, 31, '_wc_review_count', '0'),
(375, 31, '_downloadable_files', 'a:0:{}'),
(376, 31, '_product_attributes', 'a:0:{}'),
(377, 31, '_product_version', '3.5.3'),
(378, 31, '_price', '90'),
(379, 31, '_thumbnail_id', '68'),
(380, 32, '_sku', 'woo-hoodie-with-pocket'),
(381, 32, '_regular_price', '45'),
(382, 32, '_sale_price', '35'),
(383, 32, '_sale_price_dates_from', ''),
(384, 32, '_sale_price_dates_to', ''),
(385, 32, 'total_sales', '0'),
(386, 32, '_tax_status', 'taxable'),
(387, 32, '_tax_class', ''),
(388, 32, '_manage_stock', 'no'),
(389, 32, '_backorders', 'no'),
(390, 32, '_low_stock_amount', ''),
(391, 32, '_sold_individually', 'no'),
(392, 32, '_weight', ''),
(393, 32, '_length', ''),
(394, 32, '_width', ''),
(395, 32, '_height', ''),
(396, 32, '_upsell_ids', 'a:0:{}'),
(397, 32, '_crosssell_ids', 'a:0:{}'),
(398, 32, '_purchase_note', ''),
(399, 32, '_default_attributes', 'a:0:{}'),
(400, 32, '_virtual', 'no'),
(401, 32, '_downloadable', 'no'),
(402, 32, '_product_image_gallery', ''),
(403, 32, '_download_limit', '0'),
(404, 32, '_download_expiry', '0'),
(405, 32, '_stock', ''),
(406, 32, '_stock_status', 'instock'),
(407, 32, '_wc_average_rating', '0'),
(408, 32, '_wc_rating_count', 'a:0:{}'),
(409, 32, '_wc_review_count', '0'),
(410, 32, '_downloadable_files', 'a:0:{}'),
(411, 32, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(412, 32, '_product_version', '3.5.3'),
(413, 32, '_price', '35'),
(414, 32, '_thumbnail_id', '71'),
(415, 33, '_sku', 'woo-hoodie-with-zipper'),
(416, 33, '_regular_price', '45'),
(417, 33, '_sale_price', ''),
(418, 33, '_sale_price_dates_from', ''),
(419, 33, '_sale_price_dates_to', ''),
(420, 33, 'total_sales', '0'),
(421, 33, '_tax_status', 'taxable'),
(422, 33, '_tax_class', ''),
(423, 33, '_manage_stock', 'no'),
(424, 33, '_backorders', 'no'),
(425, 33, '_low_stock_amount', ''),
(426, 33, '_sold_individually', 'no'),
(427, 33, '_weight', ''),
(428, 33, '_length', ''),
(429, 33, '_width', ''),
(430, 33, '_height', ''),
(431, 33, '_upsell_ids', 'a:0:{}'),
(432, 33, '_crosssell_ids', 'a:0:{}'),
(433, 33, '_purchase_note', ''),
(434, 33, '_default_attributes', 'a:0:{}'),
(435, 33, '_virtual', 'no'),
(436, 33, '_downloadable', 'no'),
(437, 33, '_product_image_gallery', ''),
(438, 33, '_download_limit', '0'),
(439, 33, '_download_expiry', '0'),
(440, 33, '_stock', ''),
(441, 33, '_stock_status', 'instock'),
(442, 33, '_wc_average_rating', '0'),
(443, 33, '_wc_rating_count', 'a:0:{}'),
(444, 33, '_wc_review_count', '0'),
(445, 33, '_downloadable_files', 'a:0:{}'),
(446, 33, '_product_attributes', 'a:0:{}'),
(447, 33, '_product_version', '3.5.3'),
(448, 33, '_price', '45'),
(449, 33, '_thumbnail_id', '74'),
(450, 16, '_sku', 'woo-long-sleeve-tee'),
(451, 16, '_regular_price', '25'),
(452, 16, '_sale_price', ''),
(453, 16, '_sale_price_dates_from', ''),
(454, 16, '_sale_price_dates_to', ''),
(455, 16, 'total_sales', '0'),
(456, 16, '_tax_status', 'taxable'),
(457, 16, '_tax_class', ''),
(458, 16, '_manage_stock', 'no'),
(459, 16, '_backorders', 'no'),
(460, 16, '_low_stock_amount', ''),
(461, 16, '_sold_individually', 'no'),
(462, 16, '_weight', ''),
(463, 16, '_length', ''),
(464, 16, '_width', ''),
(465, 16, '_height', ''),
(466, 16, '_upsell_ids', 'a:0:{}'),
(467, 16, '_crosssell_ids', 'a:0:{}'),
(468, 16, '_purchase_note', ''),
(469, 16, '_default_attributes', 'a:0:{}'),
(470, 16, '_virtual', 'no'),
(471, 16, '_downloadable', 'no'),
(472, 16, '_product_image_gallery', ''),
(473, 16, '_download_limit', '0'),
(474, 16, '_download_expiry', '0'),
(475, 16, '_stock', ''),
(476, 16, '_stock_status', 'instock'),
(477, 16, '_wc_average_rating', '0'),
(478, 16, '_wc_rating_count', 'a:0:{}'),
(479, 16, '_wc_review_count', '0'),
(480, 16, '_downloadable_files', 'a:0:{}'),
(481, 16, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(482, 16, '_product_version', '3.5.3'),
(483, 16, '_price', '25'),
(484, 16, '_thumbnail_id', '77'),
(485, 17, '_sku', 'woo-polo'),
(486, 17, '_regular_price', '20'),
(487, 17, '_sale_price', ''),
(488, 17, '_sale_price_dates_from', ''),
(489, 17, '_sale_price_dates_to', ''),
(490, 17, 'total_sales', '0'),
(491, 17, '_tax_status', 'taxable'),
(492, 17, '_tax_class', ''),
(493, 17, '_manage_stock', 'no'),
(494, 17, '_backorders', 'no'),
(495, 17, '_low_stock_amount', ''),
(496, 17, '_sold_individually', 'no'),
(497, 17, '_weight', ''),
(498, 17, '_length', ''),
(499, 17, '_width', ''),
(500, 17, '_height', ''),
(501, 17, '_upsell_ids', 'a:0:{}'),
(502, 17, '_crosssell_ids', 'a:0:{}'),
(503, 17, '_purchase_note', ''),
(504, 17, '_default_attributes', 'a:0:{}'),
(505, 17, '_virtual', 'no'),
(506, 17, '_downloadable', 'no'),
(507, 17, '_product_image_gallery', ''),
(508, 17, '_download_limit', '0'),
(509, 17, '_download_expiry', '0'),
(510, 17, '_stock', ''),
(511, 17, '_stock_status', 'instock'),
(512, 17, '_wc_average_rating', '0'),
(513, 17, '_wc_rating_count', 'a:0:{}'),
(514, 17, '_wc_review_count', '0'),
(515, 17, '_downloadable_files', 'a:0:{}'),
(516, 17, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(517, 17, '_product_version', '3.5.3'),
(518, 17, '_price', '20'),
(519, 17, '_thumbnail_id', '81'),
(520, 18, '_sku', 'woo-album'),
(521, 18, '_regular_price', '15'),
(522, 18, '_sale_price', ''),
(523, 18, '_sale_price_dates_from', ''),
(524, 18, '_sale_price_dates_to', ''),
(525, 18, 'total_sales', '0'),
(526, 18, '_tax_status', 'taxable'),
(527, 18, '_tax_class', ''),
(528, 18, '_manage_stock', 'no'),
(529, 18, '_backorders', 'no'),
(530, 18, '_low_stock_amount', ''),
(531, 18, '_sold_individually', 'no'),
(532, 18, '_weight', ''),
(533, 18, '_length', ''),
(534, 18, '_width', ''),
(535, 18, '_height', ''),
(536, 18, '_upsell_ids', 'a:0:{}'),
(537, 18, '_crosssell_ids', 'a:0:{}'),
(538, 18, '_purchase_note', ''),
(539, 18, '_default_attributes', 'a:0:{}'),
(540, 18, '_virtual', 'yes'),
(541, 18, '_downloadable', 'yes'),
(542, 18, '_product_image_gallery', ''),
(543, 18, '_download_limit', '1'),
(544, 18, '_download_expiry', '1'),
(545, 18, '_stock', ''),
(546, 18, '_stock_status', 'instock'),
(547, 18, '_wc_average_rating', '0'),
(548, 18, '_wc_rating_count', 'a:0:{}'),
(549, 18, '_wc_review_count', '0'),
(550, 18, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(551, 18, '_product_attributes', 'a:0:{}'),
(552, 18, '_product_version', '3.5.3'),
(553, 18, '_price', '15'),
(554, 18, '_thumbnail_id', '84'),
(555, 19, '_sku', 'woo-single'),
(556, 19, '_regular_price', '3'),
(557, 19, '_sale_price', '2'),
(558, 19, '_sale_price_dates_from', ''),
(559, 19, '_sale_price_dates_to', ''),
(560, 19, 'total_sales', '0'),
(561, 19, '_tax_status', 'taxable'),
(562, 19, '_tax_class', ''),
(563, 19, '_manage_stock', 'no'),
(564, 19, '_backorders', 'no'),
(565, 19, '_low_stock_amount', ''),
(566, 19, '_sold_individually', 'no'),
(567, 19, '_weight', ''),
(568, 19, '_length', ''),
(569, 19, '_width', ''),
(570, 19, '_height', ''),
(571, 19, '_upsell_ids', 'a:0:{}'),
(572, 19, '_crosssell_ids', 'a:0:{}'),
(573, 19, '_purchase_note', ''),
(574, 19, '_default_attributes', 'a:0:{}'),
(575, 19, '_virtual', 'yes'),
(576, 19, '_downloadable', 'yes'),
(577, 19, '_product_image_gallery', ''),
(578, 19, '_download_limit', '1'),
(579, 19, '_download_expiry', '1'),
(580, 19, '_stock', ''),
(581, 19, '_stock_status', 'instock'),
(582, 19, '_wc_average_rating', '0'),
(583, 19, '_wc_rating_count', 'a:0:{}'),
(584, 19, '_wc_review_count', '0'),
(585, 19, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(586, 19, '_product_attributes', 'a:0:{}'),
(587, 19, '_product_version', '3.5.3'),
(588, 19, '_price', '2'),
(589, 19, '_thumbnail_id', '87'),
(590, 20, '_sku', 'woo-vneck-tee-red'),
(591, 20, '_regular_price', '20'),
(592, 20, '_sale_price', ''),
(593, 20, '_sale_price_dates_from', ''),
(594, 20, '_sale_price_dates_to', ''),
(595, 20, 'total_sales', '0'),
(596, 20, '_tax_status', 'taxable'),
(597, 20, '_tax_class', ''),
(598, 20, '_manage_stock', 'no'),
(599, 20, '_backorders', 'no'),
(600, 20, '_low_stock_amount', ''),
(601, 20, '_sold_individually', 'no'),
(602, 20, '_weight', ''),
(603, 20, '_length', ''),
(604, 20, '_width', ''),
(605, 20, '_height', ''),
(606, 20, '_upsell_ids', 'a:0:{}'),
(607, 20, '_crosssell_ids', 'a:0:{}'),
(608, 20, '_purchase_note', ''),
(609, 20, '_default_attributes', 'a:0:{}'),
(610, 20, '_virtual', 'no'),
(611, 20, '_downloadable', 'no'),
(612, 20, '_product_image_gallery', ''),
(613, 20, '_download_limit', '0'),
(614, 20, '_download_expiry', '0'),
(615, 20, '_stock', ''),
(616, 20, '_stock_status', 'instock'),
(617, 20, '_wc_average_rating', '0'),
(618, 20, '_wc_rating_count', 'a:0:{}'),
(619, 20, '_wc_review_count', '0'),
(620, 20, '_downloadable_files', 'a:0:{}'),
(621, 20, '_product_attributes', 'a:0:{}'),
(622, 20, '_product_version', '3.5.3'),
(623, 20, '_price', '20'),
(624, 20, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(625, 20, '_thumbnail_id', '44'),
(626, 20, 'attribute_pa_color', 'red'),
(627, 20, 'attribute_pa_size', ''),
(628, 34, '_sku', 'woo-vneck-tee-green'),
(629, 34, '_regular_price', '20'),
(630, 34, '_sale_price', ''),
(631, 34, '_sale_price_dates_from', ''),
(632, 34, '_sale_price_dates_to', ''),
(633, 34, 'total_sales', '0'),
(634, 34, '_tax_status', 'taxable'),
(635, 34, '_tax_class', ''),
(636, 34, '_manage_stock', 'no'),
(637, 34, '_backorders', 'no'),
(638, 34, '_low_stock_amount', ''),
(639, 34, '_sold_individually', 'no'),
(640, 34, '_weight', ''),
(641, 34, '_length', ''),
(642, 34, '_width', ''),
(643, 34, '_height', ''),
(644, 34, '_upsell_ids', 'a:0:{}'),
(645, 34, '_crosssell_ids', 'a:0:{}'),
(646, 34, '_purchase_note', ''),
(647, 34, '_default_attributes', 'a:0:{}'),
(648, 34, '_virtual', 'no'),
(649, 34, '_downloadable', 'no'),
(650, 34, '_product_image_gallery', ''),
(651, 34, '_download_limit', '0'),
(652, 34, '_download_expiry', '0'),
(653, 34, '_stock', ''),
(654, 34, '_stock_status', 'instock'),
(655, 34, '_wc_average_rating', '0'),
(656, 34, '_wc_rating_count', 'a:0:{}'),
(657, 34, '_wc_review_count', '0'),
(658, 34, '_downloadable_files', 'a:0:{}'),
(659, 34, '_product_attributes', 'a:0:{}'),
(660, 34, '_product_version', '3.5.3'),
(661, 34, '_price', '20'),
(662, 34, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(663, 34, '_thumbnail_id', '45'),
(664, 34, 'attribute_pa_color', 'green'),
(665, 34, 'attribute_pa_size', ''),
(666, 35, '_sku', 'woo-vneck-tee-blue'),
(667, 35, '_regular_price', '15'),
(668, 35, '_sale_price', ''),
(669, 35, '_sale_price_dates_from', ''),
(670, 35, '_sale_price_dates_to', ''),
(671, 35, 'total_sales', '0'),
(672, 35, '_tax_status', 'taxable'),
(673, 35, '_tax_class', ''),
(674, 35, '_manage_stock', 'no'),
(675, 35, '_backorders', 'no'),
(676, 35, '_low_stock_amount', ''),
(677, 35, '_sold_individually', 'no'),
(678, 35, '_weight', ''),
(679, 35, '_length', ''),
(680, 35, '_width', ''),
(681, 35, '_height', ''),
(682, 35, '_upsell_ids', 'a:0:{}'),
(683, 35, '_crosssell_ids', 'a:0:{}'),
(684, 35, '_purchase_note', ''),
(685, 35, '_default_attributes', 'a:0:{}'),
(686, 35, '_virtual', 'no'),
(687, 35, '_downloadable', 'no'),
(688, 35, '_product_image_gallery', ''),
(689, 35, '_download_limit', '0'),
(690, 35, '_download_expiry', '0'),
(691, 35, '_stock', ''),
(692, 35, '_stock_status', 'instock'),
(693, 35, '_wc_average_rating', '0'),
(694, 35, '_wc_rating_count', 'a:0:{}'),
(695, 35, '_wc_review_count', '0'),
(696, 35, '_downloadable_files', 'a:0:{}'),
(697, 35, '_product_attributes', 'a:0:{}'),
(698, 35, '_product_version', '3.5.3'),
(699, 35, '_price', '15'),
(700, 35, '_wpcom_is_markdown', ''),
(701, 35, '_wp_old_slug', 'import-placeholder-for-78'),
(702, 35, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(703, 35, '_thumbnail_id', '46'),
(704, 35, 'attribute_pa_color', 'blue'),
(705, 35, 'attribute_pa_size', ''),
(706, 36, '_sku', 'woo-hoodie-red'),
(707, 36, '_regular_price', '45'),
(708, 36, '_sale_price', '42'),
(709, 36, '_sale_price_dates_from', ''),
(710, 36, '_sale_price_dates_to', ''),
(711, 36, 'total_sales', '0'),
(712, 36, '_tax_status', 'taxable'),
(713, 36, '_tax_class', ''),
(714, 36, '_manage_stock', 'no'),
(715, 36, '_backorders', 'no'),
(716, 36, '_low_stock_amount', ''),
(717, 36, '_sold_individually', 'no'),
(718, 36, '_weight', ''),
(719, 36, '_length', ''),
(720, 36, '_width', ''),
(721, 36, '_height', ''),
(722, 36, '_upsell_ids', 'a:0:{}'),
(723, 36, '_crosssell_ids', 'a:0:{}'),
(724, 36, '_purchase_note', ''),
(725, 36, '_default_attributes', 'a:0:{}'),
(726, 36, '_virtual', 'no'),
(727, 36, '_downloadable', 'no'),
(728, 36, '_product_image_gallery', ''),
(729, 36, '_download_limit', '0'),
(730, 36, '_download_expiry', '0'),
(731, 36, '_stock', ''),
(732, 36, '_stock_status', 'instock'),
(733, 36, '_wc_average_rating', '0'),
(734, 36, '_wc_rating_count', 'a:0:{}'),
(735, 36, '_wc_review_count', '0'),
(736, 36, '_downloadable_files', 'a:0:{}'),
(737, 36, '_product_attributes', 'a:0:{}'),
(738, 36, '_product_version', '3.5.3'),
(739, 36, '_price', '42'),
(740, 36, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(741, 36, '_thumbnail_id', '47'),
(742, 36, 'attribute_pa_color', 'red'),
(743, 36, 'attribute_logo', 'No'),
(744, 37, '_sku', 'woo-hoodie-green'),
(745, 37, '_regular_price', '45'),
(746, 37, '_sale_price', ''),
(747, 37, '_sale_price_dates_from', ''),
(748, 37, '_sale_price_dates_to', ''),
(749, 37, 'total_sales', '0'),
(750, 37, '_tax_status', 'taxable'),
(751, 37, '_tax_class', ''),
(752, 37, '_manage_stock', 'no'),
(753, 37, '_backorders', 'no'),
(754, 37, '_low_stock_amount', ''),
(755, 37, '_sold_individually', 'no'),
(756, 37, '_weight', ''),
(757, 37, '_length', ''),
(758, 37, '_width', ''),
(759, 37, '_height', ''),
(760, 37, '_upsell_ids', 'a:0:{}'),
(761, 37, '_crosssell_ids', 'a:0:{}'),
(762, 37, '_purchase_note', ''),
(763, 37, '_default_attributes', 'a:0:{}'),
(764, 37, '_virtual', 'no'),
(765, 37, '_downloadable', 'no'),
(766, 37, '_product_image_gallery', ''),
(767, 37, '_download_limit', '0'),
(768, 37, '_download_expiry', '0'),
(769, 37, '_stock', ''),
(770, 37, '_stock_status', 'instock'),
(771, 37, '_wc_average_rating', '0'),
(772, 37, '_wc_rating_count', 'a:0:{}'),
(773, 37, '_wc_review_count', '0'),
(774, 37, '_downloadable_files', 'a:0:{}'),
(775, 37, '_product_attributes', 'a:0:{}'),
(776, 37, '_product_version', '3.5.3'),
(777, 37, '_price', '45'),
(778, 37, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(779, 37, '_thumbnail_id', '51'),
(780, 37, 'attribute_pa_color', 'green'),
(781, 37, 'attribute_logo', 'No'),
(782, 38, '_sku', 'woo-hoodie-blue'),
(783, 38, '_regular_price', '45'),
(784, 38, '_sale_price', ''),
(785, 38, '_sale_price_dates_from', ''),
(786, 38, '_sale_price_dates_to', ''),
(787, 38, 'total_sales', '0'),
(788, 38, '_tax_status', 'taxable'),
(789, 38, '_tax_class', ''),
(790, 38, '_manage_stock', 'no'),
(791, 38, '_backorders', 'no'),
(792, 38, '_low_stock_amount', ''),
(793, 38, '_sold_individually', 'no'),
(794, 38, '_weight', ''),
(795, 38, '_length', ''),
(796, 38, '_width', ''),
(797, 38, '_height', ''),
(798, 38, '_upsell_ids', 'a:0:{}'),
(799, 38, '_crosssell_ids', 'a:0:{}'),
(800, 38, '_purchase_note', ''),
(801, 38, '_default_attributes', 'a:0:{}'),
(802, 38, '_virtual', 'no'),
(803, 38, '_downloadable', 'no'),
(804, 38, '_product_image_gallery', ''),
(805, 38, '_download_limit', '0'),
(806, 38, '_download_expiry', '0'),
(807, 38, '_stock', ''),
(808, 38, '_stock_status', 'instock'),
(809, 38, '_wc_average_rating', '0'),
(810, 38, '_wc_rating_count', 'a:0:{}'),
(811, 38, '_wc_review_count', '0'),
(812, 38, '_downloadable_files', 'a:0:{}'),
(813, 38, '_product_attributes', 'a:0:{}'),
(814, 38, '_product_version', '3.5.3'),
(815, 38, '_price', '45'),
(816, 38, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(817, 38, '_thumbnail_id', '48'),
(818, 38, 'attribute_pa_color', 'blue'),
(819, 38, 'attribute_logo', 'No'),
(820, 39, '_sku', 'Woo-tshirt-logo'),
(821, 39, '_regular_price', '18'),
(822, 39, '_sale_price', ''),
(823, 39, '_sale_price_dates_from', ''),
(824, 39, '_sale_price_dates_to', ''),
(825, 39, 'total_sales', '0'),
(826, 39, '_tax_status', 'taxable'),
(827, 39, '_tax_class', ''),
(828, 39, '_manage_stock', 'no'),
(829, 39, '_backorders', 'no'),
(830, 39, '_low_stock_amount', ''),
(831, 39, '_sold_individually', 'no'),
(832, 39, '_weight', ''),
(833, 39, '_length', ''),
(834, 39, '_width', ''),
(835, 39, '_height', ''),
(836, 39, '_upsell_ids', 'a:0:{}'),
(837, 39, '_crosssell_ids', 'a:0:{}'),
(838, 39, '_purchase_note', ''),
(839, 39, '_default_attributes', 'a:0:{}'),
(840, 39, '_virtual', 'no'),
(841, 39, '_downloadable', 'no'),
(842, 39, '_product_image_gallery', ''),
(843, 39, '_download_limit', '0'),
(844, 39, '_download_expiry', '0'),
(845, 39, '_stock', ''),
(846, 39, '_stock_status', 'instock'),
(847, 39, '_wc_average_rating', '0'),
(848, 39, '_wc_rating_count', 'a:0:{}'),
(849, 39, '_wc_review_count', '0'),
(850, 39, '_downloadable_files', 'a:0:{}'),
(851, 39, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(852, 39, '_product_version', '3.5.3'),
(853, 39, '_price', '18'),
(854, 39, '_thumbnail_id', '90'),
(855, 40, '_sku', 'Woo-beanie-logo'),
(856, 40, '_regular_price', '20'),
(857, 40, '_sale_price', '18'),
(858, 40, '_sale_price_dates_from', ''),
(859, 40, '_sale_price_dates_to', ''),
(860, 40, 'total_sales', '0'),
(861, 40, '_tax_status', 'taxable'),
(862, 40, '_tax_class', ''),
(863, 40, '_manage_stock', 'no'),
(864, 40, '_backorders', 'no'),
(865, 40, '_low_stock_amount', ''),
(866, 40, '_sold_individually', 'no'),
(867, 40, '_weight', ''),
(868, 40, '_length', ''),
(869, 40, '_width', ''),
(870, 40, '_height', ''),
(871, 40, '_upsell_ids', 'a:0:{}'),
(872, 40, '_crosssell_ids', 'a:0:{}'),
(873, 40, '_purchase_note', ''),
(874, 40, '_default_attributes', 'a:0:{}'),
(875, 40, '_virtual', 'no'),
(876, 40, '_downloadable', 'no'),
(877, 40, '_product_image_gallery', ''),
(878, 40, '_download_limit', '0'),
(879, 40, '_download_expiry', '0'),
(880, 40, '_stock', ''),
(881, 40, '_stock_status', 'instock'),
(882, 40, '_wc_average_rating', '0'),
(883, 40, '_wc_rating_count', 'a:0:{}'),
(884, 40, '_wc_review_count', '0'),
(885, 40, '_downloadable_files', 'a:0:{}'),
(886, 40, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(887, 40, '_product_version', '3.5.3'),
(888, 40, '_price', '18'),
(889, 40, '_thumbnail_id', '93'),
(890, 41, '_sku', 'logo-collection'),
(891, 41, '_sale_price_dates_from', ''),
(892, 41, '_sale_price_dates_to', ''),
(893, 41, 'total_sales', '0'),
(894, 41, '_tax_status', 'taxable'),
(895, 41, '_tax_class', ''),
(896, 41, '_manage_stock', 'no'),
(897, 41, '_backorders', 'no'),
(898, 41, '_low_stock_amount', ''),
(899, 41, '_sold_individually', 'no'),
(900, 41, '_weight', ''),
(901, 41, '_length', ''),
(902, 41, '_width', ''),
(903, 41, '_height', ''),
(904, 41, '_upsell_ids', 'a:0:{}'),
(905, 41, '_crosssell_ids', 'a:0:{}'),
(906, 41, '_purchase_note', ''),
(907, 41, '_default_attributes', 'a:0:{}'),
(908, 41, '_virtual', 'no'),
(909, 41, '_downloadable', 'no'),
(910, 41, '_product_image_gallery', '50,49,37'),
(911, 41, '_download_limit', '0'),
(912, 41, '_download_expiry', '0'),
(913, 41, '_stock', ''),
(914, 41, '_stock_status', 'instock'),
(915, 41, '_wc_average_rating', '0'),
(916, 41, '_wc_rating_count', 'a:0:{}'),
(917, 41, '_wc_review_count', '0'),
(918, 41, '_downloadable_files', 'a:0:{}'),
(919, 41, '_product_attributes', 'a:0:{}'),
(920, 41, '_product_version', '3.5.3'),
(921, 41, '_children', 'a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}'),
(922, 41, '_thumbnail_id', '96'),
(923, 41, '_price', '18'),
(924, 41, '_price', '45'),
(925, 42, '_sku', 'wp-pennant'),
(926, 42, '_regular_price', '11.05'),
(927, 42, '_sale_price', ''),
(928, 42, '_sale_price_dates_from', ''),
(929, 42, '_sale_price_dates_to', ''),
(930, 42, 'total_sales', '0'),
(931, 42, '_tax_status', 'taxable'),
(932, 42, '_tax_class', ''),
(933, 42, '_manage_stock', 'no'),
(934, 42, '_backorders', 'no'),
(935, 42, '_low_stock_amount', ''),
(936, 42, '_sold_individually', 'no'),
(937, 42, '_weight', ''),
(938, 42, '_length', ''),
(939, 42, '_width', ''),
(940, 42, '_height', ''),
(941, 42, '_upsell_ids', 'a:0:{}'),
(942, 42, '_crosssell_ids', 'a:0:{}'),
(943, 42, '_purchase_note', ''),
(944, 42, '_default_attributes', 'a:0:{}'),
(945, 42, '_virtual', 'no'),
(946, 42, '_downloadable', 'no'),
(947, 42, '_product_image_gallery', ''),
(948, 42, '_download_limit', '0'),
(949, 42, '_download_expiry', '0'),
(950, 42, '_stock', ''),
(951, 42, '_stock_status', 'instock'),
(952, 42, '_wc_average_rating', '0'),
(953, 42, '_wc_rating_count', 'a:0:{}'),
(954, 42, '_wc_review_count', '0'),
(955, 42, '_downloadable_files', 'a:0:{}'),
(956, 42, '_product_attributes', 'a:0:{}'),
(957, 42, '_product_version', '3.5.3'),
(958, 42, '_price', '11.05'),
(959, 42, '_thumbnail_id', '99'),
(960, 42, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(961, 42, '_button_text', 'Buy on the WordPress swag store!'),
(962, 43, '_sku', 'woo-hoodie-blue-logo'),
(963, 43, '_regular_price', '45'),
(964, 43, '_sale_price', ''),
(965, 43, '_sale_price_dates_from', ''),
(966, 43, '_sale_price_dates_to', ''),
(967, 43, 'total_sales', '0'),
(968, 43, '_tax_status', 'taxable'),
(969, 43, '_tax_class', ''),
(970, 43, '_manage_stock', 'no'),
(971, 43, '_backorders', 'no'),
(972, 43, '_low_stock_amount', ''),
(973, 43, '_sold_individually', 'no'),
(974, 43, '_weight', ''),
(975, 43, '_length', ''),
(976, 43, '_width', ''),
(977, 43, '_height', ''),
(978, 43, '_upsell_ids', 'a:0:{}'),
(979, 43, '_crosssell_ids', 'a:0:{}'),
(980, 43, '_purchase_note', ''),
(981, 43, '_default_attributes', 'a:0:{}'),
(982, 43, '_virtual', 'no'),
(983, 43, '_downloadable', 'no'),
(984, 43, '_product_image_gallery', ''),
(985, 43, '_download_limit', '0'),
(986, 43, '_download_expiry', '0'),
(987, 43, '_stock', ''),
(988, 43, '_stock_status', 'instock'),
(989, 43, '_wc_average_rating', '0'),
(990, 43, '_wc_rating_count', 'a:0:{}'),
(991, 43, '_wc_review_count', '0'),
(992, 43, '_downloadable_files', 'a:0:{}'),
(993, 43, '_product_attributes', 'a:0:{}'),
(994, 43, '_product_version', '3.5.3'),
(995, 43, '_price', '45'),
(996, 43, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(997, 43, '_thumbnail_id', '53'),
(998, 43, 'attribute_pa_color', 'blue'),
(999, 43, 'attribute_logo', 'Yes'),
(1000, 44, '_wp_attached_file', '2019/01/vneck-tee-2.jpg'),
(1001, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/01/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1002, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(1003, 45, '_wp_attached_file', '2019/01/vnech-tee-green-1.jpg'),
(1004, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2019/01/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1005, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(1006, 46, '_wp_attached_file', '2019/01/vnech-tee-blue-1.jpg'),
(1007, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2019/01/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1008, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(1009, 47, '_wp_attached_file', '2019/01/hoodie-2.jpg'),
(1010, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/hoodie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"hoodie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1011, 47, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(1012, 24, '_sku', 'woo-vneck-tee'),
(1013, 24, '_sale_price_dates_from', ''),
(1014, 24, '_sale_price_dates_to', ''),
(1015, 24, 'total_sales', '0'),
(1016, 24, '_tax_status', 'taxable'),
(1017, 24, '_tax_class', ''),
(1018, 24, '_manage_stock', 'no'),
(1019, 24, '_backorders', 'no'),
(1020, 24, '_low_stock_amount', ''),
(1021, 24, '_sold_individually', 'no'),
(1022, 24, '_weight', ''),
(1023, 24, '_length', ''),
(1024, 24, '_width', ''),
(1025, 24, '_height', ''),
(1026, 24, '_upsell_ids', 'a:0:{}'),
(1027, 24, '_crosssell_ids', 'a:0:{}'),
(1028, 24, '_purchase_note', ''),
(1029, 24, '_default_attributes', 'a:0:{}'),
(1030, 24, '_virtual', 'no'),
(1031, 24, '_downloadable', 'no'),
(1032, 24, '_product_image_gallery', '32,33'),
(1033, 24, '_download_limit', '0'),
(1034, 24, '_download_expiry', '0'),
(1035, 24, '_stock', ''),
(1036, 24, '_stock_status', 'instock'),
(1037, 24, '_wc_average_rating', '0'),
(1038, 24, '_wc_rating_count', 'a:0:{}'),
(1039, 24, '_wc_review_count', '0'),
(1040, 24, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1041, 24, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1042, 24, '_product_version', '3.5.3'),
(1043, 24, '_thumbnail_id', '44'),
(1044, 24, '_price', '15'),
(1045, 24, '_price', '20'),
(1046, 24, '_regular_price', ''),
(1047, 24, '_sale_price', ''),
(1048, 25, '_sku', 'woo-hoodie'),
(1049, 25, '_sale_price_dates_from', ''),
(1050, 25, '_sale_price_dates_to', ''),
(1051, 25, 'total_sales', '0'),
(1052, 25, '_tax_status', 'taxable'),
(1053, 25, '_tax_class', ''),
(1054, 25, '_manage_stock', 'no'),
(1055, 25, '_backorders', 'no'),
(1056, 25, '_low_stock_amount', ''),
(1057, 25, '_sold_individually', 'no'),
(1058, 25, '_weight', ''),
(1059, 25, '_length', ''),
(1060, 25, '_width', ''),
(1061, 25, '_height', ''),
(1062, 25, '_upsell_ids', 'a:0:{}'),
(1063, 25, '_crosssell_ids', 'a:0:{}'),
(1064, 25, '_purchase_note', ''),
(1065, 25, '_default_attributes', 'a:0:{}'),
(1066, 25, '_virtual', 'no'),
(1067, 25, '_downloadable', 'no'),
(1068, 25, '_product_image_gallery', '35,36,37'),
(1069, 25, '_download_limit', '0'),
(1070, 25, '_download_expiry', '0'),
(1071, 25, '_stock', ''),
(1072, 25, '_stock_status', 'instock'),
(1073, 25, '_wc_average_rating', '0'),
(1074, 25, '_wc_rating_count', 'a:0:{}'),
(1075, 25, '_wc_review_count', '0'),
(1076, 25, '_downloadable_files', 'a:0:{}'),
(1077, 25, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1078, 25, '_product_version', '3.5.3'),
(1079, 25, '_thumbnail_id', '47'),
(1080, 25, '_price', '42'),
(1081, 25, '_price', '45'),
(1082, 25, '_regular_price', ''),
(1083, 25, '_sale_price', ''),
(1084, 26, '_sku', 'woo-hoodie-with-logo'),
(1085, 26, '_regular_price', '45'),
(1086, 26, '_sale_price', ''),
(1087, 26, '_sale_price_dates_from', ''),
(1088, 26, '_sale_price_dates_to', ''),
(1089, 26, 'total_sales', '0'),
(1090, 26, '_tax_status', 'taxable'),
(1091, 26, '_tax_class', ''),
(1092, 26, '_manage_stock', 'no'),
(1093, 26, '_backorders', 'no'),
(1094, 26, '_low_stock_amount', ''),
(1095, 26, '_sold_individually', 'no'),
(1096, 26, '_weight', ''),
(1097, 26, '_length', ''),
(1098, 26, '_width', ''),
(1099, 26, '_height', ''),
(1100, 26, '_upsell_ids', 'a:0:{}'),
(1101, 26, '_crosssell_ids', 'a:0:{}'),
(1102, 26, '_purchase_note', ''),
(1103, 26, '_default_attributes', 'a:0:{}'),
(1104, 26, '_virtual', 'no'),
(1105, 26, '_downloadable', 'no'),
(1106, 26, '_product_image_gallery', ''),
(1107, 26, '_download_limit', '0'),
(1108, 26, '_download_expiry', '0'),
(1109, 26, '_stock', ''),
(1110, 26, '_stock_status', 'instock'),
(1111, 26, '_wc_average_rating', '0'),
(1112, 26, '_wc_rating_count', 'a:0:{}'),
(1113, 26, '_wc_review_count', '0'),
(1114, 26, '_downloadable_files', 'a:0:{}'),
(1115, 26, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1116, 26, '_product_version', '3.5.3'),
(1117, 26, '_price', '45'),
(1118, 26, '_thumbnail_id', '53'),
(1119, 27, '_sku', 'woo-tshirt'),
(1120, 27, '_regular_price', '18'),
(1121, 27, '_sale_price', ''),
(1122, 27, '_sale_price_dates_from', ''),
(1123, 27, '_sale_price_dates_to', ''),
(1124, 27, 'total_sales', '0'),
(1125, 27, '_tax_status', 'taxable'),
(1126, 27, '_tax_class', ''),
(1127, 27, '_manage_stock', 'no'),
(1128, 27, '_backorders', 'no'),
(1129, 27, '_low_stock_amount', ''),
(1130, 27, '_sold_individually', 'no'),
(1131, 27, '_weight', ''),
(1132, 27, '_length', ''),
(1133, 27, '_width', ''),
(1134, 27, '_height', ''),
(1135, 27, '_upsell_ids', 'a:0:{}'),
(1136, 27, '_crosssell_ids', 'a:0:{}'),
(1137, 27, '_purchase_note', ''),
(1138, 27, '_default_attributes', 'a:0:{}'),
(1139, 27, '_virtual', 'no'),
(1140, 27, '_downloadable', 'no'),
(1141, 27, '_product_image_gallery', ''),
(1142, 27, '_download_limit', '0'),
(1143, 27, '_download_expiry', '0'),
(1144, 27, '_stock', ''),
(1145, 27, '_stock_status', 'instock'),
(1146, 27, '_wc_average_rating', '0'),
(1147, 27, '_wc_rating_count', 'a:0:{}'),
(1148, 27, '_wc_review_count', '0'),
(1149, 27, '_downloadable_files', 'a:0:{}'),
(1150, 27, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1151, 27, '_product_version', '3.5.3'),
(1152, 27, '_price', '18'),
(1153, 27, '_thumbnail_id', '56'),
(1154, 28, '_sku', 'woo-beanie'),
(1155, 28, '_regular_price', '20'),
(1156, 28, '_sale_price', '18'),
(1157, 28, '_sale_price_dates_from', ''),
(1158, 28, '_sale_price_dates_to', ''),
(1159, 28, 'total_sales', '0'),
(1160, 28, '_tax_status', 'taxable'),
(1161, 28, '_tax_class', ''),
(1162, 28, '_manage_stock', 'no'),
(1163, 28, '_backorders', 'no'),
(1164, 28, '_low_stock_amount', ''),
(1165, 28, '_sold_individually', 'no'),
(1166, 28, '_weight', ''),
(1167, 28, '_length', ''),
(1168, 28, '_width', ''),
(1169, 28, '_height', ''),
(1170, 28, '_upsell_ids', 'a:0:{}'),
(1171, 28, '_crosssell_ids', 'a:0:{}'),
(1172, 28, '_purchase_note', ''),
(1173, 28, '_default_attributes', 'a:0:{}'),
(1174, 28, '_virtual', 'no'),
(1175, 28, '_downloadable', 'no'),
(1176, 28, '_product_image_gallery', ''),
(1177, 28, '_download_limit', '0'),
(1178, 28, '_download_expiry', '0'),
(1179, 28, '_stock', ''),
(1180, 28, '_stock_status', 'instock'),
(1181, 28, '_wc_average_rating', '0'),
(1182, 28, '_wc_rating_count', 'a:0:{}'),
(1183, 28, '_wc_review_count', '0'),
(1184, 28, '_downloadable_files', 'a:0:{}'),
(1185, 28, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1186, 28, '_product_version', '3.5.3'),
(1187, 28, '_price', '18'),
(1188, 28, '_thumbnail_id', '59'),
(1189, 29, '_sku', 'woo-belt'),
(1190, 29, '_regular_price', '65'),
(1191, 29, '_sale_price', '55'),
(1192, 29, '_sale_price_dates_from', ''),
(1193, 29, '_sale_price_dates_to', ''),
(1194, 29, 'total_sales', '0'),
(1195, 29, '_tax_status', 'taxable'),
(1196, 29, '_tax_class', ''),
(1197, 29, '_manage_stock', 'no'),
(1198, 29, '_backorders', 'no'),
(1199, 29, '_low_stock_amount', ''),
(1200, 29, '_sold_individually', 'no'),
(1201, 29, '_weight', ''),
(1202, 29, '_length', ''),
(1203, 29, '_width', ''),
(1204, 29, '_height', ''),
(1205, 29, '_upsell_ids', 'a:0:{}'),
(1206, 29, '_crosssell_ids', 'a:0:{}'),
(1207, 29, '_purchase_note', ''),
(1208, 29, '_default_attributes', 'a:0:{}'),
(1209, 29, '_virtual', 'no'),
(1210, 29, '_downloadable', 'no'),
(1211, 29, '_product_image_gallery', ''),
(1212, 29, '_download_limit', '0'),
(1213, 29, '_download_expiry', '0'),
(1214, 29, '_stock', ''),
(1215, 29, '_stock_status', 'instock'),
(1216, 29, '_wc_average_rating', '0'),
(1217, 29, '_wc_rating_count', 'a:0:{}'),
(1218, 29, '_wc_review_count', '0'),
(1219, 29, '_downloadable_files', 'a:0:{}'),
(1220, 29, '_product_attributes', 'a:0:{}'),
(1221, 29, '_product_version', '3.5.3'),
(1222, 29, '_price', '55'),
(1223, 29, '_thumbnail_id', '61'),
(1224, 30, '_sku', 'woo-cap'),
(1225, 30, '_regular_price', '18'),
(1226, 30, '_sale_price', '16'),
(1227, 30, '_sale_price_dates_from', ''),
(1228, 30, '_sale_price_dates_to', ''),
(1229, 30, 'total_sales', '0'),
(1230, 30, '_tax_status', 'taxable'),
(1231, 30, '_tax_class', ''),
(1232, 30, '_manage_stock', 'no'),
(1233, 30, '_backorders', 'no'),
(1234, 30, '_low_stock_amount', ''),
(1235, 30, '_sold_individually', 'no'),
(1236, 30, '_weight', ''),
(1237, 30, '_length', ''),
(1238, 30, '_width', ''),
(1239, 30, '_height', ''),
(1240, 30, '_upsell_ids', 'a:0:{}'),
(1241, 30, '_crosssell_ids', 'a:0:{}'),
(1242, 30, '_purchase_note', ''),
(1243, 30, '_default_attributes', 'a:0:{}'),
(1244, 30, '_virtual', 'no'),
(1245, 30, '_downloadable', 'no'),
(1246, 30, '_product_image_gallery', ''),
(1247, 30, '_download_limit', '0'),
(1248, 30, '_download_expiry', '0'),
(1249, 30, '_stock', ''),
(1250, 30, '_stock_status', 'instock'),
(1251, 30, '_wc_average_rating', '0'),
(1252, 30, '_wc_rating_count', 'a:0:{}'),
(1253, 30, '_wc_review_count', '0'),
(1254, 30, '_downloadable_files', 'a:0:{}'),
(1255, 30, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1256, 30, '_product_version', '3.5.3'),
(1257, 30, '_price', '16'),
(1258, 30, '_thumbnail_id', '65'),
(1259, 24, '_sku', 'woo-vneck-tee'),
(1260, 31, '_sku', 'woo-sunglasses'),
(1261, 24, '_sale_price_dates_from', ''),
(1262, 31, '_regular_price', '90'),
(1263, 24, '_sale_price_dates_to', ''),
(1264, 31, '_sale_price', ''),
(1265, 24, 'total_sales', '0'),
(1266, 31, '_sale_price_dates_from', ''),
(1267, 24, '_tax_status', 'taxable'),
(1268, 31, '_sale_price_dates_to', ''),
(1269, 24, '_tax_class', ''),
(1270, 31, 'total_sales', '0'),
(1271, 24, '_manage_stock', 'no'),
(1272, 31, '_tax_status', 'taxable'),
(1273, 24, '_backorders', 'no'),
(1274, 31, '_tax_class', ''),
(1275, 24, '_low_stock_amount', ''),
(1276, 31, '_manage_stock', 'no'),
(1277, 24, '_sold_individually', 'no'),
(1278, 31, '_backorders', 'no'),
(1279, 24, '_weight', ''),
(1280, 31, '_low_stock_amount', ''),
(1281, 24, '_length', ''),
(1282, 31, '_sold_individually', 'no'),
(1283, 24, '_width', ''),
(1284, 31, '_weight', ''),
(1285, 24, '_height', ''),
(1286, 31, '_length', ''),
(1287, 24, '_upsell_ids', 'a:0:{}'),
(1288, 31, '_width', ''),
(1289, 31, '_height', ''),
(1290, 24, '_crosssell_ids', 'a:0:{}'),
(1291, 31, '_upsell_ids', 'a:0:{}'),
(1292, 24, '_purchase_note', ''),
(1293, 31, '_crosssell_ids', 'a:0:{}'),
(1294, 24, '_default_attributes', 'a:0:{}'),
(1295, 31, '_purchase_note', ''),
(1296, 24, '_virtual', 'no'),
(1297, 31, '_default_attributes', 'a:0:{}'),
(1298, 24, '_downloadable', 'no'),
(1299, 31, '_virtual', 'no'),
(1300, 24, '_product_image_gallery', '32,33'),
(1301, 31, '_downloadable', 'no'),
(1302, 24, '_download_limit', '0'),
(1303, 31, '_product_image_gallery', ''),
(1304, 24, '_download_expiry', '0'),
(1305, 31, '_download_limit', '0'),
(1306, 24, '_stock', ''),
(1307, 31, '_download_expiry', '0'),
(1308, 24, '_stock_status', 'instock'),
(1309, 31, '_stock', ''),
(1310, 24, '_wc_average_rating', '0'),
(1311, 31, '_stock_status', 'instock'),
(1312, 24, '_wc_rating_count', 'a:0:{}'),
(1313, 31, '_wc_average_rating', '0'),
(1314, 24, '_wc_review_count', '0'),
(1315, 31, '_wc_rating_count', 'a:0:{}'),
(1316, 24, '_downloadable_files', 'a:0:{}'),
(1317, 31, '_wc_review_count', '0'),
(1318, 24, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1319, 31, '_downloadable_files', 'a:0:{}'),
(1320, 24, '_product_version', '3.5.3'),
(1321, 31, '_product_attributes', 'a:0:{}'),
(1322, 24, '_thumbnail_id', '44'),
(1323, 31, '_product_version', '3.5.3'),
(1324, 24, '_price', '15'),
(1325, 31, '_price', '90'),
(1326, 24, '_price', '20'),
(1327, 31, '_thumbnail_id', '68'),
(1328, 24, '_regular_price', ''),
(1329, 24, '_sale_price', ''),
(1330, 32, '_sku', 'woo-hoodie-with-pocket'),
(1331, 32, '_regular_price', '45'),
(1332, 32, '_sale_price', '35'),
(1333, 32, '_sale_price_dates_from', ''),
(1334, 25, '_sku', 'woo-hoodie'),
(1335, 32, '_sale_price_dates_to', ''),
(1336, 25, '_sale_price_dates_from', ''),
(1337, 32, 'total_sales', '0'),
(1338, 25, '_sale_price_dates_to', ''),
(1339, 32, '_tax_status', 'taxable'),
(1340, 25, 'total_sales', '0'),
(1341, 32, '_tax_class', ''),
(1342, 25, '_tax_status', 'taxable'),
(1343, 32, '_manage_stock', 'no'),
(1344, 25, '_tax_class', ''),
(1345, 32, '_backorders', 'no'),
(1346, 25, '_manage_stock', 'no'),
(1347, 32, '_low_stock_amount', ''),
(1348, 25, '_backorders', 'no'),
(1349, 32, '_sold_individually', 'no'),
(1350, 25, '_low_stock_amount', ''),
(1351, 32, '_weight', ''),
(1352, 25, '_sold_individually', 'no'),
(1353, 32, '_length', ''),
(1354, 25, '_weight', ''),
(1355, 32, '_width', ''),
(1356, 25, '_length', ''),
(1357, 32, '_height', ''),
(1358, 25, '_width', ''),
(1359, 32, '_upsell_ids', 'a:0:{}'),
(1360, 25, '_height', ''),
(1361, 32, '_crosssell_ids', 'a:0:{}'),
(1362, 25, '_upsell_ids', 'a:0:{}'),
(1363, 32, '_purchase_note', ''),
(1364, 25, '_crosssell_ids', 'a:0:{}'),
(1365, 32, '_default_attributes', 'a:0:{}'),
(1366, 25, '_purchase_note', ''),
(1367, 32, '_virtual', 'no'),
(1368, 25, '_default_attributes', 'a:0:{}'),
(1369, 32, '_downloadable', 'no'),
(1370, 25, '_virtual', 'no'),
(1371, 32, '_product_image_gallery', ''),
(1372, 25, '_downloadable', 'no'),
(1373, 32, '_download_limit', '0'),
(1374, 25, '_product_image_gallery', '35,36,37'),
(1375, 32, '_download_expiry', '0'),
(1376, 25, '_download_limit', '0'),
(1377, 32, '_stock', ''),
(1378, 25, '_download_expiry', '0'),
(1379, 32, '_stock_status', 'instock'),
(1380, 25, '_stock', ''),
(1381, 32, '_wc_average_rating', '0'),
(1382, 25, '_stock_status', 'instock'),
(1383, 32, '_wc_rating_count', 'a:0:{}'),
(1384, 25, '_wc_average_rating', '0'),
(1385, 32, '_wc_review_count', '0'),
(1386, 25, '_wc_rating_count', 'a:0:{}'),
(1387, 32, '_downloadable_files', 'a:0:{}'),
(1388, 25, '_wc_review_count', '0'),
(1389, 32, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1390, 25, '_downloadable_files', 'a:0:{}'),
(1391, 32, '_product_version', '3.5.3'),
(1392, 25, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1393, 32, '_price', '35'),
(1394, 25, '_product_version', '3.5.3'),
(1395, 32, '_thumbnail_id', '71'),
(1396, 25, '_thumbnail_id', '47'),
(1397, 25, '_price', '42'),
(1398, 25, '_price', '45'),
(1399, 25, '_regular_price', ''),
(1400, 25, '_sale_price', ''),
(1401, 33, '_sku', 'woo-hoodie-with-zipper'),
(1402, 33, '_regular_price', '45'),
(1403, 33, '_sale_price', ''),
(1404, 33, '_sale_price_dates_from', ''),
(1405, 33, '_sale_price_dates_to', ''),
(1406, 33, 'total_sales', '0'),
(1407, 26, '_sku', 'woo-hoodie-with-logo'),
(1408, 33, '_tax_status', 'taxable'),
(1409, 26, '_regular_price', '45'),
(1410, 33, '_tax_class', ''),
(1411, 26, '_sale_price', ''),
(1412, 33, '_manage_stock', 'no'),
(1413, 26, '_sale_price_dates_from', ''),
(1414, 33, '_backorders', 'no'),
(1415, 26, '_sale_price_dates_to', ''),
(1416, 33, '_low_stock_amount', ''),
(1417, 26, 'total_sales', '0'),
(1418, 33, '_sold_individually', 'no'),
(1419, 26, '_tax_status', 'taxable'),
(1420, 33, '_weight', ''),
(1421, 26, '_tax_class', ''),
(1422, 33, '_length', ''),
(1423, 26, '_manage_stock', 'no'),
(1424, 33, '_width', ''),
(1425, 26, '_backorders', 'no'),
(1426, 33, '_height', ''),
(1427, 26, '_low_stock_amount', ''),
(1428, 33, '_upsell_ids', 'a:0:{}'),
(1429, 26, '_sold_individually', 'no'),
(1430, 33, '_crosssell_ids', 'a:0:{}'),
(1431, 26, '_weight', ''),
(1432, 33, '_purchase_note', ''),
(1433, 26, '_length', ''),
(1434, 33, '_default_attributes', 'a:0:{}'),
(1435, 26, '_width', ''),
(1436, 33, '_virtual', 'no'),
(1437, 26, '_height', ''),
(1438, 33, '_downloadable', 'no'),
(1439, 26, '_upsell_ids', 'a:0:{}'),
(1440, 33, '_product_image_gallery', ''),
(1441, 26, '_crosssell_ids', 'a:0:{}'),
(1442, 33, '_download_limit', '0'),
(1443, 26, '_purchase_note', ''),
(1444, 33, '_download_expiry', '0'),
(1445, 26, '_default_attributes', 'a:0:{}'),
(1446, 33, '_stock', ''),
(1447, 26, '_virtual', 'no'),
(1448, 33, '_stock_status', 'instock'),
(1449, 26, '_downloadable', 'no'),
(1450, 33, '_wc_average_rating', '0'),
(1451, 26, '_product_image_gallery', ''),
(1452, 33, '_wc_rating_count', 'a:0:{}'),
(1453, 26, '_download_limit', '0'),
(1454, 33, '_wc_review_count', '0'),
(1455, 26, '_download_expiry', '0'),
(1456, 33, '_downloadable_files', 'a:0:{}'),
(1457, 26, '_stock', ''),
(1458, 33, '_product_attributes', 'a:0:{}'),
(1459, 26, '_stock_status', 'instock'),
(1460, 33, '_product_version', '3.5.3'),
(1461, 26, '_wc_average_rating', '0'),
(1462, 33, '_price', '45'),
(1463, 26, '_wc_rating_count', 'a:0:{}'),
(1464, 33, '_thumbnail_id', '74'),
(1465, 26, '_wc_review_count', '0'),
(1466, 26, '_downloadable_files', 'a:0:{}'),
(1467, 26, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1468, 26, '_product_version', '3.5.3'),
(1469, 26, '_price', '45'),
(1470, 26, '_thumbnail_id', '53'),
(1471, 16, '_sku', 'woo-long-sleeve-tee'),
(1472, 16, '_regular_price', '25'),
(1473, 16, '_sale_price', ''),
(1474, 16, '_sale_price_dates_from', ''),
(1475, 16, '_sale_price_dates_to', ''),
(1476, 16, 'total_sales', '0'),
(1477, 27, '_sku', 'woo-tshirt'),
(1478, 16, '_tax_status', 'taxable'),
(1479, 27, '_regular_price', '18'),
(1480, 16, '_tax_class', ''),
(1481, 27, '_sale_price', ''),
(1482, 16, '_manage_stock', 'no'),
(1483, 27, '_sale_price_dates_from', ''),
(1484, 16, '_backorders', 'no'),
(1485, 27, '_sale_price_dates_to', ''),
(1486, 16, '_low_stock_amount', ''),
(1487, 27, 'total_sales', '0'),
(1488, 16, '_sold_individually', 'no'),
(1489, 27, '_tax_status', 'taxable'),
(1490, 16, '_weight', ''),
(1491, 27, '_tax_class', ''),
(1492, 16, '_length', ''),
(1493, 27, '_manage_stock', 'no'),
(1494, 16, '_width', ''),
(1495, 27, '_backorders', 'no'),
(1496, 16, '_height', ''),
(1497, 27, '_low_stock_amount', ''),
(1498, 16, '_upsell_ids', 'a:0:{}'),
(1499, 27, '_sold_individually', 'no'),
(1500, 16, '_crosssell_ids', 'a:0:{}'),
(1501, 27, '_weight', ''),
(1502, 16, '_purchase_note', ''),
(1503, 27, '_length', ''),
(1504, 16, '_default_attributes', 'a:0:{}'),
(1505, 27, '_width', ''),
(1506, 16, '_virtual', 'no'),
(1507, 27, '_height', ''),
(1508, 16, '_downloadable', 'no'),
(1509, 27, '_upsell_ids', 'a:0:{}'),
(1510, 16, '_product_image_gallery', ''),
(1511, 27, '_crosssell_ids', 'a:0:{}'),
(1512, 16, '_download_limit', '0'),
(1513, 27, '_purchase_note', ''),
(1514, 16, '_download_expiry', '0'),
(1515, 27, '_default_attributes', 'a:0:{}'),
(1516, 16, '_stock', ''),
(1517, 27, '_virtual', 'no'),
(1518, 16, '_stock_status', 'instock'),
(1519, 27, '_downloadable', 'no'),
(1520, 16, '_wc_average_rating', '0'),
(1521, 27, '_product_image_gallery', ''),
(1522, 16, '_wc_rating_count', 'a:0:{}'),
(1523, 27, '_download_limit', '0'),
(1524, 16, '_wc_review_count', '0'),
(1525, 27, '_download_expiry', '0'),
(1526, 16, '_downloadable_files', 'a:0:{}'),
(1527, 27, '_stock', ''),
(1528, 16, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1529, 27, '_stock_status', 'instock'),
(1530, 16, '_product_version', '3.5.3'),
(1531, 27, '_wc_average_rating', '0'),
(1532, 16, '_price', '25'),
(1533, 27, '_wc_rating_count', 'a:0:{}'),
(1534, 16, '_thumbnail_id', '77'),
(1535, 27, '_wc_review_count', '0'),
(1536, 27, '_downloadable_files', 'a:0:{}'),
(1537, 27, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1538, 27, '_product_version', '3.5.3'),
(1539, 27, '_price', '18'),
(1540, 27, '_thumbnail_id', '56'),
(1541, 17, '_sku', 'woo-polo'),
(1542, 17, '_regular_price', '20'),
(1543, 17, '_sale_price', ''),
(1544, 17, '_sale_price_dates_from', ''),
(1545, 17, '_sale_price_dates_to', ''),
(1546, 17, 'total_sales', '0'),
(1547, 28, '_sku', 'woo-beanie'),
(1548, 17, '_tax_status', 'taxable'),
(1549, 28, '_regular_price', '20'),
(1550, 17, '_tax_class', ''),
(1551, 28, '_sale_price', '18'),
(1552, 17, '_manage_stock', 'no'),
(1553, 28, '_sale_price_dates_from', ''),
(1554, 17, '_backorders', 'no'),
(1555, 28, '_sale_price_dates_to', ''),
(1556, 17, '_low_stock_amount', ''),
(1557, 28, 'total_sales', '0'),
(1558, 17, '_sold_individually', 'no'),
(1559, 28, '_tax_status', 'taxable'),
(1560, 17, '_weight', ''),
(1561, 28, '_tax_class', ''),
(1562, 17, '_length', ''),
(1563, 28, '_manage_stock', 'no'),
(1564, 17, '_width', ''),
(1565, 28, '_backorders', 'no'),
(1566, 17, '_height', ''),
(1567, 28, '_low_stock_amount', ''),
(1568, 17, '_upsell_ids', 'a:0:{}'),
(1569, 28, '_sold_individually', 'no'),
(1570, 17, '_crosssell_ids', 'a:0:{}'),
(1571, 28, '_weight', ''),
(1572, 17, '_purchase_note', ''),
(1573, 28, '_length', ''),
(1574, 17, '_default_attributes', 'a:0:{}'),
(1575, 28, '_width', ''),
(1576, 17, '_virtual', 'no'),
(1577, 28, '_height', ''),
(1578, 17, '_downloadable', 'no'),
(1579, 28, '_upsell_ids', 'a:0:{}'),
(1580, 17, '_product_image_gallery', ''),
(1581, 28, '_crosssell_ids', 'a:0:{}'),
(1582, 17, '_download_limit', '0'),
(1583, 28, '_purchase_note', ''),
(1584, 17, '_download_expiry', '0'),
(1585, 28, '_default_attributes', 'a:0:{}'),
(1586, 17, '_stock', ''),
(1587, 28, '_virtual', 'no'),
(1588, 17, '_stock_status', 'instock'),
(1589, 28, '_downloadable', 'no'),
(1590, 17, '_wc_average_rating', '0'),
(1591, 28, '_product_image_gallery', ''),
(1592, 17, '_wc_rating_count', 'a:0:{}'),
(1593, 28, '_download_limit', '0'),
(1594, 17, '_wc_review_count', '0'),
(1595, 28, '_download_expiry', '0'),
(1596, 17, '_downloadable_files', 'a:0:{}'),
(1597, 28, '_stock', ''),
(1598, 17, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1599, 28, '_stock_status', 'instock'),
(1600, 17, '_product_version', '3.5.3'),
(1601, 28, '_wc_average_rating', '0'),
(1602, 17, '_price', '20'),
(1603, 28, '_wc_rating_count', 'a:0:{}'),
(1604, 17, '_thumbnail_id', '81'),
(1605, 28, '_wc_review_count', '0'),
(1606, 28, '_downloadable_files', 'a:0:{}'),
(1607, 28, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1608, 28, '_product_version', '3.5.3'),
(1609, 28, '_price', '18'),
(1610, 28, '_thumbnail_id', '59'),
(1611, 18, '_sku', 'woo-album'),
(1612, 29, '_sku', 'woo-belt'),
(1613, 18, '_regular_price', '15'),
(1614, 29, '_regular_price', '65'),
(1615, 18, '_sale_price', ''),
(1616, 29, '_sale_price', '55'),
(1617, 18, '_sale_price_dates_from', ''),
(1618, 29, '_sale_price_dates_from', ''),
(1619, 18, '_sale_price_dates_to', ''),
(1620, 29, '_sale_price_dates_to', ''),
(1621, 18, 'total_sales', '0'),
(1622, 29, 'total_sales', '0'),
(1623, 18, '_tax_status', 'taxable'),
(1624, 29, '_tax_status', 'taxable'),
(1625, 18, '_tax_class', ''),
(1626, 29, '_tax_class', ''),
(1627, 18, '_manage_stock', 'no'),
(1628, 29, '_manage_stock', 'no'),
(1629, 18, '_backorders', 'no'),
(1630, 29, '_backorders', 'no'),
(1631, 18, '_low_stock_amount', ''),
(1632, 29, '_low_stock_amount', ''),
(1633, 18, '_sold_individually', 'no'),
(1634, 29, '_sold_individually', 'no'),
(1635, 18, '_weight', ''),
(1636, 29, '_weight', ''),
(1637, 18, '_length', ''),
(1638, 29, '_length', ''),
(1639, 18, '_width', ''),
(1640, 29, '_width', ''),
(1641, 18, '_height', ''),
(1642, 29, '_height', ''),
(1643, 18, '_upsell_ids', 'a:0:{}'),
(1644, 29, '_upsell_ids', 'a:0:{}'),
(1645, 18, '_crosssell_ids', 'a:0:{}'),
(1646, 29, '_crosssell_ids', 'a:0:{}'),
(1647, 18, '_purchase_note', ''),
(1648, 29, '_purchase_note', ''),
(1649, 18, '_default_attributes', 'a:0:{}'),
(1650, 29, '_default_attributes', 'a:0:{}'),
(1651, 18, '_virtual', 'yes'),
(1652, 29, '_virtual', 'no'),
(1653, 18, '_downloadable', 'yes'),
(1654, 29, '_downloadable', 'no'),
(1655, 18, '_product_image_gallery', ''),
(1656, 29, '_product_image_gallery', ''),
(1657, 18, '_download_limit', '1'),
(1658, 29, '_download_limit', '0'),
(1659, 18, '_download_expiry', '1'),
(1660, 29, '_download_expiry', '0'),
(1661, 18, '_stock', ''),
(1662, 29, '_stock', ''),
(1663, 18, '_stock_status', 'instock'),
(1664, 29, '_stock_status', 'instock'),
(1665, 18, '_wc_average_rating', '0'),
(1666, 29, '_wc_average_rating', '0'),
(1667, 18, '_wc_rating_count', 'a:0:{}'),
(1668, 29, '_wc_rating_count', 'a:0:{}'),
(1669, 18, '_wc_review_count', '0'),
(1670, 29, '_wc_review_count', '0'),
(1671, 18, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(1672, 29, '_downloadable_files', 'a:0:{}'),
(1673, 18, '_product_attributes', 'a:0:{}'),
(1674, 29, '_product_attributes', 'a:0:{}'),
(1675, 18, '_product_version', '3.5.3'),
(1676, 29, '_product_version', '3.5.3'),
(1677, 18, '_price', '15'),
(1678, 29, '_price', '55'),
(1679, 18, '_thumbnail_id', '84'),
(1680, 29, '_thumbnail_id', '61'),
(1681, 19, '_sku', 'woo-single'),
(1682, 19, '_regular_price', '3'),
(1683, 19, '_sale_price', '2'),
(1684, 19, '_sale_price_dates_from', ''),
(1685, 19, '_sale_price_dates_to', ''),
(1686, 19, 'total_sales', '0'),
(1687, 30, '_sku', 'woo-cap'),
(1688, 19, '_tax_status', 'taxable'),
(1689, 30, '_regular_price', '18'),
(1690, 19, '_tax_class', ''),
(1691, 30, '_sale_price', '16'),
(1692, 19, '_manage_stock', 'no'),
(1693, 30, '_sale_price_dates_from', ''),
(1694, 19, '_backorders', 'no'),
(1695, 30, '_sale_price_dates_to', ''),
(1696, 19, '_low_stock_amount', ''),
(1697, 30, 'total_sales', '0'),
(1698, 19, '_sold_individually', 'no'),
(1699, 30, '_tax_status', 'taxable'),
(1700, 19, '_weight', ''),
(1701, 30, '_tax_class', ''),
(1702, 19, '_length', ''),
(1703, 30, '_manage_stock', 'no'),
(1704, 19, '_width', ''),
(1705, 30, '_backorders', 'no'),
(1706, 19, '_height', ''),
(1707, 30, '_low_stock_amount', ''),
(1708, 19, '_upsell_ids', 'a:0:{}'),
(1709, 30, '_sold_individually', 'no'),
(1710, 19, '_crosssell_ids', 'a:0:{}'),
(1711, 30, '_weight', ''),
(1712, 19, '_purchase_note', ''),
(1713, 30, '_length', ''),
(1714, 19, '_default_attributes', 'a:0:{}'),
(1715, 30, '_width', ''),
(1716, 19, '_virtual', 'yes'),
(1717, 30, '_height', ''),
(1718, 19, '_downloadable', 'yes'),
(1719, 30, '_upsell_ids', 'a:0:{}'),
(1720, 19, '_product_image_gallery', ''),
(1721, 30, '_crosssell_ids', 'a:0:{}'),
(1722, 19, '_download_limit', '1'),
(1723, 30, '_purchase_note', ''),
(1724, 19, '_download_expiry', '1'),
(1725, 30, '_default_attributes', 'a:0:{}'),
(1726, 19, '_stock', ''),
(1727, 30, '_virtual', 'no'),
(1728, 19, '_stock_status', 'instock'),
(1729, 30, '_downloadable', 'no'),
(1730, 19, '_wc_average_rating', '0'),
(1731, 30, '_product_image_gallery', ''),
(1732, 19, '_wc_rating_count', 'a:0:{}'),
(1733, 30, '_download_limit', '0'),
(1734, 19, '_wc_review_count', '0'),
(1735, 30, '_download_expiry', '0'),
(1736, 19, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(1737, 30, '_stock', ''),
(1738, 19, '_product_attributes', 'a:0:{}'),
(1739, 30, '_stock_status', 'instock'),
(1740, 19, '_product_version', '3.5.3'),
(1741, 30, '_wc_average_rating', '0'),
(1742, 19, '_price', '2'),
(1743, 30, '_wc_rating_count', 'a:0:{}'),
(1744, 19, '_thumbnail_id', '87'),
(1745, 30, '_wc_review_count', '0'),
(1746, 30, '_downloadable_files', 'a:0:{}'),
(1747, 20, '_sku', 'woo-vneck-tee-red'),
(1748, 30, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1749, 20, '_regular_price', '20'),
(1750, 30, '_product_version', '3.5.3'),
(1751, 20, '_sale_price', ''),
(1752, 30, '_price', '16'),
(1753, 20, '_sale_price_dates_from', ''),
(1754, 30, '_thumbnail_id', '65'),
(1755, 20, '_sale_price_dates_to', ''),
(1756, 20, 'total_sales', '0'),
(1757, 20, '_tax_status', 'taxable'),
(1758, 20, '_tax_class', ''),
(1759, 20, '_manage_stock', 'no'),
(1760, 20, '_backorders', 'no'),
(1761, 20, '_low_stock_amount', ''),
(1762, 20, '_sold_individually', 'no'),
(1763, 20, '_weight', ''),
(1764, 20, '_length', ''),
(1765, 20, '_width', ''),
(1766, 20, '_height', ''),
(1767, 31, '_sku', 'woo-sunglasses'),
(1768, 20, '_upsell_ids', 'a:0:{}'),
(1769, 31, '_regular_price', '90'),
(1770, 20, '_crosssell_ids', 'a:0:{}'),
(1771, 31, '_sale_price', ''),
(1772, 20, '_purchase_note', ''),
(1773, 31, '_sale_price_dates_from', ''),
(1774, 20, '_default_attributes', 'a:0:{}'),
(1775, 31, '_sale_price_dates_to', ''),
(1776, 20, '_virtual', 'no'),
(1777, 31, 'total_sales', '0'),
(1778, 20, '_downloadable', 'no'),
(1779, 31, '_tax_status', 'taxable'),
(1780, 20, '_product_image_gallery', ''),
(1781, 31, '_tax_class', ''),
(1782, 20, '_download_limit', '0'),
(1783, 31, '_manage_stock', 'no'),
(1784, 20, '_download_expiry', '0'),
(1785, 31, '_backorders', 'no'),
(1786, 20, '_stock', ''),
(1787, 31, '_low_stock_amount', ''),
(1788, 20, '_stock_status', 'instock'),
(1789, 31, '_sold_individually', 'no'),
(1790, 20, '_wc_average_rating', '0'),
(1791, 31, '_weight', ''),
(1792, 20, '_wc_rating_count', 'a:0:{}'),
(1793, 31, '_length', ''),
(1794, 20, '_wc_review_count', '0'),
(1795, 31, '_width', ''),
(1796, 20, '_downloadable_files', 'a:0:{}'),
(1797, 31, '_height', ''),
(1798, 20, '_product_attributes', 'a:0:{}'),
(1799, 31, '_upsell_ids', 'a:0:{}'),
(1800, 20, '_product_version', '3.5.3'),
(1801, 31, '_crosssell_ids', 'a:0:{}'),
(1802, 20, '_price', '20'),
(1803, 31, '_purchase_note', ''),
(1804, 20, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1805, 31, '_default_attributes', 'a:0:{}'),
(1806, 20, '_thumbnail_id', '44'),
(1807, 31, '_virtual', 'no'),
(1808, 20, 'attribute_pa_color', 'red'),
(1809, 31, '_downloadable', 'no'),
(1810, 20, 'attribute_pa_size', ''),
(1811, 31, '_product_image_gallery', ''),
(1812, 31, '_download_limit', '0'),
(1813, 31, '_download_expiry', '0'),
(1814, 34, '_sku', 'woo-vneck-tee-green'),
(1815, 31, '_stock', ''),
(1816, 34, '_regular_price', '20'),
(1817, 31, '_stock_status', 'instock'),
(1818, 34, '_sale_price', ''),
(1819, 31, '_wc_average_rating', '0'),
(1820, 34, '_sale_price_dates_from', ''),
(1821, 31, '_wc_rating_count', 'a:0:{}'),
(1822, 34, '_sale_price_dates_to', ''),
(1823, 31, '_wc_review_count', '0'),
(1824, 34, 'total_sales', '0'),
(1825, 31, '_downloadable_files', 'a:0:{}'),
(1826, 34, '_tax_status', 'taxable'),
(1827, 31, '_product_attributes', 'a:0:{}'),
(1828, 34, '_tax_class', ''),
(1829, 31, '_product_version', '3.5.3'),
(1830, 34, '_manage_stock', 'no'),
(1831, 31, '_price', '90'),
(1832, 34, '_backorders', 'no'),
(1833, 31, '_thumbnail_id', '68'),
(1834, 34, '_low_stock_amount', ''),
(1835, 34, '_sold_individually', 'no'),
(1836, 34, '_weight', ''),
(1837, 34, '_length', ''),
(1838, 34, '_width', ''),
(1839, 34, '_height', ''),
(1840, 48, '_wp_attached_file', '2019/01/hoodie-blue-1.jpg'),
(1841, 34, '_upsell_ids', 'a:0:{}'),
(1842, 34, '_crosssell_ids', 'a:0:{}'),
(1843, 34, '_purchase_note', ''),
(1844, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2019/01/hoodie-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1845, 34, '_default_attributes', 'a:0:{}'),
(1846, 34, '_virtual', 'no'),
(1847, 34, '_downloadable', 'no'),
(1848, 34, '_product_image_gallery', ''),
(1849, 34, '_download_limit', '0'),
(1850, 34, '_download_expiry', '0'),
(1851, 34, '_stock', ''),
(1852, 34, '_stock_status', 'instock'),
(1853, 32, '_sku', 'woo-hoodie-with-pocket'),
(1854, 34, '_wc_average_rating', '0'),
(1855, 32, '_regular_price', '45'),
(1856, 34, '_wc_rating_count', 'a:0:{}'),
(1857, 32, '_sale_price', '35'),
(1858, 34, '_wc_review_count', '0'),
(1859, 32, '_sale_price_dates_from', ''),
(1860, 34, '_downloadable_files', 'a:0:{}'),
(1861, 32, '_sale_price_dates_to', ''),
(1862, 34, '_product_attributes', 'a:0:{}'),
(1863, 32, 'total_sales', '0'),
(1864, 34, '_product_version', '3.5.3'),
(1865, 32, '_tax_status', 'taxable'),
(1866, 34, '_price', '20'),
(1867, 32, '_tax_class', ''),
(1868, 34, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1869, 32, '_manage_stock', 'no'),
(1870, 34, '_thumbnail_id', '45'),
(1871, 32, '_backorders', 'no'),
(1872, 34, 'attribute_pa_color', 'green'),
(1873, 32, '_low_stock_amount', ''),
(1874, 34, 'attribute_pa_size', ''),
(1875, 32, '_sold_individually', 'no'),
(1876, 32, '_weight', ''),
(1877, 35, '_sku', 'woo-vneck-tee-blue'),
(1878, 32, '_length', ''),
(1879, 35, '_regular_price', '15'),
(1880, 32, '_width', ''),
(1881, 35, '_sale_price', ''),
(1882, 32, '_height', ''),
(1883, 35, '_sale_price_dates_from', ''),
(1884, 32, '_upsell_ids', 'a:0:{}'),
(1885, 35, '_sale_price_dates_to', ''),
(1886, 32, '_crosssell_ids', 'a:0:{}'),
(1887, 35, 'total_sales', '0'),
(1888, 32, '_purchase_note', ''),
(1889, 35, '_tax_status', 'taxable'),
(1890, 32, '_default_attributes', 'a:0:{}'),
(1891, 35, '_tax_class', ''),
(1892, 32, '_virtual', 'no'),
(1893, 35, '_manage_stock', 'no'),
(1894, 32, '_downloadable', 'no'),
(1895, 35, '_backorders', 'no'),
(1896, 32, '_product_image_gallery', ''),
(1897, 35, '_low_stock_amount', ''),
(1898, 32, '_download_limit', '0'),
(1899, 35, '_sold_individually', 'no'),
(1900, 32, '_download_expiry', '0'),
(1901, 35, '_weight', ''),
(1902, 32, '_stock', ''),
(1903, 35, '_length', ''),
(1904, 32, '_stock_status', 'instock'),
(1905, 35, '_width', ''),
(1906, 32, '_wc_average_rating', '0'),
(1907, 35, '_height', ''),
(1908, 32, '_wc_rating_count', 'a:0:{}'),
(1909, 35, '_upsell_ids', 'a:0:{}'),
(1910, 32, '_wc_review_count', '0'),
(1911, 35, '_crosssell_ids', 'a:0:{}'),
(1912, 32, '_downloadable_files', 'a:0:{}'),
(1913, 35, '_purchase_note', ''),
(1914, 32, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1915, 35, '_default_attributes', 'a:0:{}'),
(1916, 32, '_product_version', '3.5.3'),
(1917, 35, '_virtual', 'no'),
(1918, 32, '_price', '35'),
(1919, 35, '_downloadable', 'no'),
(1920, 32, '_thumbnail_id', '71'),
(1921, 35, '_product_image_gallery', ''),
(1922, 35, '_download_limit', '0'),
(1923, 35, '_download_expiry', '0'),
(1924, 35, '_stock', ''),
(1925, 35, '_stock_status', 'instock'),
(1926, 35, '_wc_average_rating', '0'),
(1927, 35, '_wc_rating_count', 'a:0:{}'),
(1928, 35, '_wc_review_count', '0'),
(1929, 35, '_downloadable_files', 'a:0:{}'),
(1930, 35, '_product_attributes', 'a:0:{}'),
(1931, 35, '_product_version', '3.5.3'),
(1932, 35, '_price', '15'),
(1933, 35, '_wpcom_is_markdown', ''),
(1934, 33, '_sku', 'woo-hoodie-with-zipper'),
(1935, 35, '_wp_old_slug', 'import-placeholder-for-78'),
(1936, 33, '_regular_price', '45'),
(1937, 35, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(1938, 33, '_sale_price', ''),
(1939, 35, '_thumbnail_id', '46'),
(1940, 33, '_sale_price_dates_from', ''),
(1941, 35, 'attribute_pa_color', 'blue'),
(1942, 33, '_sale_price_dates_to', ''),
(1943, 35, 'attribute_pa_size', ''),
(1944, 33, 'total_sales', '0'),
(1945, 33, '_tax_status', 'taxable'),
(1946, 36, '_sku', 'woo-hoodie-red'),
(1947, 33, '_tax_class', ''),
(1948, 36, '_regular_price', '45'),
(1949, 33, '_manage_stock', 'no'),
(1950, 36, '_sale_price', '42'),
(1951, 33, '_backorders', 'no'),
(1952, 36, '_sale_price_dates_from', ''),
(1953, 33, '_low_stock_amount', ''),
(1954, 36, '_sale_price_dates_to', ''),
(1955, 33, '_sold_individually', 'no'),
(1956, 36, 'total_sales', '0'),
(1957, 33, '_weight', ''),
(1958, 36, '_tax_status', 'taxable'),
(1959, 33, '_length', ''),
(1960, 36, '_tax_class', ''),
(1961, 33, '_width', ''),
(1962, 36, '_manage_stock', 'no'),
(1963, 33, '_height', ''),
(1964, 36, '_backorders', 'no'),
(1965, 33, '_upsell_ids', 'a:0:{}'),
(1966, 36, '_low_stock_amount', ''),
(1967, 33, '_crosssell_ids', 'a:0:{}'),
(1968, 36, '_sold_individually', 'no'),
(1969, 33, '_purchase_note', ''),
(1970, 36, '_weight', ''),
(1971, 33, '_default_attributes', 'a:0:{}'),
(1972, 36, '_length', ''),
(1973, 33, '_virtual', 'no'),
(1974, 36, '_width', ''),
(1975, 33, '_downloadable', 'no'),
(1976, 36, '_height', ''),
(1977, 33, '_product_image_gallery', ''),
(1978, 36, '_upsell_ids', 'a:0:{}'),
(1979, 33, '_download_limit', '0'),
(1980, 36, '_crosssell_ids', 'a:0:{}'),
(1981, 33, '_download_expiry', '0'),
(1982, 36, '_purchase_note', ''),
(1983, 33, '_stock', ''),
(1984, 36, '_default_attributes', 'a:0:{}'),
(1985, 33, '_stock_status', 'instock'),
(1986, 36, '_virtual', 'no'),
(1987, 33, '_wc_average_rating', '0'),
(1988, 36, '_downloadable', 'no'),
(1989, 33, '_wc_rating_count', 'a:0:{}'),
(1990, 36, '_product_image_gallery', ''),
(1991, 33, '_wc_review_count', '0'),
(1992, 36, '_download_limit', '0'),
(1993, 33, '_downloadable_files', 'a:0:{}'),
(1994, 36, '_download_expiry', '0'),
(1995, 33, '_product_attributes', 'a:0:{}'),
(1996, 36, '_stock', ''),
(1997, 33, '_product_version', '3.5.3'),
(1998, 36, '_stock_status', 'instock'),
(1999, 33, '_price', '45'),
(2000, 36, '_wc_average_rating', '0'),
(2001, 33, '_thumbnail_id', '74'),
(2002, 36, '_wc_rating_count', 'a:0:{}'),
(2003, 36, '_wc_review_count', '0'),
(2004, 36, '_downloadable_files', 'a:0:{}'),
(2005, 36, '_product_attributes', 'a:0:{}'),
(2006, 36, '_product_version', '3.5.3'),
(2007, 36, '_price', '42'),
(2008, 36, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2009, 36, '_thumbnail_id', '47'),
(2010, 36, 'attribute_pa_color', 'red'),
(2011, 36, 'attribute_logo', 'No'),
(2012, 37, '_sku', 'woo-hoodie-green'),
(2013, 16, '_sku', 'woo-long-sleeve-tee'),
(2014, 37, '_regular_price', '45'),
(2015, 16, '_regular_price', '25'),
(2016, 37, '_sale_price', ''),
(2017, 16, '_sale_price', ''),
(2018, 37, '_sale_price_dates_from', ''),
(2019, 16, '_sale_price_dates_from', ''),
(2020, 37, '_sale_price_dates_to', ''),
(2021, 16, '_sale_price_dates_to', ''),
(2022, 37, 'total_sales', '0'),
(2023, 16, 'total_sales', '0'),
(2024, 37, '_tax_status', 'taxable'),
(2025, 16, '_tax_status', 'taxable'),
(2026, 37, '_tax_class', ''),
(2027, 16, '_tax_class', ''),
(2028, 37, '_manage_stock', 'no'),
(2029, 16, '_manage_stock', 'no'),
(2030, 37, '_backorders', 'no'),
(2031, 16, '_backorders', 'no'),
(2032, 37, '_low_stock_amount', ''),
(2033, 16, '_low_stock_amount', ''),
(2034, 37, '_sold_individually', 'no'),
(2035, 16, '_sold_individually', 'no'),
(2036, 37, '_weight', ''),
(2037, 16, '_weight', ''),
(2038, 37, '_length', ''),
(2039, 16, '_length', ''),
(2040, 37, '_width', ''),
(2041, 16, '_width', ''),
(2042, 37, '_height', ''),
(2043, 16, '_height', ''),
(2044, 37, '_upsell_ids', 'a:0:{}'),
(2045, 16, '_upsell_ids', 'a:0:{}'),
(2046, 37, '_crosssell_ids', 'a:0:{}'),
(2047, 16, '_crosssell_ids', 'a:0:{}'),
(2048, 37, '_purchase_note', ''),
(2049, 16, '_purchase_note', ''),
(2050, 37, '_default_attributes', 'a:0:{}'),
(2051, 16, '_default_attributes', 'a:0:{}'),
(2052, 37, '_virtual', 'no'),
(2053, 16, '_virtual', 'no'),
(2054, 37, '_downloadable', 'no'),
(2055, 16, '_downloadable', 'no'),
(2056, 37, '_product_image_gallery', ''),
(2057, 16, '_product_image_gallery', ''),
(2058, 37, '_download_limit', '0'),
(2059, 16, '_download_limit', '0'),
(2060, 37, '_download_expiry', '0'),
(2061, 16, '_download_expiry', '0'),
(2062, 37, '_stock', ''),
(2063, 16, '_stock', ''),
(2064, 37, '_stock_status', 'instock'),
(2065, 16, '_stock_status', 'instock'),
(2066, 37, '_wc_average_rating', '0'),
(2067, 16, '_wc_average_rating', '0'),
(2068, 37, '_wc_rating_count', 'a:0:{}'),
(2069, 16, '_wc_rating_count', 'a:0:{}'),
(2070, 37, '_wc_review_count', '0'),
(2071, 16, '_wc_review_count', '0'),
(2072, 37, '_downloadable_files', 'a:0:{}'),
(2073, 16, '_downloadable_files', 'a:0:{}'),
(2074, 37, '_product_attributes', 'a:0:{}'),
(2075, 16, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2076, 37, '_product_version', '3.5.3'),
(2077, 16, '_product_version', '3.5.3'),
(2078, 37, '_price', '45'),
(2079, 16, '_price', '25'),
(2080, 37, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2081, 16, '_thumbnail_id', '77'),
(2082, 37, '_thumbnail_id', '51'),
(2083, 37, 'attribute_pa_color', 'green'),
(2084, 37, 'attribute_logo', 'No'),
(2085, 38, '_sku', 'woo-hoodie-blue'),
(2086, 38, '_regular_price', '45'),
(2087, 38, '_sale_price', ''),
(2088, 38, '_sale_price_dates_from', ''),
(2089, 38, '_sale_price_dates_to', ''),
(2090, 38, 'total_sales', '0'),
(2091, 38, '_tax_status', 'taxable'),
(2092, 38, '_tax_class', ''),
(2093, 38, '_manage_stock', 'no'),
(2094, 38, '_backorders', 'no'),
(2095, 17, '_sku', 'woo-polo'),
(2096, 38, '_low_stock_amount', ''),
(2097, 17, '_regular_price', '20'),
(2098, 38, '_sold_individually', 'no'),
(2099, 17, '_sale_price', ''),
(2100, 38, '_weight', ''),
(2101, 17, '_sale_price_dates_from', ''),
(2102, 38, '_length', ''),
(2103, 17, '_sale_price_dates_to', ''),
(2104, 38, '_width', ''),
(2105, 17, 'total_sales', '0'),
(2106, 38, '_height', ''),
(2107, 17, '_tax_status', 'taxable'),
(2108, 38, '_upsell_ids', 'a:0:{}'),
(2109, 17, '_tax_class', ''),
(2110, 38, '_crosssell_ids', 'a:0:{}'),
(2111, 17, '_manage_stock', 'no'),
(2112, 38, '_purchase_note', ''),
(2113, 17, '_backorders', 'no'),
(2114, 38, '_default_attributes', 'a:0:{}'),
(2115, 17, '_low_stock_amount', ''),
(2116, 38, '_virtual', 'no'),
(2117, 17, '_sold_individually', 'no'),
(2118, 38, '_downloadable', 'no'),
(2119, 17, '_weight', ''),
(2120, 38, '_product_image_gallery', ''),
(2121, 17, '_length', ''),
(2122, 38, '_download_limit', '0'),
(2123, 17, '_width', ''),
(2124, 38, '_download_expiry', '0'),
(2125, 17, '_height', ''),
(2126, 38, '_stock', ''),
(2127, 17, '_upsell_ids', 'a:0:{}'),
(2128, 38, '_stock_status', 'instock'),
(2129, 17, '_crosssell_ids', 'a:0:{}'),
(2130, 38, '_wc_average_rating', '0'),
(2131, 17, '_purchase_note', ''),
(2132, 38, '_wc_rating_count', 'a:0:{}'),
(2133, 17, '_default_attributes', 'a:0:{}'),
(2134, 38, '_wc_review_count', '0'),
(2135, 17, '_virtual', 'no'),
(2136, 38, '_downloadable_files', 'a:0:{}'),
(2137, 17, '_downloadable', 'no'),
(2138, 38, '_product_attributes', 'a:0:{}'),
(2139, 17, '_product_image_gallery', ''),
(2140, 38, '_product_version', '3.5.3'),
(2141, 17, '_download_limit', '0'),
(2142, 38, '_price', '45'),
(2143, 17, '_download_expiry', '0'),
(2144, 38, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2145, 17, '_stock', ''),
(2146, 38, '_thumbnail_id', '48'),
(2147, 17, '_stock_status', 'instock'),
(2148, 38, 'attribute_pa_color', 'blue'),
(2149, 17, '_wc_average_rating', '0'),
(2150, 38, 'attribute_logo', 'No'),
(2151, 17, '_wc_rating_count', 'a:0:{}'),
(2152, 17, '_wc_review_count', '0'),
(2153, 17, '_downloadable_files', 'a:0:{}'),
(2154, 17, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2155, 17, '_product_version', '3.5.3'),
(2156, 17, '_price', '20'),
(2157, 17, '_thumbnail_id', '81'),
(2158, 39, '_sku', 'Woo-tshirt-logo'),
(2159, 39, '_regular_price', '18'),
(2160, 39, '_sale_price', ''),
(2161, 18, '_sku', 'woo-album'),
(2162, 39, '_sale_price_dates_from', ''),
(2163, 18, '_regular_price', '15'),
(2164, 39, '_sale_price_dates_to', ''),
(2165, 18, '_sale_price', ''),
(2166, 39, 'total_sales', '0'),
(2167, 18, '_sale_price_dates_from', ''),
(2168, 39, '_tax_status', 'taxable'),
(2169, 18, '_sale_price_dates_to', ''),
(2170, 39, '_tax_class', ''),
(2171, 18, 'total_sales', '0'),
(2172, 39, '_manage_stock', 'no'),
(2173, 18, '_tax_status', 'taxable'),
(2174, 39, '_backorders', 'no'),
(2175, 18, '_tax_class', ''),
(2176, 39, '_low_stock_amount', ''),
(2177, 18, '_manage_stock', 'no'),
(2178, 39, '_sold_individually', 'no'),
(2179, 18, '_backorders', 'no'),
(2180, 39, '_weight', ''),
(2181, 18, '_low_stock_amount', ''),
(2182, 39, '_length', ''),
(2183, 18, '_sold_individually', 'no'),
(2184, 39, '_width', ''),
(2185, 18, '_weight', ''),
(2186, 39, '_height', ''),
(2187, 18, '_length', ''),
(2188, 39, '_upsell_ids', 'a:0:{}'),
(2189, 18, '_width', ''),
(2190, 39, '_crosssell_ids', 'a:0:{}'),
(2191, 18, '_height', ''),
(2192, 39, '_purchase_note', ''),
(2193, 18, '_upsell_ids', 'a:0:{}'),
(2194, 39, '_default_attributes', 'a:0:{}'),
(2195, 18, '_crosssell_ids', 'a:0:{}'),
(2196, 39, '_virtual', 'no'),
(2197, 18, '_purchase_note', ''),
(2198, 39, '_downloadable', 'no'),
(2199, 18, '_default_attributes', 'a:0:{}'),
(2200, 39, '_product_image_gallery', ''),
(2201, 18, '_virtual', 'yes'),
(2202, 39, '_download_limit', '0'),
(2203, 18, '_downloadable', 'yes'),
(2204, 39, '_download_expiry', '0'),
(2205, 18, '_product_image_gallery', ''),
(2206, 39, '_stock', ''),
(2207, 18, '_download_limit', '1'),
(2208, 39, '_stock_status', 'instock'),
(2209, 18, '_download_expiry', '1'),
(2210, 39, '_wc_average_rating', '0'),
(2211, 18, '_stock', ''),
(2212, 39, '_wc_rating_count', 'a:0:{}'),
(2213, 18, '_stock_status', 'instock'),
(2214, 39, '_wc_review_count', '0'),
(2215, 18, '_wc_average_rating', '0'),
(2216, 39, '_downloadable_files', 'a:0:{}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2217, 18, '_wc_rating_count', 'a:0:{}'),
(2218, 39, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2219, 18, '_wc_review_count', '0'),
(2220, 39, '_product_version', '3.5.3'),
(2221, 18, '_downloadable_files', 'a:2:{s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";a:3:{s:2:\"id\";s:36:\"356506a5-cc15-41b9-801b-9104dda1702c\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";a:3:{s:2:\"id\";s:36:\"18e70c59-59f3-43a3-8525-ce1ea0c12943\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(2222, 39, '_price', '18'),
(2223, 18, '_product_attributes', 'a:0:{}'),
(2224, 39, '_thumbnail_id', '90'),
(2225, 18, '_product_version', '3.5.3'),
(2226, 18, '_price', '15'),
(2227, 18, '_thumbnail_id', '84'),
(2228, 19, '_sku', 'woo-single'),
(2229, 40, '_sku', 'Woo-beanie-logo'),
(2230, 19, '_regular_price', '3'),
(2231, 40, '_regular_price', '20'),
(2232, 19, '_sale_price', '2'),
(2233, 40, '_sale_price', '18'),
(2234, 19, '_sale_price_dates_from', ''),
(2235, 40, '_sale_price_dates_from', ''),
(2236, 19, '_sale_price_dates_to', ''),
(2237, 40, '_sale_price_dates_to', ''),
(2238, 19, 'total_sales', '0'),
(2239, 40, 'total_sales', '0'),
(2240, 19, '_tax_status', 'taxable'),
(2241, 40, '_tax_status', 'taxable'),
(2242, 19, '_tax_class', ''),
(2243, 40, '_tax_class', ''),
(2244, 19, '_manage_stock', 'no'),
(2245, 40, '_manage_stock', 'no'),
(2246, 19, '_backorders', 'no'),
(2247, 40, '_backorders', 'no'),
(2248, 19, '_low_stock_amount', ''),
(2249, 40, '_low_stock_amount', ''),
(2250, 19, '_sold_individually', 'no'),
(2251, 40, '_sold_individually', 'no'),
(2252, 19, '_weight', ''),
(2253, 40, '_weight', ''),
(2254, 19, '_length', ''),
(2255, 40, '_length', ''),
(2256, 19, '_width', ''),
(2257, 40, '_width', ''),
(2258, 19, '_height', ''),
(2259, 40, '_height', ''),
(2260, 19, '_upsell_ids', 'a:0:{}'),
(2261, 40, '_upsell_ids', 'a:0:{}'),
(2262, 19, '_crosssell_ids', 'a:0:{}'),
(2263, 40, '_crosssell_ids', 'a:0:{}'),
(2264, 19, '_purchase_note', ''),
(2265, 40, '_purchase_note', ''),
(2266, 19, '_default_attributes', 'a:0:{}'),
(2267, 40, '_default_attributes', 'a:0:{}'),
(2268, 19, '_virtual', 'yes'),
(2269, 40, '_virtual', 'no'),
(2270, 19, '_downloadable', 'yes'),
(2271, 40, '_downloadable', 'no'),
(2272, 19, '_product_image_gallery', ''),
(2273, 40, '_product_image_gallery', ''),
(2274, 19, '_download_limit', '1'),
(2275, 40, '_download_limit', '0'),
(2276, 19, '_download_expiry', '1'),
(2277, 40, '_download_expiry', '0'),
(2278, 19, '_stock', ''),
(2279, 40, '_stock', ''),
(2280, 19, '_stock_status', 'instock'),
(2281, 40, '_stock_status', 'instock'),
(2282, 19, '_wc_average_rating', '0'),
(2283, 40, '_wc_average_rating', '0'),
(2284, 19, '_wc_rating_count', 'a:0:{}'),
(2285, 40, '_wc_rating_count', 'a:0:{}'),
(2286, 19, '_wc_review_count', '0'),
(2287, 40, '_wc_review_count', '0'),
(2288, 19, '_downloadable_files', 'a:1:{s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";a:3:{s:2:\"id\";s:36:\"a0fdda89-5f0e-440d-93f5-188e12c910d1\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(2289, 40, '_downloadable_files', 'a:0:{}'),
(2290, 19, '_product_attributes', 'a:0:{}'),
(2291, 40, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2292, 19, '_product_version', '3.5.3'),
(2293, 40, '_product_version', '3.5.3'),
(2294, 19, '_price', '2'),
(2295, 40, '_price', '18'),
(2296, 19, '_thumbnail_id', '87'),
(2297, 40, '_thumbnail_id', '93'),
(2298, 20, '_sku', 'woo-vneck-tee-red'),
(2299, 20, '_regular_price', '20'),
(2300, 20, '_sale_price', ''),
(2301, 20, '_sale_price_dates_from', ''),
(2302, 20, '_sale_price_dates_to', ''),
(2303, 20, 'total_sales', '0'),
(2304, 20, '_tax_status', 'taxable'),
(2305, 41, '_sku', 'logo-collection'),
(2306, 20, '_tax_class', ''),
(2307, 41, '_sale_price_dates_from', ''),
(2308, 20, '_manage_stock', 'no'),
(2309, 41, '_sale_price_dates_to', ''),
(2310, 20, '_backorders', 'no'),
(2311, 20, '_low_stock_amount', ''),
(2312, 41, 'total_sales', '0'),
(2313, 20, '_sold_individually', 'no'),
(2314, 41, '_tax_status', 'taxable'),
(2315, 20, '_weight', ''),
(2316, 41, '_tax_class', ''),
(2317, 20, '_length', ''),
(2318, 41, '_manage_stock', 'no'),
(2319, 20, '_width', ''),
(2320, 41, '_backorders', 'no'),
(2321, 20, '_height', ''),
(2322, 41, '_low_stock_amount', ''),
(2323, 20, '_upsell_ids', 'a:0:{}'),
(2324, 41, '_sold_individually', 'no'),
(2325, 20, '_crosssell_ids', 'a:0:{}'),
(2326, 41, '_weight', ''),
(2327, 20, '_purchase_note', ''),
(2328, 41, '_length', ''),
(2329, 20, '_default_attributes', 'a:0:{}'),
(2330, 41, '_width', ''),
(2331, 20, '_virtual', 'no'),
(2332, 41, '_height', ''),
(2333, 20, '_downloadable', 'no'),
(2334, 41, '_upsell_ids', 'a:0:{}'),
(2335, 20, '_product_image_gallery', ''),
(2336, 41, '_crosssell_ids', 'a:0:{}'),
(2337, 20, '_download_limit', '0'),
(2338, 41, '_purchase_note', ''),
(2339, 20, '_download_expiry', '0'),
(2340, 41, '_default_attributes', 'a:0:{}'),
(2341, 20, '_stock', ''),
(2342, 41, '_virtual', 'no'),
(2343, 20, '_stock_status', 'instock'),
(2344, 41, '_downloadable', 'no'),
(2345, 20, '_wc_average_rating', '0'),
(2346, 41, '_product_image_gallery', '50,49,37'),
(2347, 20, '_wc_rating_count', 'a:0:{}'),
(2348, 41, '_download_limit', '0'),
(2349, 20, '_wc_review_count', '0'),
(2350, 41, '_download_expiry', '0'),
(2351, 20, '_downloadable_files', 'a:0:{}'),
(2352, 41, '_stock', ''),
(2353, 20, '_product_attributes', 'a:0:{}'),
(2354, 41, '_stock_status', 'instock'),
(2355, 20, '_product_version', '3.5.3'),
(2356, 41, '_wc_average_rating', '0'),
(2357, 20, '_price', '20'),
(2358, 41, '_wc_rating_count', 'a:0:{}'),
(2359, 20, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2360, 41, '_wc_review_count', '0'),
(2361, 20, '_thumbnail_id', '44'),
(2362, 41, '_downloadable_files', 'a:0:{}'),
(2363, 20, 'attribute_pa_color', 'red'),
(2364, 41, '_product_attributes', 'a:0:{}'),
(2365, 20, 'attribute_pa_size', ''),
(2366, 41, '_product_version', '3.5.3'),
(2367, 41, '_children', 'a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}'),
(2368, 34, '_sku', 'woo-vneck-tee-green'),
(2369, 41, '_thumbnail_id', '96'),
(2370, 34, '_regular_price', '20'),
(2371, 41, '_price', '18'),
(2372, 34, '_sale_price', ''),
(2373, 41, '_price', '45'),
(2374, 34, '_sale_price_dates_from', ''),
(2375, 34, '_sale_price_dates_to', ''),
(2376, 34, 'total_sales', '0'),
(2377, 34, '_tax_status', 'taxable'),
(2378, 34, '_tax_class', ''),
(2379, 34, '_manage_stock', 'no'),
(2380, 34, '_backorders', 'no'),
(2381, 34, '_low_stock_amount', ''),
(2382, 42, '_sku', 'wp-pennant'),
(2383, 34, '_sold_individually', 'no'),
(2384, 42, '_regular_price', '11.05'),
(2385, 34, '_weight', ''),
(2386, 42, '_sale_price', ''),
(2387, 34, '_length', ''),
(2388, 42, '_sale_price_dates_from', ''),
(2389, 34, '_width', ''),
(2390, 42, '_sale_price_dates_to', ''),
(2391, 34, '_height', ''),
(2392, 42, 'total_sales', '0'),
(2393, 34, '_upsell_ids', 'a:0:{}'),
(2394, 42, '_tax_status', 'taxable'),
(2395, 34, '_crosssell_ids', 'a:0:{}'),
(2396, 42, '_tax_class', ''),
(2397, 34, '_purchase_note', ''),
(2398, 42, '_manage_stock', 'no'),
(2399, 34, '_default_attributes', 'a:0:{}'),
(2400, 42, '_backorders', 'no'),
(2401, 34, '_virtual', 'no'),
(2402, 42, '_low_stock_amount', ''),
(2403, 34, '_downloadable', 'no'),
(2404, 42, '_sold_individually', 'no'),
(2405, 34, '_product_image_gallery', ''),
(2406, 42, '_weight', ''),
(2407, 34, '_download_limit', '0'),
(2408, 42, '_length', ''),
(2409, 34, '_download_expiry', '0'),
(2410, 42, '_width', ''),
(2411, 34, '_stock', ''),
(2412, 42, '_height', ''),
(2413, 34, '_stock_status', 'instock'),
(2414, 42, '_upsell_ids', 'a:0:{}'),
(2415, 34, '_wc_average_rating', '0'),
(2416, 42, '_crosssell_ids', 'a:0:{}'),
(2417, 34, '_wc_rating_count', 'a:0:{}'),
(2418, 42, '_purchase_note', ''),
(2419, 34, '_wc_review_count', '0'),
(2420, 42, '_default_attributes', 'a:0:{}'),
(2421, 34, '_downloadable_files', 'a:0:{}'),
(2422, 42, '_virtual', 'no'),
(2423, 34, '_product_attributes', 'a:0:{}'),
(2424, 42, '_downloadable', 'no'),
(2425, 34, '_product_version', '3.5.3'),
(2426, 42, '_product_image_gallery', ''),
(2427, 34, '_price', '20'),
(2428, 42, '_download_limit', '0'),
(2429, 34, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2430, 42, '_download_expiry', '0'),
(2431, 34, '_thumbnail_id', '45'),
(2432, 42, '_stock', ''),
(2433, 34, 'attribute_pa_color', 'green'),
(2434, 42, '_stock_status', 'instock'),
(2435, 34, 'attribute_pa_size', ''),
(2436, 42, '_wc_average_rating', '0'),
(2437, 42, '_wc_rating_count', 'a:0:{}'),
(2438, 35, '_sku', 'woo-vneck-tee-blue'),
(2439, 42, '_wc_review_count', '0'),
(2440, 35, '_regular_price', '15'),
(2441, 42, '_downloadable_files', 'a:0:{}'),
(2442, 35, '_sale_price', ''),
(2443, 42, '_product_attributes', 'a:0:{}'),
(2444, 35, '_sale_price_dates_from', ''),
(2445, 42, '_product_version', '3.5.3'),
(2446, 35, '_sale_price_dates_to', ''),
(2447, 42, '_price', '11.05'),
(2448, 35, 'total_sales', '0'),
(2449, 42, '_thumbnail_id', '99'),
(2450, 35, '_tax_status', 'taxable'),
(2451, 42, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(2452, 35, '_tax_class', ''),
(2453, 42, '_button_text', 'Buy on the WordPress swag store!'),
(2454, 35, '_manage_stock', 'no'),
(2455, 35, '_backorders', 'no'),
(2456, 43, '_sku', 'woo-hoodie-blue-logo'),
(2457, 35, '_low_stock_amount', ''),
(2458, 43, '_regular_price', '45'),
(2459, 35, '_sold_individually', 'no'),
(2460, 43, '_sale_price', ''),
(2461, 35, '_weight', ''),
(2462, 43, '_sale_price_dates_from', ''),
(2463, 35, '_length', ''),
(2464, 43, '_sale_price_dates_to', ''),
(2465, 35, '_width', ''),
(2466, 43, 'total_sales', '0'),
(2467, 35, '_height', ''),
(2468, 43, '_tax_status', 'taxable'),
(2469, 35, '_upsell_ids', 'a:0:{}'),
(2470, 43, '_tax_class', ''),
(2471, 35, '_crosssell_ids', 'a:0:{}'),
(2472, 43, '_manage_stock', 'no'),
(2473, 35, '_purchase_note', ''),
(2474, 43, '_backorders', 'no'),
(2475, 35, '_default_attributes', 'a:0:{}'),
(2476, 43, '_low_stock_amount', ''),
(2477, 35, '_virtual', 'no'),
(2478, 43, '_sold_individually', 'no'),
(2479, 35, '_downloadable', 'no'),
(2480, 43, '_weight', ''),
(2481, 35, '_product_image_gallery', ''),
(2482, 43, '_length', ''),
(2483, 35, '_download_limit', '0'),
(2484, 43, '_width', ''),
(2485, 35, '_download_expiry', '0'),
(2486, 43, '_height', ''),
(2487, 35, '_stock', ''),
(2488, 43, '_upsell_ids', 'a:0:{}'),
(2489, 35, '_stock_status', 'instock'),
(2490, 43, '_crosssell_ids', 'a:0:{}'),
(2491, 35, '_wc_average_rating', '0'),
(2492, 43, '_purchase_note', ''),
(2493, 35, '_wc_rating_count', 'a:0:{}'),
(2494, 43, '_default_attributes', 'a:0:{}'),
(2495, 35, '_wc_review_count', '0'),
(2496, 43, '_virtual', 'no'),
(2497, 35, '_downloadable_files', 'a:0:{}'),
(2498, 43, '_downloadable', 'no'),
(2499, 35, '_product_attributes', 'a:0:{}'),
(2500, 43, '_product_image_gallery', ''),
(2501, 35, '_product_version', '3.5.3'),
(2502, 43, '_download_limit', '0'),
(2503, 35, '_price', '15'),
(2504, 43, '_download_expiry', '0'),
(2505, 35, '_wpcom_is_markdown', ''),
(2506, 43, '_stock', ''),
(2507, 35, '_wp_old_slug', 'import-placeholder-for-78'),
(2508, 43, '_stock_status', 'instock'),
(2509, 35, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2510, 43, '_wc_average_rating', '0'),
(2511, 35, '_thumbnail_id', '46'),
(2512, 43, '_wc_rating_count', 'a:0:{}'),
(2513, 35, 'attribute_pa_color', 'blue'),
(2514, 43, '_wc_review_count', '0'),
(2515, 35, 'attribute_pa_size', ''),
(2516, 43, '_downloadable_files', 'a:0:{}'),
(2517, 43, '_product_attributes', 'a:0:{}'),
(2518, 36, '_sku', 'woo-hoodie-red'),
(2519, 43, '_product_version', '3.5.3'),
(2520, 36, '_regular_price', '45'),
(2521, 43, '_price', '45'),
(2522, 36, '_sale_price', '42'),
(2523, 43, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2524, 36, '_sale_price_dates_from', ''),
(2525, 43, '_thumbnail_id', '53'),
(2526, 36, '_sale_price_dates_to', ''),
(2527, 43, 'attribute_pa_color', 'blue'),
(2528, 36, 'total_sales', '0'),
(2529, 43, 'attribute_logo', 'Yes'),
(2530, 36, '_tax_status', 'taxable'),
(2531, 36, '_tax_class', ''),
(2532, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(2533, 36, '_manage_stock', 'no'),
(2534, 36, '_backorders', 'no'),
(2535, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(2536, 36, '_low_stock_amount', ''),
(2537, 36, '_sold_individually', 'no'),
(2538, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(2539, 36, '_weight', ''),
(2540, 36, '_length', ''),
(2541, 47, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(2542, 36, '_width', ''),
(2543, 36, '_height', ''),
(2544, 48, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(2545, 36, '_upsell_ids', 'a:0:{}'),
(2546, 36, '_crosssell_ids', 'a:0:{}'),
(2547, 36, '_purchase_note', ''),
(2548, 36, '_default_attributes', 'a:0:{}'),
(2549, 36, '_virtual', 'no'),
(2550, 36, '_downloadable', 'no'),
(2551, 36, '_product_image_gallery', ''),
(2552, 36, '_download_limit', '0'),
(2553, 36, '_download_expiry', '0'),
(2554, 36, '_stock', ''),
(2555, 36, '_stock_status', 'instock'),
(2556, 36, '_wc_average_rating', '0'),
(2557, 36, '_wc_rating_count', 'a:0:{}'),
(2558, 36, '_wc_review_count', '0'),
(2559, 36, '_downloadable_files', 'a:0:{}'),
(2560, 36, '_product_attributes', 'a:0:{}'),
(2561, 36, '_product_version', '3.5.3'),
(2562, 36, '_price', '42'),
(2563, 36, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2564, 36, '_thumbnail_id', '47'),
(2565, 36, 'attribute_pa_color', 'red'),
(2566, 36, 'attribute_logo', 'No'),
(2567, 37, '_sku', 'woo-hoodie-green'),
(2568, 37, '_regular_price', '45'),
(2569, 37, '_sale_price', ''),
(2570, 37, '_sale_price_dates_from', ''),
(2571, 37, '_sale_price_dates_to', ''),
(2572, 37, 'total_sales', '0'),
(2573, 37, '_tax_status', 'taxable'),
(2574, 37, '_tax_class', ''),
(2575, 37, '_manage_stock', 'no'),
(2576, 37, '_backorders', 'no'),
(2577, 37, '_low_stock_amount', ''),
(2578, 37, '_sold_individually', 'no'),
(2579, 37, '_weight', ''),
(2580, 37, '_length', ''),
(2581, 37, '_width', ''),
(2582, 37, '_height', ''),
(2583, 37, '_upsell_ids', 'a:0:{}'),
(2584, 37, '_crosssell_ids', 'a:0:{}'),
(2585, 37, '_purchase_note', ''),
(2586, 37, '_default_attributes', 'a:0:{}'),
(2587, 37, '_virtual', 'no'),
(2588, 37, '_downloadable', 'no'),
(2589, 37, '_product_image_gallery', ''),
(2590, 37, '_download_limit', '0'),
(2591, 37, '_download_expiry', '0'),
(2592, 37, '_stock', ''),
(2593, 37, '_stock_status', 'instock'),
(2594, 37, '_wc_average_rating', '0'),
(2595, 37, '_wc_rating_count', 'a:0:{}'),
(2596, 37, '_wc_review_count', '0'),
(2597, 37, '_downloadable_files', 'a:0:{}'),
(2598, 37, '_product_attributes', 'a:0:{}'),
(2599, 37, '_product_version', '3.5.3'),
(2600, 37, '_price', '45'),
(2601, 37, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2602, 37, '_thumbnail_id', '51'),
(2603, 37, 'attribute_pa_color', 'green'),
(2604, 37, 'attribute_logo', 'No'),
(2605, 38, '_sku', 'woo-hoodie-blue'),
(2606, 38, '_regular_price', '45'),
(2607, 38, '_sale_price', ''),
(2608, 38, '_sale_price_dates_from', ''),
(2609, 38, '_sale_price_dates_to', ''),
(2610, 38, 'total_sales', '0'),
(2611, 38, '_tax_status', 'taxable'),
(2612, 38, '_tax_class', ''),
(2613, 38, '_manage_stock', 'no'),
(2614, 38, '_backorders', 'no'),
(2615, 38, '_low_stock_amount', ''),
(2616, 38, '_sold_individually', 'no'),
(2617, 38, '_weight', ''),
(2618, 38, '_length', ''),
(2619, 38, '_width', ''),
(2620, 38, '_height', ''),
(2621, 38, '_upsell_ids', 'a:0:{}'),
(2622, 38, '_crosssell_ids', 'a:0:{}'),
(2623, 38, '_purchase_note', ''),
(2624, 38, '_default_attributes', 'a:0:{}'),
(2625, 38, '_virtual', 'no'),
(2626, 38, '_downloadable', 'no'),
(2627, 38, '_product_image_gallery', ''),
(2628, 38, '_download_limit', '0'),
(2629, 38, '_download_expiry', '0'),
(2630, 38, '_stock', ''),
(2631, 38, '_stock_status', 'instock'),
(2632, 38, '_wc_average_rating', '0'),
(2633, 38, '_wc_rating_count', 'a:0:{}'),
(2634, 38, '_wc_review_count', '0'),
(2635, 38, '_downloadable_files', 'a:0:{}'),
(2636, 38, '_product_attributes', 'a:0:{}'),
(2637, 38, '_product_version', '3.5.3'),
(2638, 38, '_price', '45'),
(2639, 38, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2640, 38, '_thumbnail_id', '48'),
(2641, 38, 'attribute_pa_color', 'blue'),
(2642, 38, 'attribute_logo', 'No'),
(2643, 39, '_sku', 'Woo-tshirt-logo'),
(2644, 39, '_regular_price', '18'),
(2645, 39, '_sale_price', ''),
(2646, 39, '_sale_price_dates_from', ''),
(2647, 39, '_sale_price_dates_to', ''),
(2648, 39, 'total_sales', '0'),
(2649, 39, '_tax_status', 'taxable'),
(2650, 39, '_tax_class', ''),
(2651, 39, '_manage_stock', 'no'),
(2652, 39, '_backorders', 'no'),
(2653, 39, '_low_stock_amount', ''),
(2654, 39, '_sold_individually', 'no'),
(2655, 39, '_weight', ''),
(2656, 39, '_length', ''),
(2657, 39, '_width', ''),
(2658, 39, '_height', ''),
(2659, 39, '_upsell_ids', 'a:0:{}'),
(2660, 39, '_crosssell_ids', 'a:0:{}'),
(2661, 39, '_purchase_note', ''),
(2662, 39, '_default_attributes', 'a:0:{}'),
(2663, 39, '_virtual', 'no'),
(2664, 39, '_downloadable', 'no'),
(2665, 39, '_product_image_gallery', ''),
(2666, 39, '_download_limit', '0'),
(2667, 39, '_download_expiry', '0'),
(2668, 39, '_stock', ''),
(2669, 39, '_stock_status', 'instock'),
(2670, 39, '_wc_average_rating', '0'),
(2671, 39, '_wc_rating_count', 'a:0:{}'),
(2672, 39, '_wc_review_count', '0'),
(2673, 39, '_downloadable_files', 'a:0:{}'),
(2674, 39, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2675, 39, '_product_version', '3.5.3'),
(2676, 39, '_price', '18'),
(2677, 39, '_thumbnail_id', '90'),
(2678, 40, '_sku', 'Woo-beanie-logo'),
(2679, 40, '_regular_price', '20'),
(2680, 40, '_sale_price', '18'),
(2681, 40, '_sale_price_dates_from', ''),
(2682, 40, '_sale_price_dates_to', ''),
(2683, 40, 'total_sales', '0'),
(2684, 40, '_tax_status', 'taxable'),
(2685, 40, '_tax_class', ''),
(2686, 40, '_manage_stock', 'no'),
(2687, 40, '_backorders', 'no'),
(2688, 40, '_low_stock_amount', ''),
(2689, 40, '_sold_individually', 'no'),
(2690, 40, '_weight', ''),
(2691, 40, '_length', ''),
(2692, 40, '_width', ''),
(2693, 40, '_height', ''),
(2694, 40, '_upsell_ids', 'a:0:{}'),
(2695, 40, '_crosssell_ids', 'a:0:{}'),
(2696, 40, '_purchase_note', ''),
(2697, 40, '_default_attributes', 'a:0:{}'),
(2698, 40, '_virtual', 'no'),
(2699, 40, '_downloadable', 'no'),
(2700, 40, '_product_image_gallery', ''),
(2701, 40, '_download_limit', '0'),
(2702, 40, '_download_expiry', '0'),
(2703, 40, '_stock', ''),
(2704, 40, '_stock_status', 'instock'),
(2705, 40, '_wc_average_rating', '0'),
(2706, 40, '_wc_rating_count', 'a:0:{}'),
(2707, 40, '_wc_review_count', '0'),
(2708, 40, '_downloadable_files', 'a:0:{}'),
(2709, 40, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2710, 40, '_product_version', '3.5.3'),
(2711, 40, '_price', '18'),
(2712, 40, '_thumbnail_id', '93'),
(2713, 41, '_sku', 'logo-collection'),
(2714, 41, '_sale_price_dates_from', ''),
(2715, 41, '_sale_price_dates_to', ''),
(2716, 41, 'total_sales', '0'),
(2717, 41, '_tax_status', 'taxable'),
(2718, 41, '_tax_class', ''),
(2719, 41, '_manage_stock', 'no'),
(2720, 41, '_backorders', 'no'),
(2721, 41, '_low_stock_amount', ''),
(2722, 41, '_sold_individually', 'no'),
(2723, 41, '_weight', ''),
(2724, 41, '_length', ''),
(2725, 41, '_width', ''),
(2726, 41, '_height', ''),
(2727, 41, '_upsell_ids', 'a:0:{}'),
(2728, 41, '_crosssell_ids', 'a:0:{}'),
(2729, 41, '_purchase_note', ''),
(2730, 41, '_default_attributes', 'a:0:{}'),
(2731, 41, '_virtual', 'no'),
(2732, 41, '_downloadable', 'no'),
(2733, 41, '_product_image_gallery', '50,49,37'),
(2734, 41, '_download_limit', '0'),
(2735, 41, '_download_expiry', '0'),
(2736, 41, '_stock', ''),
(2737, 41, '_stock_status', 'instock'),
(2738, 41, '_wc_average_rating', '0'),
(2739, 41, '_wc_rating_count', 'a:0:{}'),
(2740, 41, '_wc_review_count', '0'),
(2741, 41, '_downloadable_files', 'a:0:{}'),
(2742, 41, '_product_attributes', 'a:0:{}'),
(2743, 41, '_product_version', '3.5.3'),
(2744, 41, '_children', 'a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}'),
(2745, 41, '_thumbnail_id', '96'),
(2746, 41, '_price', '18'),
(2747, 41, '_price', '45'),
(2748, 42, '_sku', 'wp-pennant'),
(2749, 42, '_regular_price', '11.05'),
(2750, 42, '_sale_price', ''),
(2751, 42, '_sale_price_dates_from', ''),
(2752, 42, '_sale_price_dates_to', ''),
(2753, 42, 'total_sales', '0'),
(2754, 42, '_tax_status', 'taxable'),
(2755, 42, '_tax_class', ''),
(2756, 42, '_manage_stock', 'no'),
(2757, 42, '_backorders', 'no'),
(2758, 42, '_low_stock_amount', ''),
(2759, 42, '_sold_individually', 'no'),
(2760, 42, '_weight', ''),
(2761, 42, '_length', ''),
(2762, 42, '_width', ''),
(2763, 42, '_height', ''),
(2764, 42, '_upsell_ids', 'a:0:{}'),
(2765, 42, '_crosssell_ids', 'a:0:{}'),
(2766, 42, '_purchase_note', ''),
(2767, 42, '_default_attributes', 'a:0:{}'),
(2768, 42, '_virtual', 'no'),
(2769, 42, '_downloadable', 'no'),
(2770, 42, '_product_image_gallery', ''),
(2771, 42, '_download_limit', '0'),
(2772, 42, '_download_expiry', '0'),
(2773, 42, '_stock', ''),
(2774, 42, '_stock_status', 'instock'),
(2775, 42, '_wc_average_rating', '0'),
(2776, 42, '_wc_rating_count', 'a:0:{}'),
(2777, 42, '_wc_review_count', '0'),
(2778, 42, '_downloadable_files', 'a:0:{}'),
(2779, 42, '_product_attributes', 'a:0:{}'),
(2780, 42, '_product_version', '3.5.3'),
(2781, 42, '_price', '11.05'),
(2782, 42, '_thumbnail_id', '99'),
(2783, 42, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(2784, 42, '_button_text', 'Buy on the WordPress swag store!'),
(2785, 43, '_sku', 'woo-hoodie-blue-logo'),
(2786, 43, '_regular_price', '45'),
(2787, 43, '_sale_price', ''),
(2788, 43, '_sale_price_dates_from', ''),
(2789, 43, '_sale_price_dates_to', ''),
(2790, 43, 'total_sales', '0'),
(2791, 43, '_tax_status', 'taxable'),
(2792, 43, '_tax_class', ''),
(2793, 43, '_manage_stock', 'no'),
(2794, 43, '_backorders', 'no'),
(2795, 43, '_low_stock_amount', ''),
(2796, 43, '_sold_individually', 'no'),
(2797, 43, '_weight', ''),
(2798, 43, '_length', ''),
(2799, 43, '_width', ''),
(2800, 43, '_height', ''),
(2801, 43, '_upsell_ids', 'a:0:{}'),
(2802, 43, '_crosssell_ids', 'a:0:{}'),
(2803, 43, '_purchase_note', ''),
(2804, 43, '_default_attributes', 'a:0:{}'),
(2805, 43, '_virtual', 'no'),
(2806, 43, '_downloadable', 'no'),
(2807, 43, '_product_image_gallery', ''),
(2808, 43, '_download_limit', '0'),
(2809, 43, '_download_expiry', '0'),
(2810, 43, '_stock', ''),
(2811, 43, '_stock_status', 'instock'),
(2812, 43, '_wc_average_rating', '0'),
(2813, 43, '_wc_rating_count', 'a:0:{}'),
(2814, 43, '_wc_review_count', '0'),
(2815, 43, '_downloadable_files', 'a:0:{}'),
(2816, 43, '_product_attributes', 'a:0:{}'),
(2817, 43, '_product_version', '3.5.3'),
(2818, 43, '_price', '45'),
(2819, 43, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(2820, 43, '_thumbnail_id', '53'),
(2821, 43, 'attribute_pa_color', 'blue'),
(2822, 43, 'attribute_logo', 'Yes'),
(2823, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(2824, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(2825, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(2826, 47, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(2827, 48, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(2828, 48, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(2829, 49, '_wp_attached_file', '2019/01/hoodie-green-1.jpg'),
(2830, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2019/01/hoodie-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2831, 50, '_wp_attached_file', '2019/01/hoodie-green-1-1.jpg'),
(2832, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2019/01/hoodie-green-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2833, 51, '_wp_attached_file', '2019/01/hoodie-green-1-2.jpg'),
(2834, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2019/01/hoodie-green-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2835, 49, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(2836, 50, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(2837, 51, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(2838, 52, '_wp_attached_file', '2019/01/hoodie-with-logo-2.jpg'),
(2839, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2019/01/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2840, 53, '_wp_attached_file', '2019/01/hoodie-with-logo-2-1.jpg'),
(2841, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2019/01/hoodie-with-logo-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2842, 54, '_wp_attached_file', '2019/01/hoodie-with-logo-2-1.jpg'),
(2843, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2019/01/hoodie-with-logo-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-logo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2844, 52, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(2845, 53, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(2846, 54, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(2847, 55, '_wp_attached_file', '2019/01/tshirt-2.jpg'),
(2848, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/tshirt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"tshirt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2849, 56, '_wp_attached_file', '2019/01/tshirt-2-1.jpg'),
(2850, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2019/01/tshirt-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"tshirt-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"tshirt-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2851, 57, '_wp_attached_file', '2019/01/tshirt-2-2.jpg'),
(2852, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2019/01/tshirt-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"tshirt-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"tshirt-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"tshirt-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2853, 55, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(2854, 56, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(2855, 57, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(2856, 58, '_wp_attached_file', '2019/01/beanie-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2857, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/beanie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"beanie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2858, 59, '_wp_attached_file', '2019/01/beanie-2-1.jpg'),
(2859, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2019/01/beanie-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"beanie-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"beanie-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2860, 60, '_wp_attached_file', '2019/01/beanie-2-2.jpg'),
(2861, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2019/01/beanie-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"beanie-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"beanie-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"beanie-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2862, 58, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(2863, 59, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(2864, 60, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(2865, 61, '_wp_attached_file', '2019/01/belt-2-1.jpg'),
(2866, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/belt-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"belt-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"belt-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"belt-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"belt-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"belt-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"belt-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2867, 62, '_wp_attached_file', '2019/01/belt-2.jpg'),
(2868, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2019/01/belt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"belt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2869, 63, '_wp_attached_file', '2019/01/belt-2-2.jpg'),
(2870, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2019/01/belt-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"belt-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"belt-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"belt-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"belt-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"belt-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"belt-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"belt-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2871, 61, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(2872, 62, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(2873, 63, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(2874, 64, '_wp_attached_file', '2019/01/cap-2.jpg'),
(2875, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2019/01/cap-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2876, 65, '_wp_attached_file', '2019/01/cap-2.jpg'),
(2877, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2019/01/cap-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2878, 66, '_wp_attached_file', '2019/01/cap-2-1.jpg'),
(2879, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2019/01/cap-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"cap-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"cap-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"cap-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"cap-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"cap-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"cap-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"cap-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"cap-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"cap-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2880, 64, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(2881, 65, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(2882, 66, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(2883, 67, '_wp_attached_file', '2019/01/sunglasses-2.jpg'),
(2884, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2019/01/sunglasses-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2885, 68, '_wp_attached_file', '2019/01/sunglasses-2-1.jpg'),
(2886, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:26:\"2019/01/sunglasses-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"sunglasses-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"sunglasses-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2887, 69, '_wp_attached_file', '2019/01/sunglasses-2-2.jpg'),
(2888, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:26:\"2019/01/sunglasses-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"sunglasses-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"sunglasses-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"sunglasses-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2889, 67, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(2890, 68, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(2891, 69, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(2892, 70, '_wp_attached_file', '2019/01/hoodie-with-pocket-2.jpg'),
(2893, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2019/01/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2894, 71, '_wp_attached_file', '2019/01/hoodie-with-pocket-2-1.jpg'),
(2895, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:34:\"2019/01/hoodie-with-pocket-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2896, 72, '_wp_attached_file', '2019/01/hoodie-with-pocket-2-2.jpg'),
(2897, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:34:\"2019/01/hoodie-with-pocket-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-pocket-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2898, 70, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(2899, 71, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(2900, 72, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(2901, 73, '_wp_attached_file', '2019/01/hoodie-with-zipper-2.jpg'),
(2902, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2019/01/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2903, 74, '_wp_attached_file', '2019/01/hoodie-with-zipper-2-1.jpg'),
(2904, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:34:\"2019/01/hoodie-with-zipper-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2905, 75, '_wp_attached_file', '2019/01/hoodie-with-zipper-2-2.jpg'),
(2906, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:34:\"2019/01/hoodie-with-zipper-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hoodie-with-zipper-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2907, 73, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(2908, 74, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(2909, 75, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(2910, 76, '_wp_attached_file', '2019/01/long-sleeve-tee-2.jpg'),
(2911, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2019/01/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2912, 77, '_wp_attached_file', '2019/01/long-sleeve-tee-2-1.jpg'),
(2913, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:31:\"2019/01/long-sleeve-tee-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2914, 78, '_wp_attached_file', '2019/01/long-sleeve-tee-2-2.jpg'),
(2915, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:31:\"2019/01/long-sleeve-tee-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"long-sleeve-tee-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2916, 76, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(2917, 77, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(2918, 78, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(2919, 79, '_wp_attached_file', '2019/01/polo-2.jpg'),
(2920, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2019/01/polo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"polo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2921, 80, '_wp_attached_file', '2019/01/polo-2-2.jpg'),
(2922, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2019/01/polo-2-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"polo-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"polo-2-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"polo-2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"polo-2-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"polo-2-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"polo-2-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2923, 81, '_wp_attached_file', '2019/01/polo-2-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2924, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2019/01/polo-2-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"polo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"polo-2-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"polo-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"polo-2-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"polo-2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"polo-2-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"polo-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2925, 79, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(2926, 80, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(2927, 81, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(2928, 82, '_wp_attached_file', '2019/01/album-1.jpg'),
(2929, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2019/01/album-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"album-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2930, 83, '_wp_attached_file', '2019/01/album-1-1.jpg'),
(2931, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2019/01/album-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"album-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"album-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"album-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"album-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"album-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"album-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2932, 84, '_wp_attached_file', '2019/01/album-1-2.jpg'),
(2933, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2019/01/album-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"album-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"album-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"album-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"album-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"album-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"album-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"album-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2934, 82, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(2935, 83, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(2936, 84, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(2937, 85, '_wp_attached_file', '2019/01/single-1-1.jpg'),
(2938, 86, '_wp_attached_file', '2019/01/single-1.jpg'),
(2939, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2019/01/single-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"single-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"single-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"single-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"single-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"single-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"single-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2940, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2019/01/single-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"single-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2941, 87, '_wp_attached_file', '2019/01/single-1-2.jpg'),
(2942, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2019/01/single-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"single-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"single-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"single-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"single-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"single-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"single-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"single-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2943, 86, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(2944, 85, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(2945, 87, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(2946, 88, '_wp_attached_file', '2019/01/t-shirt-with-logo-1-1.jpg'),
(2947, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2019/01/t-shirt-with-logo-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2948, 89, '_wp_attached_file', '2019/01/t-shirt-with-logo-1.jpg'),
(2949, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2019/01/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2950, 90, '_wp_attached_file', '2019/01/t-shirt-with-logo-1-2.jpg'),
(2951, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2019/01/t-shirt-with-logo-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"t-shirt-with-logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2952, 88, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(2953, 89, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(2954, 90, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(2955, 91, '_wp_attached_file', '2019/01/beanie-with-logo-1.jpg'),
(2956, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2019/01/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2957, 92, '_wp_attached_file', '2019/01/beanie-with-logo-1-1.jpg'),
(2958, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2019/01/beanie-with-logo-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2959, 91, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(2960, 92, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(2961, 93, '_wp_attached_file', '2019/01/beanie-with-logo-1-2.jpg'),
(2962, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2019/01/beanie-with-logo-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"beanie-with-logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2963, 93, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(2964, 94, '_wp_attached_file', '2019/01/logo-1.jpg'),
(2965, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2019/01/logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"logo-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2966, 95, '_wp_attached_file', '2019/01/logo-1-1.jpg'),
(2967, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:20:\"2019/01/logo-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"logo-1-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-1-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"logo-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"logo-1-1-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2968, 94, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(2969, 95, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(2970, 96, '_wp_attached_file', '2019/01/logo-1-2.jpg'),
(2971, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:20:\"2019/01/logo-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"logo-1-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo-1-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"logo-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"logo-1-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2972, 96, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(2973, 97, '_wp_attached_file', '2019/01/pennant-1.jpg'),
(2974, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2019/01/pennant-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"pennant-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2975, 98, '_wp_attached_file', '2019/01/pennant-1-1.jpg'),
(2976, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/01/pennant-1-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"pennant-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"pennant-1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2977, 97, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(2978, 98, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(2979, 99, '_wp_attached_file', '2019/01/pennant-1-2.jpg'),
(2980, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2019/01/pennant-1-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"pennant-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"pennant-1-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"pennant-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2981, 99, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(2982, 100, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581056859;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(2983, 101, '_edit_last', '1'),
(2984, 101, 'total_sales', '0'),
(2985, 101, '_tax_status', 'taxable'),
(2986, 101, '_tax_class', ''),
(2987, 101, '_manage_stock', 'no'),
(2988, 101, '_backorders', 'no'),
(2989, 101, '_sold_individually', 'no'),
(2990, 101, '_virtual', 'no'),
(2991, 101, '_downloadable', 'no'),
(2992, 101, '_download_limit', '-1'),
(2993, 101, '_download_expiry', '-1'),
(2994, 101, '_stock', NULL),
(2995, 101, '_stock_status', 'instock'),
(2996, 101, '_wc_average_rating', '0'),
(2997, 101, '_wc_review_count', '0'),
(2998, 101, '_product_version', '3.9.1'),
(2999, 101, '_edit_lock', '1581053863:1'),
(3000, 102, '_edit_last', '1'),
(3001, 102, 'total_sales', '0'),
(3002, 102, '_tax_status', 'taxable'),
(3003, 102, '_tax_class', ''),
(3004, 102, '_manage_stock', 'no'),
(3005, 102, '_backorders', 'no'),
(3006, 102, '_sold_individually', 'no'),
(3007, 102, '_virtual', 'no'),
(3008, 102, '_downloadable', 'no'),
(3009, 102, '_download_limit', '-1'),
(3010, 102, '_download_expiry', '-1'),
(3011, 102, '_stock', NULL),
(3012, 102, '_stock_status', 'instock'),
(3013, 102, '_wc_average_rating', '0'),
(3014, 102, '_wc_review_count', '0'),
(3015, 102, '_product_version', '3.9.1'),
(3016, 102, '_edit_lock', '1581053945:1'),
(3017, 103, '_edit_lock', '1581053843:1'),
(3018, 105, '_edit_lock', '1581053856:1'),
(3019, 101, '_wp_trash_meta_status', 'publish'),
(3020, 101, '_wp_trash_meta_time', '1581054016'),
(3021, 101, '_wp_desired_post_slug', 'gioi-thieu'),
(3022, 102, '_wp_trash_meta_status', 'publish'),
(3023, 102, '_wp_trash_meta_time', '1581054020'),
(3024, 102, '_wp_desired_post_slug', 'lien-he'),
(3025, 107, '_menu_item_type', 'post_type'),
(3026, 107, '_menu_item_menu_item_parent', '0'),
(3027, 107, '_menu_item_object_id', '105'),
(3028, 107, '_menu_item_object', 'page'),
(3029, 107, '_menu_item_target', ''),
(3030, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3031, 107, '_menu_item_xfn', ''),
(3032, 107, '_menu_item_url', ''),
(3034, 108, '_menu_item_type', 'post_type'),
(3035, 108, '_menu_item_menu_item_parent', '0'),
(3036, 108, '_menu_item_object_id', '103'),
(3037, 108, '_menu_item_object', 'page'),
(3038, 108, '_menu_item_target', ''),
(3039, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3040, 108, '_menu_item_xfn', ''),
(3041, 108, '_menu_item_url', ''),
(3043, 109, '_menu_item_type', 'post_type'),
(3044, 109, '_menu_item_menu_item_parent', '0'),
(3045, 109, '_menu_item_object_id', '6'),
(3046, 109, '_menu_item_object', 'page'),
(3047, 109, '_menu_item_target', ''),
(3048, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3049, 109, '_menu_item_xfn', ''),
(3050, 109, '_menu_item_url', ''),
(3061, 111, '_menu_item_type', 'taxonomy'),
(3062, 111, '_menu_item_menu_item_parent', '109'),
(3063, 111, '_menu_item_object_id', '35'),
(3064, 111, '_menu_item_object', 'product_cat'),
(3065, 111, '_menu_item_target', ''),
(3066, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3067, 111, '_menu_item_xfn', ''),
(3068, 111, '_menu_item_url', ''),
(3070, 112, '_menu_item_type', 'taxonomy'),
(3071, 112, '_menu_item_menu_item_parent', '109'),
(3072, 112, '_menu_item_object_id', '31'),
(3073, 112, '_menu_item_object', 'product_cat'),
(3074, 112, '_menu_item_target', ''),
(3075, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3076, 112, '_menu_item_xfn', ''),
(3077, 112, '_menu_item_url', ''),
(3079, 113, '_menu_item_type', 'taxonomy'),
(3080, 113, '_menu_item_menu_item_parent', '112'),
(3081, 113, '_menu_item_object_id', '34'),
(3082, 113, '_menu_item_object', 'product_cat'),
(3083, 113, '_menu_item_target', ''),
(3084, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3085, 113, '_menu_item_xfn', ''),
(3086, 113, '_menu_item_url', ''),
(3088, 114, '_menu_item_type', 'taxonomy'),
(3089, 114, '_menu_item_menu_item_parent', '112'),
(3090, 114, '_menu_item_object_id', '33'),
(3091, 114, '_menu_item_object', 'product_cat'),
(3092, 114, '_menu_item_target', ''),
(3093, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3094, 114, '_menu_item_xfn', ''),
(3095, 114, '_menu_item_url', ''),
(3097, 115, '_menu_item_type', 'taxonomy'),
(3098, 115, '_menu_item_menu_item_parent', '112'),
(3099, 115, '_menu_item_object_id', '32'),
(3100, 115, '_menu_item_object', 'product_cat'),
(3101, 115, '_menu_item_target', ''),
(3102, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3103, 115, '_menu_item_xfn', ''),
(3104, 115, '_menu_item_url', ''),
(3106, 116, '_wp_trash_meta_status', 'publish'),
(3107, 116, '_wp_trash_meta_time', '1581055168'),
(3108, 117, '_edit_lock', '1581056337:1'),
(3111, 119, '_edit_lock', '1581058232:1'),
(3112, 119, '_wp_page_template', 'template-homepage.php'),
(3113, 121, '_wp_trash_meta_status', 'publish'),
(3114, 121, '_wp_trash_meta_time', '1581056530'),
(3115, 122, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1581060469;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(3116, 123, '_menu_item_type', 'post_type'),
(3117, 123, '_menu_item_menu_item_parent', '0'),
(3118, 123, '_menu_item_object_id', '119'),
(3119, 123, '_menu_item_object', 'page'),
(3120, 123, '_menu_item_target', ''),
(3121, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(3122, 123, '_menu_item_xfn', ''),
(3123, 123, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-06 23:53:57', '2020-02-06 23:53:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-02-06 23:53:57', '2020-02-06 23:53:57', '', 0, 'http://localhost/kienphongjf/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-06 23:53:57', '2020-02-06 23:53:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/kienphongjf/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-06 23:53:57', '2020-02-06 23:53:57', '', 0, 'http://localhost/kienphongjf/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-06 23:53:57', '2020-02-06 23:53:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/kienphongjf.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-06 23:53:57', '2020-02-06 23:53:57', '', 0, 'http://localhost/kienphongjf/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-02-06 23:54:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-06 23:54:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/kienphongjf/?p=4', 0, 'post', '', 0),
(5, 1, '2020-02-07 00:34:31', '2020-02-07 00:34:31', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-02-07 00:34:31', '2020-02-07 00:34:31', '', 0, 'http://localhost/kienphongjf/wp-content/uploads/2020/02/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-02-07 00:39:16', '2020-02-07 00:39:16', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-02-07 00:39:16', '2020-02-07 00:39:16', '', 0, 'http://localhost/kienphongjf/shop/', 0, 'page', '', 0),
(7, 1, '2020-02-07 00:39:16', '2020-02-07 00:39:16', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-02-07 00:39:16', '2020-02-07 00:39:16', '', 0, 'http://localhost/kienphongjf/cart/', 0, 'page', '', 0),
(8, 1, '2020-02-07 00:39:16', '2020-02-07 00:39:16', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-02-07 00:39:16', '2020-02-07 00:39:16', '', 0, 'http://localhost/kienphongjf/checkout/', 0, 'page', '', 0),
(9, 1, '2020-02-07 00:39:16', '2020-02-07 00:39:16', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-02-07 00:39:16', '2020-02-07 00:39:16', '', 0, 'http://localhost/kienphongjf/my-account/', 0, 'page', '', 0),
(10, 1, '2020-02-07 00:39:54', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-02-07 00:39:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/kienphongjf/?post_type=product&p=10', 0, 'product', '', 0),
(11, 0, '2020-02-07 00:39:54', '2020-02-07 00:39:54', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3cb20badb7a6.86221771-TMJCxPUEsja6RGSsXUNjTQS3mcd9ilUs', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=11', 0, 'scheduled-action', '', 3),
(12, 0, '2020-02-07 00:39:59', '2020-02-07 00:39:59', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3cb20bba3750.51138047-cy4kU8S9wtv5uIL3SWnarpDYGDaQv2nY', '', '', '2020-02-07 00:40:43', '2020-02-07 00:40:43', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=12', 0, 'scheduled-action', '', 3),
(13, 0, '2020-02-07 01:40:43', '2020-02-07 01:40:43', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3cc069c0ec59.43049170-u2OT7lfRR9m2XcuZXdEOuzjWKrjZUezu', '', '', '2020-02-07 01:42:01', '2020-02-07 01:42:01', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=13', 0, 'scheduled-action', '', 3),
(14, 0, '2020-02-07 02:42:01', '2020-02-07 02:42:01', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3cceb9926690.32824796-63KPYjMuJg64WjvBJlHHVfE8U2SjWirB', '', '', '2020-02-07 02:43:05', '2020-02-07 02:43:05', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=14', 0, 'scheduled-action', '', 3),
(15, 1, '2020-02-07 02:25:33', '2020-02-07 02:25:33', 'http://localhost/kienphongjf/wp-content/uploads/2020/02/sample_products.csv', 'sample_products.csv', '', 'private', 'open', 'closed', '', 'sample_products-csv', '', '', '2020-02-07 02:25:33', '2020-02-07 02:25:33', '', 0, 'http://localhost/kienphongjf/wp-content/uploads/2020/02/sample_products.csv', 0, 'attachment', 'text/csv', 0),
(16, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/long-sleeve-tee/', 0, 'product', '', 0),
(17, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/polo/', 0, 'product', '', 0),
(18, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/album/', 0, 'product', '', 0),
(19, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/single/', 0, 'product', '', 0),
(20, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Red', 'color: Red', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 24, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-red/', 0, 'product_variation', '', 0),
(21, 1, '2020-02-07 02:25:59', '2020-02-07 02:25:59', 'http://localhost/kienphongjf/wp-content/uploads/2020/02/sample_tax_rates.csv.txt', 'sample_tax_rates.csv.txt', '', 'private', 'open', 'closed', '', 'sample_tax_rates-csv-txt', '', '', '2020-02-07 02:25:59', '2020-02-07 02:25:59', '', 0, 'http://localhost/kienphongjf/wp-content/uploads/2020/02/sample_tax_rates.csv.txt', 0, 'attachment', '', 0),
(22, 0, '2020-02-07 03:43:05', '2020-02-07 03:43:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3cf54b74a8c2.58653241-o6IqNaDVs7CWUkU5z69aeKbnqG41C9uI', '', '', '2020-02-07 05:27:39', '2020-02-07 05:27:39', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=22', 0, 'scheduled-action', '', 3),
(24, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt/', 0, 'product', '', 0),
(25, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie/', 0, 'product', '', 0),
(26, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-logo/', 0, 'product', '', 0),
(27, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt/', 0, 'product', '', 0),
(28, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie/', 0, 'product', '', 0),
(29, 1, '2019-01-16 13:01:52', '2019-01-16 13:01:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2019-01-16 13:01:52', '2019-01-16 13:01:52', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/belt/', 0, 'product', '', 0),
(30, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/cap/', 0, 'product', '', 0),
(31, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/sunglasses/', 0, 'product', '', 0),
(32, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-pocket/', 0, 'product', '', 0),
(33, 1, '2019-01-16 13:01:53', '2019-01-16 13:01:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2019-01-16 13:01:53', '2019-01-16 13:01:53', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-with-zipper/', 0, 'product', '', 0),
(34, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Green', 'color: Green', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 24, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-green/', 0, 'product_variation', '', 0),
(35, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'V-Neck T-Shirt - Blue', 'color: Blue', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 24, 'https://woocommercecore.mystagingwebsite.com/product/v-neck-t-shirt-blue/', 0, 'product_variation', '', 0),
(36, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Red, No', 'color: Red, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 25, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-red-no', 1, 'product_variation', '', 0),
(37, 1, '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 'Hoodie - Green, No', 'color: Green, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2019-01-16 13:01:54', '2019-01-16 13:01:54', '', 25, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-green-no/', 2, 'product_variation', '', 0),
(38, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, No', 'color: Blue, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 25, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-no', 3, 'product_variation', '', 0),
(39, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/t-shirt-with-logo/', 0, 'product', '', 0),
(40, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/beanie-with-logo/', 0, 'product', '', 0),
(41, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/logo-collection/', 0, 'product', '', 0),
(42, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 0, 'https://woocommercecore.mystagingwebsite.com/product/wordpress-pennant/', 0, 'product', '', 0),
(43, 1, '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 'Hoodie - Blue, Yes', 'color: Blue, Logo: Yes', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2019-01-16 13:01:55', '2019-01-16 13:01:55', '', 25, 'https://woocommercecore.mystagingwebsite.com/product/hoodie-blue-yes/', 0, 'product_variation', '', 0),
(44, 1, '2019-01-16 13:01:56', '2019-01-16 13:01:56', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2019-01-16 13:01:56', '2019-01-16 13:01:56', '', 24, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-01-16 13:01:57', '2019-01-16 13:01:57', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2019-01-16 13:01:57', '2019-01-16 13:01:57', '', 24, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 24, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2019-01-16 13:01:58', '2019-01-16 13:01:58', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-01-16 13:01:59', '2019-01-16 13:01:59', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2019-01-16 13:01:59', '2019-01-16 13:01:59', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg-2', '', '', '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-green-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg-3', '', '', '2019-01-16 13:02:00', '2019-01-16 13:02:00', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-green-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg-2', '', '', '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-logo-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg-3', '', '', '2019-01-16 13:02:01', '2019-01-16 13:02:01', '', 25, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-logo-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 27, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg-2', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 27, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/tshirt-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg-3', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 27, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/tshirt-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 28, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg-2', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 28, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg-3', '', '', '2019-01-16 13:02:02', '2019-01-16 13:02:02', '', 28, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 29, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/belt-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg-2', '', '', '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 29, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg-3', '', '', '2019-01-16 13:02:03', '2019-01-16 13:02:03', '', 29, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/belt-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 30, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg-2', '', '', '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 30, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg-3', '', '', '2019-01-16 13:02:04', '2019-01-16 13:02:04', '', 30, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/cap-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 31, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg-2', '', '', '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 31, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/sunglasses-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg-3', '', '', '2019-01-16 13:02:05', '2019-01-16 13:02:05', '', 31, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/sunglasses-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 32, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg-2', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 32, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-pocket-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg-3', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 32, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-pocket-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 33, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg-2', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 33, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-zipper-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg-3', '', '', '2019-01-16 13:02:06', '2019-01-16 13:02:06', '', 33, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/hoodie-with-zipper-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 16, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg-2', '', '', '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 16, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/long-sleeve-tee-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg-3', '', '', '2019-01-16 13:02:07', '2019-01-16 13:02:07', '', 16, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/long-sleeve-tee-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 17, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg-2', '', '', '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 17, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/polo-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg-3', '', '', '2019-01-16 13:02:08', '2019-01-16 13:02:08', '', 17, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/polo-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 18, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg-2', '', '', '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 18, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/album-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg-3', '', '', '2019-01-16 13:02:09', '2019-01-16 13:02:09', '', 18, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/album-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 19, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/single-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 19, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg-2', '', '', '2019-01-16 13:02:10', '2019-01-16 13:02:10', '', 19, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/single-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 39, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/t-shirt-with-logo-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg-2', '', '', '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 39, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg-3', '', '', '2019-01-16 13:02:11', '2019-01-16 13:02:11', '', 39, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/t-shirt-with-logo-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 40, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg-2', '', '', '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 40, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-with-logo-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg-3', '', '', '2019-01-16 13:02:12', '2019-01-16 13:02:12', '', 40, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/beanie-with-logo-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 41, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg-2', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 41, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/logo-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg-3', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 41, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/logo-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 42, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg-2', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 42, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/pennant-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg-3', '', '', '2019-01-16 13:02:13', '2019-01-16 13:02:13', '', 42, 'http://localhost/kienphongjf/wp-content/uploads/2019/01/pennant-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 0, '2020-02-07 06:27:39', '2020-02-07 06:27:39', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e3d03650493d0.15168027-OpVXweXOqKltOUunYoKfyLBKJ8kdAXg1', '', '', '2020-02-07 06:27:49', '2020-02-07 06:27:49', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&#038;p=100', 0, 'scheduled-action', '', 3),
(101, 1, '2020-02-07 05:37:41', '2020-02-07 05:37:41', '', 'Giới thiệu', '', 'trash', 'open', 'closed', '', 'gioi-thieu__trashed', '', '', '2020-02-07 05:40:16', '2020-02-07 05:40:16', '', 0, 'http://localhost/kienphongjf/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2020-02-07 05:39:04', '2020-02-07 05:39:04', '', 'Liên Hệ', '', 'trash', 'open', 'closed', '', 'lien-he__trashed', '', '', '2020-02-07 05:40:20', '2020-02-07 05:40:20', '', 0, 'http://localhost/kienphongjf/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2020-02-07 05:39:41', '2020-02-07 05:39:41', '', 'Liên Hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-02-07 05:39:41', '2020-02-07 05:39:41', '', 0, 'http://localhost/kienphongjf/?page_id=103', 0, 'page', '', 0),
(104, 1, '2020-02-07 05:39:41', '2020-02-07 05:39:41', '', 'Liên Hệ', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2020-02-07 05:39:41', '2020-02-07 05:39:41', '', 103, 'http://localhost/kienphongjf/2020/02/07/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-02-07 05:39:57', '2020-02-07 05:39:57', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2020-02-07 05:39:57', '2020-02-07 05:39:57', '', 0, 'http://localhost/kienphongjf/?page_id=105', 0, 'page', '', 0),
(106, 1, '2020-02-07 05:39:57', '2020-02-07 05:39:57', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-02-07 05:39:57', '2020-02-07 05:39:57', '', 105, 'http://localhost/kienphongjf/2020/02/07/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-02-07 05:45:31', '2020-02-07 05:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=107', 8, 'nav_menu_item', '', 0),
(108, 1, '2020-02-07 05:45:31', '2020-02-07 05:45:31', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=108', 9, 'nav_menu_item', '', 0),
(109, 1, '2020-02-07 05:45:31', '2020-02-07 05:45:31', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', '109', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=109', 2, 'nav_menu_item', '', 0),
(111, 1, '2020-02-07 05:48:31', '2020-02-07 05:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=111', 7, 'nav_menu_item', '', 0),
(112, 1, '2020-02-07 05:48:31', '2020-02-07 05:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=112', 3, 'nav_menu_item', '', 0),
(113, 1, '2020-02-07 05:48:31', '2020-02-07 05:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 31, 'http://localhost/kienphongjf/?p=113', 4, 'nav_menu_item', '', 0),
(114, 1, '2020-02-07 05:48:31', '2020-02-07 05:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 31, 'http://localhost/kienphongjf/?p=114', 5, 'nav_menu_item', '', 0),
(115, 1, '2020-02-07 05:48:31', '2020-02-07 05:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 31, 'http://localhost/kienphongjf/?p=115', 6, 'nav_menu_item', '', 0),
(116, 1, '2020-02-07 05:59:27', '2020-02-07 05:59:27', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 05:59:27\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 05:59:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40e91e32-9e04-4242-af0b-06e25d6fd7a4', '', '', '2020-02-07 05:59:27', '2020-02-07 05:59:27', '', 0, 'http://localhost/kienphongjf/2020/02/07/40e91e32-9e04-4242-af0b-06e25d6fd7a4/', 0, 'customize_changeset', '', 0),
(117, 1, '2020-02-07 06:21:14', '2020-02-07 06:21:14', '', 'HomePage', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2020-02-07 06:21:14', '2020-02-07 06:21:14', '', 0, 'http://localhost/kienphongjf/?p=117', 0, 'post', '', 0),
(118, 1, '2020-02-07 06:21:14', '2020-02-07 06:21:14', '', 'HomePage', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-02-07 06:21:14', '2020-02-07 06:21:14', '', 117, 'http://localhost/kienphongjf/2020/02/07/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-02-07 06:21:37', '2020-02-07 06:21:37', '', 'HomePage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-02-07 06:52:55', '2020-02-07 06:52:55', '', 0, 'http://localhost/kienphongjf/?page_id=119', 0, 'page', '', 0),
(120, 1, '2020-02-07 06:21:37', '2020-02-07 06:21:37', '', 'HomePage', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-02-07 06:21:37', '2020-02-07 06:21:37', '', 119, 'http://localhost/kienphongjf/2020/02/07/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-02-07 06:22:10', '2020-02-07 06:22:10', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:10\"\n    },\n    \"page_on_front\": {\n        \"value\": \"119\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-07 06:22:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b80f60d-bd5d-4a1f-a872-ea68ce2b74f0', '', '', '2020-02-07 06:22:10', '2020-02-07 06:22:10', '', 0, 'http://localhost/kienphongjf/2020/02/07/4b80f60d-bd5d-4a1f-a872-ea68ce2b74f0/', 0, 'customize_changeset', '', 0),
(122, 0, '2020-02-07 07:27:49', '2020-02-07 07:27:49', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2020-02-07 07:27:49', '2020-02-07 07:27:49', '', 0, 'http://localhost/kienphongjf/?post_type=scheduled-action&p=122', 0, 'scheduled-action', '', 1),
(123, 1, '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 'Trang Chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu-2', '', '', '2020-02-07 06:39:06', '2020-02-07 06:39:06', '', 0, 'http://localhost/kienphongjf/?p=123', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 18, 'order', '0'),
(3, 19, 'order', '0'),
(4, 20, 'order', '0'),
(5, 21, 'order', '0'),
(6, 15, 'product_count_product_cat', '0'),
(7, 22, 'order', '0'),
(8, 18, 'product_count_product_cat', '5'),
(9, 19, 'product_count_product_cat', '3'),
(10, 20, 'product_count_product_cat', '5'),
(11, 21, 'product_count_product_cat', '2'),
(12, 17, 'product_count_product_cat', '14'),
(13, 22, 'product_count_product_cat', '1'),
(14, 31, 'order', '0'),
(15, 31, 'display_type', ''),
(16, 31, 'thumbnail_id', '0'),
(17, 32, 'order', '0'),
(18, 32, 'display_type', ''),
(19, 32, 'thumbnail_id', '0'),
(20, 33, 'order', '0'),
(21, 33, 'display_type', ''),
(22, 33, 'thumbnail_id', '0'),
(23, 34, 'order', '0'),
(24, 34, 'display_type', ''),
(25, 34, 'thumbnail_id', '0'),
(26, 35, 'order', '0'),
(27, 35, 'display_type', ''),
(28, 35, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'wc-admin-notes', 'wc-admin-notes', 0),
(17, 'Clothing', 'clothing', 0),
(18, 'Tshirts', 'tshirts', 0),
(19, 'Hoodies', 'hoodies', 0),
(20, 'Accessories', 'accessories', 0),
(21, 'Music', 'music', 0),
(22, 'Decor', 'decor', 0),
(23, 'Blue', 'blue', 0),
(24, 'Green', 'green', 0),
(25, 'Large', 'large', 0),
(26, 'Medium', 'medium', 0),
(27, 'Red', 'red', 0),
(28, 'Small', 'small', 0),
(29, 'Gray', 'gray', 0),
(30, 'Yellow', 'yellow', 0),
(31, 'Thanh Long', 'thanh-long', 0),
(32, 'Ruột trắng', 'ruot-trang', 0),
(33, 'Ruột tim hồng', 'ruot-tim-hong', 0),
(34, 'Ruột đỏ', 'ruot-do', 0),
(35, 'Rau quả khác', 'rau-qua-khac', 0),
(36, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 16, 0),
(13, 16, 0),
(14, 16, 0),
(16, 2, 0),
(16, 18, 0),
(16, 24, 0),
(17, 2, 0),
(17, 18, 0),
(17, 23, 0),
(18, 2, 0),
(18, 21, 0),
(19, 2, 0),
(19, 21, 0),
(22, 16, 0),
(24, 4, 0),
(24, 8, 0),
(24, 18, 0),
(24, 23, 0),
(24, 24, 0),
(24, 25, 0),
(24, 26, 0),
(24, 27, 0),
(24, 28, 0),
(25, 4, 0),
(25, 19, 0),
(25, 23, 0),
(25, 24, 0),
(25, 27, 0),
(26, 2, 0),
(26, 19, 0),
(26, 23, 0),
(27, 2, 0),
(27, 18, 0),
(27, 29, 0),
(28, 2, 0),
(28, 20, 0),
(28, 27, 0),
(29, 2, 0),
(29, 20, 0),
(30, 2, 0),
(30, 8, 0),
(30, 20, 0),
(30, 30, 0),
(31, 2, 0),
(31, 8, 0),
(31, 20, 0),
(32, 2, 0),
(32, 6, 0),
(32, 7, 0),
(32, 8, 0),
(32, 19, 0),
(32, 29, 0),
(33, 2, 0),
(33, 8, 0),
(33, 19, 0),
(39, 2, 0),
(39, 18, 0),
(39, 29, 0),
(40, 2, 0),
(40, 20, 0),
(40, 27, 0),
(41, 3, 0),
(41, 17, 0),
(42, 5, 0),
(42, 22, 0),
(100, 16, 0),
(101, 2, 0),
(101, 15, 0),
(102, 2, 0),
(102, 15, 0),
(107, 36, 0),
(108, 36, 0),
(109, 36, 0),
(111, 36, 0),
(112, 36, 0),
(113, 36, 0),
(114, 36, 0),
(115, 36, 0),
(117, 1, 0),
(122, 16, 0),
(123, 36, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'product_type', '', 0, 14),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 5),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'action-group', '', 0, 5),
(17, 17, 'product_cat', '', 0, 1),
(18, 18, 'product_cat', '', 17, 5),
(19, 19, 'product_cat', '', 17, 4),
(20, 20, 'product_cat', '', 17, 5),
(21, 21, 'product_cat', '', 0, 2),
(22, 22, 'product_cat', '', 0, 1),
(23, 23, 'pa_color', '', 0, 4),
(24, 24, 'pa_color', '', 0, 3),
(25, 25, 'pa_size', '', 0, 1),
(26, 26, 'pa_size', '', 0, 1),
(27, 27, 'pa_color', '', 0, 4),
(28, 28, 'pa_size', '', 0, 1),
(29, 29, 'pa_color', '', 0, 3),
(30, 30, 'pa_color', '', 0, 1),
(31, 31, 'product_cat', '', 0, 0),
(32, 32, 'product_cat', '', 31, 0),
(33, 33, 'product_cat', '', 31, 0),
(34, 34, 'product_cat', '', 31, 0),
(35, 35, 'product_cat', '', 0, 0),
(36, 36, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"198b5b6fb6ea168a2b57dcc6a1ee73ccac5a615ab41cdd5140a8bf3fa63df752\";a:4:{s:10:\"expiration\";i:1581206055;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1581033255;}s:64:\"1e57bcc0470a540e31f56064e6421ff397286d6ff43ebd34afec7885efbfa74e\";a:4:{s:10:\"expiration\";i:1581227256;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/85.0.130 Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581054456;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:wsVa+REULd+KsfBQBJz3GfNV'),
(19, 1, 'wc_last_active', '1581033600'),
(20, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(21, 1, 'wp_product_import_error_log', 'a:25:{i:0;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:44;s:3:\"sku\";s:13:\"woo-vneck-tee\";s:3:\"row\";s:40:\"V-Neck T-Shirt, ID 44, SKU woo-vneck-tee\";}}}i:1;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:45;s:3:\"sku\";s:10:\"woo-hoodie\";s:3:\"row\";s:29:\"Hoodie, ID 45, SKU woo-hoodie\";}}}i:2;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:46;s:3:\"sku\";s:20:\"woo-hoodie-with-logo\";s:3:\"row\";s:49:\"Hoodie with Logo, ID 46, SKU woo-hoodie-with-logo\";}}}i:3;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:47;s:3:\"sku\";s:10:\"woo-tshirt\";s:3:\"row\";s:30:\"T-Shirt, ID 47, SKU woo-tshirt\";}}}i:4;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:48;s:3:\"sku\";s:10:\"woo-beanie\";s:3:\"row\";s:29:\"Beanie, ID 48, SKU woo-beanie\";}}}i:5;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:58;s:3:\"sku\";s:8:\"woo-belt\";s:3:\"row\";s:25:\"Belt, ID 58, SKU woo-belt\";}}}i:6;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:60;s:3:\"sku\";s:7:\"woo-cap\";s:3:\"row\";s:23:\"Cap, ID 60, SKU woo-cap\";}}}i:7;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:62;s:3:\"sku\";s:14:\"woo-sunglasses\";s:3:\"row\";s:37:\"Sunglasses, ID 62, SKU woo-sunglasses\";}}}i:8;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:64;s:3:\"sku\";s:22:\"woo-hoodie-with-pocket\";s:3:\"row\";s:53:\"Hoodie with Pocket, ID 64, SKU woo-hoodie-with-pocket\";}}}i:9;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:66;s:3:\"sku\";s:22:\"woo-hoodie-with-zipper\";s:3:\"row\";s:53:\"Hoodie with Zipper, ID 66, SKU woo-hoodie-with-zipper\";}}}i:10;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:68;s:3:\"sku\";s:19:\"woo-long-sleeve-tee\";s:3:\"row\";s:47:\"Long Sleeve Tee, ID 68, SKU woo-long-sleeve-tee\";}}}i:11;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:70;s:3:\"sku\";s:8:\"woo-polo\";s:3:\"row\";s:25:\"Polo, ID 70, SKU woo-polo\";}}}i:12;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:73;s:3:\"sku\";s:9:\"woo-album\";s:3:\"row\";s:27:\"Album, ID 73, SKU woo-album\";}}}i:13;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:75;s:3:\"sku\";s:10:\"woo-single\";s:3:\"row\";s:29:\"Single, ID 75, SKU woo-single\";}}}i:14;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:76;s:3:\"sku\";s:17:\"woo-vneck-tee-red\";s:3:\"row\";s:50:\"V-Neck T-Shirt - Red, ID 76, SKU woo-vneck-tee-red\";}}}i:15;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:77;s:3:\"sku\";s:19:\"woo-vneck-tee-green\";s:3:\"row\";s:54:\"V-Neck T-Shirt - Green, ID 77, SKU woo-vneck-tee-green\";}}}i:16;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:78;s:3:\"sku\";s:18:\"woo-vneck-tee-blue\";s:3:\"row\";s:52:\"V-Neck T-Shirt - Blue, ID 78, SKU woo-vneck-tee-blue\";}}}i:17;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:79;s:3:\"sku\";s:14:\"woo-hoodie-red\";s:3:\"row\";s:43:\"Hoodie - Red, No, ID 79, SKU woo-hoodie-red\";}}}i:18;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:80;s:3:\"sku\";s:16:\"woo-hoodie-green\";s:3:\"row\";s:47:\"Hoodie - Green, No, ID 80, SKU woo-hoodie-green\";}}}i:19;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:81;s:3:\"sku\";s:15:\"woo-hoodie-blue\";s:3:\"row\";s:45:\"Hoodie - Blue, No, ID 81, SKU woo-hoodie-blue\";}}}i:20;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:83;s:3:\"sku\";s:15:\"Woo-tshirt-logo\";s:3:\"row\";s:45:\"T-Shirt with Logo, ID 83, SKU Woo-tshirt-logo\";}}}i:21;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:85;s:3:\"sku\";s:15:\"Woo-beanie-logo\";s:3:\"row\";s:44:\"Beanie with Logo, ID 85, SKU Woo-beanie-logo\";}}}i:22;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:87;s:3:\"sku\";s:15:\"logo-collection\";s:3:\"row\";s:43:\"Logo Collection, ID 87, SKU logo-collection\";}}}i:23;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:89;s:3:\"sku\";s:10:\"wp-pennant\";s:3:\"row\";s:40:\"WordPress Pennant, ID 89, SKU wp-pennant\";}}}i:24;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:90;s:3:\"sku\";s:20:\"woo-hoodie-blue-logo\";s:3:\"row\";s:51:\"Hoodie - Blue, Yes, ID 90, SKU woo-hoodie-blue-logo\";}}}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-product_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '36'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoU8kepTkXIfM32q/L4WztipCkHMAT1', 'admin', 'tranthithanhtra8@gmail.com', '', '2020-02-06 23:53:57', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-add-first-product', 'info', 'en_US', 'Add your first product', 'Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2020-02-07 00:39:59', NULL, 0),
(2, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-02-07 00:39:59', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-02-07 00:40:00', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'add-a-product', 'Add a product', 'http://localhost/kienphongjf/wp-admin/post-new.php?post_type=product', 'actioned', 1),
(2, 2, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(16, 'woo-vneck-tee', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(17, 'woo-hoodie', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(18, 'woo-hoodie-with-logo', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(19, 'woo-tshirt', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(20, 'woo-beanie', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(101, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(102, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0),
(2, 'size', 'size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:8:{s:22:\"mailchimp_landing_site\";s:64:\"http://localhost/kienphongjf/kienphongjf/wp-admin/admin-ajax.php\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:716:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"tranthithanhtra8@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1581208797);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'GB', '', '20.0000', 'VAT', 1, 1, 1, 0, ''),
(2, 'GB', '', '5.0000', 'VAT', 1, 1, 1, 1, 'reduced-rate'),
(3, 'GB', '', '0.0000', 'VAT', 1, 1, 1, 2, 'zero-rate'),
(4, 'US', '', '10.0000', 'US', 1, 1, 1, 3, ''),
(5, 'US', 'AL', '2.0000', 'US AL', 2, 1, 1, 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_tax_rate_locations`
--

INSERT INTO `wp_woocommerce_tax_rate_locations` (`location_id`, `location_code`, `tax_rate_id`, `location_type`) VALUES
(1, '12345', 5, 'postcode'),
(2, '123456', 5, 'postcode');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Chỉ mục cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Chỉ mục cho bảng `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3125;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
