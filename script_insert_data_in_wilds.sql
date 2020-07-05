


#
# TABLE STRUCTURE FOR: catalogs
#

DROP TABLE IF EXISTS `catalogs`;

CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `catalogs` (`id`, `name`) VALUES ('1', 'Car goods');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('2', 'Accessories');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('3', 'Hair accessories');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('4', 'Baby accessories');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('5', 'Shoe accessorie');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('6', 'Underwear');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('7', 'Baby underwear');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('8', 'Fashion jewelry');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('9', 'Hats');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('10', 'Country house');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('11', 'For a holiday');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('12', 'House');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('13', 'Toys');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('14', 'Book products and discs');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('15', 'Beauty');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('16', 'Footwear');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('17', 'Clothesr');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('18', 'Clothing for babies');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('19', 'Orthopedics');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('20', 'Dishes & kitchenware');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('21', 'Handicraft');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('22', 'Garden tools');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('23', 'Bathroom fitments');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('24', 'Sport footwear');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('25', 'Sportswear');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('26', 'Sports accessories');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('27', 'Sporting goods');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('28', 'Construction Materials');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('29', 'Products for adults');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('30', 'Goods for pets');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('31', 'Baby products');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('32', 'Storage');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('33', 'Curtains and accessories');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('34', 'Electronics');
INSERT INTO `catalogs` (`id`, `name`) VALUES ('35', 'Stationery');

#
# TABLE STRUCTURE FOR: clients
#

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fullname_idx` (`fullname`),
  KEY `client_phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('1', 'Ayden Von', 'reinger.kaleigh@example.net', '64', '2015-08-19 15:02:42', '2016-11-18 09:30:25');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('2', 'Mae Hintz', 'bleffler@example.com', '883973', '2017-05-24 17:01:36', '2017-12-06 12:43:48');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('3', 'Mr. Alfonso Hackett', 'norene65@example.org', '1', '2013-08-10 19:45:03', '2017-07-30 05:40:52');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('4', 'Fleta Sanford', 'graham49@example.net', '558', '2018-12-20 00:41:59', '2011-04-09 12:35:52');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('5', 'Ms. Daniella Haley', 'tiana.yost@example.com', '76389725', '2016-07-29 02:06:13', '2018-09-16 07:44:04');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('6', 'Emelia Maggio', 'cielo.haley@example.com', '6549871', '2019-07-22 09:10:53', '2010-10-25 09:51:40');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('7', 'Estella Leannon', 'arianna.koelpin@example.org', '67834521', '2020-06-14 07:46:02', '2012-06-12 13:43:36');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('8', 'Mozell Von', 'treutel.morris@example.net', '84013', '2011-07-13 03:01:47', '2016-02-16 10:18:04');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('9', 'Miss Brandy Ruecker IV', 'schulist.constance@example.net', '7654980', '2016-11-26 02:33:22', '2019-01-05 17:45:18');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('10', 'Mrs. Jazmyn Jast', 'alvena39@example.org', '2901113960', '2015-03-13 00:27:42', '2014-09-29 11:12:58');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('11', 'Mathew Kuhn II', 'xbalistreri@example.org', '5678430', '2013-08-14 16:55:09', '2019-10-20 17:41:08');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('12', 'Roselyn Okuneva', 'gino29@example.net', '4567681', '2012-04-13 08:57:53', '2011-02-07 08:37:29');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('13', 'Raleigh Toy', 'abdul.bernhard@example.org', '0776543', '2016-06-18 15:18:07', '2014-10-06 18:59:59');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('14', 'Orin Conn', 'eleazar.windler@example.com', '78645320', '2013-01-18 05:59:05', '2012-09-27 11:57:35');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('15', 'Elena Fisher', 'theron.mayert@example.org', '5984863765', '2014-09-05 16:59:40', '2019-09-17 03:21:49');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('16', 'Lavina Champlin Sr.', 'lexie58@example.com', '6667626', '2013-12-12 06:19:18', '2017-05-09 15:24:42');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('17', 'Ms. Ellen Gutkowski', 'tatyana.hagenes@example.com', '2068060476', '2017-06-03 20:01:41', '2012-02-08 12:10:25');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('18', 'Ms. Deborah Reinger', 'ali46@example.net', '462368', '2011-08-09 01:49:42', '2015-11-28 16:07:17');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('19', 'Reinhold Abbott III', 'thad61@example.net', '5657430', '2020-03-04 04:36:43', '2012-11-23 19:56:17');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('20', 'Alysa Hyatt', 'breitenberg.lesly@example.net', '75066798', '2012-04-13 00:53:55', '2013-11-01 23:48:44');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('21', 'Sydnee Renner', 'alba.hyatt@example.org', '567887430', '2011-05-03 18:50:18', '2012-09-28 03:05:35');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('22', 'Sarah Reinger Sr.', 'lconn@example.net', '3247651', '2015-08-18 19:51:06', '2018-12-14 18:13:35');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('23', 'Lavina Schultz', 'zmcglynn@example.net', '490062', '2012-12-07 17:20:56', '2017-07-30 22:32:17');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('24', 'Lester Olson', 'zstracke@example.com', '2348760', '2019-11-29 07:10:40', '2015-09-03 04:13:32');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('25', 'Coby Morissette', 'nolan.ahmed@example.org', '748966', '2018-06-13 14:20:44', '2017-04-14 22:01:56');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('26', 'Liza Casper', 'felix25@example.com', '16765443', '2016-08-13 20:28:09', '2017-02-20 16:53:05');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('27', 'Bertrand Sipes I', 'qrobel@example.org', '994751', '2014-01-06 16:16:01', '2016-03-16 16:00:22');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('28', 'Domenic Koepp', 'alejandra.moen@example.net', '596594', '2019-07-05 23:37:50', '2013-07-22 22:17:24');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('29', 'Laurence Fahey', 'monserrate91@example.com', '116774', '2011-01-14 04:05:18', '2011-11-10 07:17:49');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('30', 'Alfonzo Little', 'pink.padberg@example.com', '182794', '2012-06-04 11:13:28', '2011-01-19 00:31:28');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('31', 'Leopold Turner', 'zola.armstrong@example.net', '834765988', '2017-08-01 15:35:57', '2019-08-11 02:10:19');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('32', 'Kristian Daniel', 'mschmidt@example.net', '1776645', '2017-03-26 18:59:25', '2013-01-23 03:41:25');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('33', 'Malika Hodkiewicz', 'mireya.koepp@example.com', '503786544', '2013-03-20 05:12:15', '2017-07-18 05:20:14');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('34', 'Baron Okuneva', 'simeon64@example.com', '66545341', '2012-04-04 22:27:04', '2018-03-03 20:32:12');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('35', 'Abbigail Mraz V', 'prohaska.merritt@example.com', '7676430', '2017-06-12 02:54:35', '2011-12-08 12:26:58');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('36', 'Hilario Medhurst IV', 'jovany.hintz@example.org', '7895431', '2016-11-30 23:05:20', '2010-09-25 13:32:15');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('37', 'Prof. Dale Deckow DVM', 'tevin.schultz@example.org', '384976', '2014-10-26 22:42:47', '2020-02-13 02:33:56');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('38', 'Seamus Pollich', 'ymertz@example.com', '567854323', '2014-02-21 15:20:41', '2013-03-05 19:44:38');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('39', 'Hudson Anderson', 'ljohnson@example.net', '835038', '2013-05-28 18:41:27', '2015-02-14 03:47:12');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('40', 'Lazaro Bartoletti', 'angelina92@example.org', '674440', '2011-08-05 21:32:35', '2017-11-19 11:17:02');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('41', 'Tyrel Pfeffer DVM', 'pfahey@example.org', '87867645467', '2011-08-15 14:07:36', '2013-09-26 01:04:58');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('42', 'Zachary Stark', 'lilliana76@example.com', '1875433', '2011-04-24 07:59:32', '2019-07-02 18:44:28');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('43', 'Miss Talia Kessler', 'ogutkowski@example.org', '658925', '2010-09-04 06:34:39', '2019-09-27 11:28:04');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('44', 'Dr. Noelia Torphy', 'christy01@example.net', '1222563198', '2012-06-28 09:21:03', '2013-11-08 05:28:10');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('45', 'Seth Pfannerstill', 'rafaela09@example.com', '12358896640', '2016-04-04 23:28:45', '2019-07-08 08:11:19');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('46', 'Gonzalo Schuster', 'ppfeffer@example.net', '4679640', '2019-08-28 15:48:01', '2016-08-18 06:36:16');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('47', 'Rickey Robel', 'femard@example.net', '846787899', '2012-04-16 07:14:14', '2011-12-15 06:28:02');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('48', 'Ressie Medhurst Jr.', 'purdy.vaughn@example.org', '8097483575', '2010-10-09 17:35:06', '2010-12-03 05:05:29');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('49', 'Isidro Lockman', 'peyton.hettinger@example.com', '807899865', '2010-09-25 14:01:57', '2017-06-12 22:15:38');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('50', 'Tatyana Kunde', 'wisozk.domenic@example.com', '367886', '2011-06-23 06:14:53', '2011-01-07 04:05:30');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('51', 'Ned Douglas', 'christa97@example.com', '1678865443', '2012-02-26 18:27:41', '2016-05-12 23:22:57');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('52', 'Daphney Hauck', 'tratke@example.org', '506', '2017-10-27 10:16:29', '2015-09-07 14:36:08');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('53', 'Luna Gulgowski', 'eboehm@example.com', '156797', '2014-11-25 20:31:22', '2017-01-14 18:03:58');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('54', 'Ms. Josephine Maggio PhD', 'claire.abernathy@example.net', '197865', '2016-02-13 12:02:28', '2012-07-24 18:46:54');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('55', 'Hosea Swift', 'jairo.beer@example.com', '108683', '2012-06-09 18:37:57', '2012-05-06 10:38:44');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('56', 'Gage Wuckert', 'green.cleve@example.net', '192', '2012-08-28 22:49:25', '2013-04-19 03:12:49');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('57', 'Palma Wunsch', 'marcelo17@example.net', '843', '2019-12-30 17:42:35', '2018-07-21 05:48:21');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('58', 'Daron Pouros', 'halvorson.kylee@example.org', '1567890', '2016-02-15 23:03:03', '2013-12-20 22:58:52');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('59', 'Althea Zieme', 'ward.monroe@example.net', '199678767', '2015-03-25 09:21:35', '2016-01-06 00:32:33');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('60', 'Mrs. Reba Kris Jr.', 'mcclure.maxine@example.org', '988712', '2017-02-12 15:06:25', '2014-09-25 02:02:22');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('61', 'Ruthie Williamson', 'sharon.johnston@example.org', '500554', '2011-04-14 06:53:42', '2017-03-18 14:54:18');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('62', 'Prof. Krystal Ryan', 'michel59@example.org', '724353', '2015-05-01 08:58:31', '2013-12-14 16:29:27');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('63', 'Destin Pfeffer', 'kutch.rachael@example.com', '613', '2019-03-18 19:10:18', '2013-10-15 17:36:52');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('64', 'Miss Natasha Goodwin', 'maurine.spinka@example.org', '469', '2015-09-26 07:11:07', '2015-07-13 09:51:18');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('65', 'Mathilde Rutherford', 'jedidiah46@example.com', '243', '2011-01-31 02:16:04', '2018-04-16 16:28:34');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('66', 'Guy Roberts', 'thiel.elva@example.org', '0', '2012-06-20 01:14:58', '2012-08-25 02:28:22');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('67', 'Prof. Hilma Schuppe', 'batz.eliezer@example.org', '15', '2012-09-09 05:18:24', '2019-07-25 02:00:59');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('68', 'Sylvester Waelchi', 'zieme.ally@example.org', '14', '2010-07-16 14:03:47', '2011-09-09 22:50:39');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('69', 'Madisyn Miller', 'qgottlieb@example.com', '8785522768', '2012-05-06 22:04:33', '2013-09-11 23:47:49');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('70', 'Earnestine Konopelski', 'lorenza.howe@example.net', '639', '2012-03-11 23:10:25', '2019-09-16 22:12:12');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('71', 'Antwon Parisian', 'frederick93@example.org', '190654', '2012-12-21 13:11:49', '2019-08-14 01:43:43');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('72', 'Warren Marks', 'brady08@example.org', '236495', '2016-07-19 07:28:47', '2013-09-20 10:14:21');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('73', 'Prof. Easter Ratke IV', 'casimir80@example.com', '990776', '2011-12-10 19:48:44', '2014-09-25 12:35:31');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('74', 'Emmanuel Harvey', 'tlowe@example.com', '727199', '2012-05-06 09:50:07', '2015-01-06 18:58:27');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('75', 'Gene Gerlach III', 'ambrose.yundt@example.net', '70890', '2015-07-18 05:39:56', '2020-04-17 22:26:19');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('76', 'Prof. Prince Stanton MD', 'ruthie86@example.com', '91580875', '2020-01-22 23:02:21', '2017-06-25 01:08:44');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('77', 'Graciela Von', 'lelia.ziemann@example.com', '6785438', '2016-02-09 18:05:16', '2018-08-05 21:22:46');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('78', 'Jacey Wolf', 'jaycee.wyman@example.net', '984872', '2018-11-10 21:46:03', '2017-11-13 21:55:50');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('79', 'Mrs. Krista Nolan', 'kihn.jeanie@example.org', '45678946', '2014-08-03 13:36:42', '2015-03-01 09:10:59');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('80', 'Dexter Maggio', 'estelle.murphy@example.org', '2469750', '2014-01-28 03:23:31', '2012-12-19 12:41:44');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('81', 'Iliana Bauch', 'lmckenzie@example.net', '2436584346', '2014-10-03 07:10:46', '2013-07-14 18:16:37');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('82', 'Erling Berge I', 'pacocha.jazmyn@example.com', '513722', '2012-01-30 05:08:51', '2014-08-18 16:37:26');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('83', 'Brennon Reinger', 'ollie69@example.com', '226', '2010-07-24 18:21:28', '2018-11-17 18:40:41');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('84', 'Ralph Schimmel', 'marvin41@example.org', '748', '2016-12-17 07:11:10', '2011-01-02 07:31:40');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('85', 'Dr. Lincoln Weissnat V', 'o\'kon.lily@example.net', '927445', '2019-01-18 10:49:19', '2016-02-09 08:48:54');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('86', 'Clementina Abernathy III', 'heaney.bradly@example.com', '456789028', '2017-02-08 12:51:02', '2018-03-28 11:37:39');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('87', 'Dr. Madaline Kilback DVM', 'rmonahan@example.org', '12376952', '2019-08-30 02:05:11', '2019-04-08 09:09:33');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('88', 'Dr. Carrie Gorczany', 'carlo65@example.com', '1378900', '2015-05-20 11:31:00', '2012-04-09 13:53:51');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('89', 'Hortense Berge', 'hintz.linnie@example.com', '2027864', '2015-03-06 22:40:28', '2017-03-09 17:08:24');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('90', 'Muhammad Gislason', 'pankunding@example.com', '13454789', '2011-05-03 12:32:52', '2017-09-21 02:56:15');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('91', 'Betty Feeney', 'marisa84@example.net', '5434458', '2020-06-06 08:38:18', '2018-09-20 20:19:41');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('92', 'Rosendo Schultz', 'zconnelly@example.org', '8989450', '2015-10-07 07:18:52', '2020-02-29 16:23:26');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('93', 'Dr. Emmitt Smitham', 'ogrant@example.org', '2996589', '2015-06-17 22:13:08', '2018-06-04 10:08:31');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('94', 'Jana Rutherford', 'natalie09@example.org', '5416677', '2011-03-05 11:45:07', '2013-11-18 03:24:49');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('95', 'Ricky Armstrong', 'frankie.gorczany@example.com', '6078761', '2013-11-10 09:45:12', '2013-08-29 12:31:18');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('96', 'Dr. Dorcas Marquardt', 'imani14@example.org', '21187766', '2011-08-21 18:11:35', '2013-09-12 20:02:09');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('97', 'Chelsea Morar PhD', 'piper69@example.org', '8414550447', '2010-08-08 16:40:26', '2017-11-03 09:45:59');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('98', 'Elnora Jakubowski', 'trey93@example.com', '2198900', '2017-11-14 15:58:19', '2018-01-05 14:50:41');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('99', 'Bernita Roberts', 'bgerlach@example.org', '6177825', '2017-01-25 19:29:56', '2011-01-23 04:34:13');
INSERT INTO `clients` (`id`, `fullname`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('100', 'Dr. Hilma Connelly', 'london68@example.com', '1231587', '2019-07-31 00:31:27', '2014-04-10 22:32:50');



#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `client_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('1', 'M', '1994-12-17', '1992-09-19 11:26:19', 'New Torreymouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('2', 'F', '1986-02-17', '1991-02-03 12:29:41', 'Laurencefurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('3', 'F', '2012-05-15', '2009-11-20 20:58:55', 'East Mae');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('4', 'M', '1991-10-30', '1985-09-08 09:39:17', 'West Twilamouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('5', 'M', '1984-06-18', '2017-07-20 14:09:52', 'Gorczanyton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('6', 'F', '2002-04-26', '2018-06-05 22:42:10', 'New Nyasia');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('7', 'F', '2000-04-19', '2019-01-16 08:32:24', 'Coleborough');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('8', 'F', '1978-04-17', '1997-06-30 23:04:49', 'Steuberbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('9', 'F', '2013-01-04', '2005-12-15 22:47:25', 'Runolfssonfurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('10', 'M', '2019-06-26', '1990-04-12 08:56:14', 'Lake Enidhaven');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('11', 'M', '1975-10-08', '2018-11-30 04:29:03', 'Annamaeport');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('12', 'F', '2007-08-05', '1988-03-19 05:36:04', 'North Antwonborough');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('13', 'M', '2001-04-21', '1979-10-23 04:34:50', 'Considinemouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('14', 'M', '1970-08-15', '1973-07-20 03:55:34', 'Dagmarbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('15', 'F', '2000-01-06', '1976-04-30 09:23:23', 'New Jamelstad');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('16', 'M', '1974-01-11', '2009-03-13 15:40:59', 'Wehnerburgh');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('17', 'M', '1986-01-24', '1982-12-15 13:45:30', 'Kennyland');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('18', 'M', '2014-01-19', '2014-04-27 11:44:35', 'Pagactown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('19', 'M', '1992-04-02', '1973-01-30 20:25:54', 'West Floridahaven');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('20', 'F', '1979-03-04', '2006-07-23 01:33:05', 'Murrayfort');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('21', 'M', '1973-06-18', '1988-08-17 08:20:41', 'South Leannview');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('22', 'M', '2015-05-25', '2005-01-04 10:27:49', 'Jastfurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('23', 'M', '2007-03-28', '1987-08-21 19:07:34', 'Deonville');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('24', 'M', '2008-04-17', '2003-10-06 15:14:03', 'Maidaberg');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('25', 'M', '2000-08-14', '1983-04-19 18:01:06', 'Boscoburgh');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('26', 'M', '2016-06-06', '1986-11-16 10:21:52', 'Leaton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('27', 'F', '2017-05-10', '1992-05-12 10:24:13', 'Lake Ibrahim');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('28', 'F', '1994-01-02', '2002-03-13 13:51:44', 'South Eulaliatown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('29', 'F', '1986-07-30', '2014-08-04 07:19:34', 'South Haileemouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('30', 'F', '2019-11-09', '2018-01-27 12:35:26', 'North Destini');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('31', 'M', '2007-05-13', '1979-07-12 13:49:15', 'West Twila');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('32', 'M', '1987-11-01', '2008-03-21 13:13:00', 'South Gerda');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('33', 'F', '1975-12-31', '2012-11-24 02:46:47', 'Veumton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('34', 'F', '1991-07-18', '1972-02-10 07:28:41', 'Lindsayshire');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('35', 'F', '1999-01-13', '2017-05-09 22:01:43', 'Boscoton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('36', 'M', '1995-12-30', '1996-10-06 21:21:44', 'New Vita');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('37', 'M', '2017-05-20', '1998-08-23 04:57:23', 'New Fermin');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('38', 'F', '1977-02-10', '2008-08-04 11:55:13', 'South Enola');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('39', 'M', '2001-09-12', '1982-12-17 12:18:06', 'Port Tiffanyfurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('40', 'M', '1976-05-15', '1997-12-31 16:42:07', 'Daytontown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('41', 'F', '2003-05-22', '2007-12-20 05:22:12', 'East Kirstenchester');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('42', 'M', '1998-05-18', '2014-08-13 01:52:02', 'Katarinafurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('43', 'F', '2017-08-18', '2009-08-05 14:23:02', 'South Cheyanneberg');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('44', 'M', '1979-12-21', '1985-03-26 00:01:30', 'West Karl');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('45', 'F', '2014-07-15', '1985-09-16 14:38:19', 'Sporerbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('46', 'F', '1970-08-26', '1995-01-17 17:13:04', 'Beattyfort');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('47', 'M', '1997-08-02', '1979-05-03 02:00:44', 'East Mireya');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('48', 'M', '1999-04-20', '1995-12-01 00:56:30', 'Sabrynamouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('49', 'F', '2017-07-29', '2002-06-29 23:50:29', 'Kundeland');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('50', 'F', '1997-07-21', '1974-08-09 15:14:58', 'Lake Esmeralda');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('51', 'M', '1970-02-02', '1977-04-09 16:15:24', 'Pollichport');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('52', 'M', '2017-07-01', '1994-09-27 03:41:02', 'Cassinbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('53', 'F', '2019-12-19', '2014-05-05 07:19:36', 'Lake Lela');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('54', 'M', '1977-02-03', '1970-05-12 15:37:25', 'Laylafurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('55', 'F', '1991-01-19', '2004-12-15 23:00:27', 'Marvinville');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('56', 'F', '1974-08-29', '2007-02-27 02:59:19', 'West Treytown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('57', 'M', '1999-04-25', '1971-07-03 13:12:57', 'New Thadberg');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('58', 'F', '2020-05-26', '2010-09-05 22:07:01', 'Masonton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('59', 'M', '1984-04-17', '1986-10-02 13:05:21', 'Dibbertton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('60', 'F', '1978-11-21', '2001-12-24 03:03:39', 'Ankundingfort');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('61', 'M', '1996-11-25', '1977-04-08 14:47:56', 'South Nellie');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('62', 'M', '1998-01-19', '1988-10-26 12:20:01', 'Steuberstad');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('63', 'M', '1974-10-15', '1986-09-04 11:51:35', 'New Kameron');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('64', 'M', '1981-04-23', '2005-11-30 03:34:57', 'East Ahmedberg');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('65', 'M', '1991-05-03', '1986-03-30 06:17:27', 'Marionside');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('66', 'F', '1977-02-18', '1974-07-13 02:46:05', 'East Aaliyah');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('67', 'M', '2009-03-06', '1976-08-27 07:07:26', 'Gloriamouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('68', 'F', '1984-03-29', '1974-05-13 20:41:25', 'Cameronbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('69', 'F', '1989-10-14', '1987-07-02 04:46:34', 'South Ryley');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('70', 'M', '1977-07-03', '2009-10-01 01:08:32', 'Harberside');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('71', 'M', '1978-02-26', '1997-01-08 16:16:11', 'New Scotty');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('72', 'M', '2008-03-01', '2006-09-06 04:50:18', 'Kaelynport');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('73', 'F', '2012-06-01', '2005-09-14 11:41:47', 'Lake Mikayla');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('74', 'M', '1989-03-28', '1988-11-03 00:17:55', 'Orinton');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('75', 'F', '1999-05-30', '1980-05-02 19:37:06', 'South Ellen');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('76', 'F', '1987-04-01', '2012-01-06 18:42:32', 'Lake Hopeburgh');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('77', 'F', '2012-04-06', '2001-07-03 11:40:54', 'New Mona');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('78', 'F', '1974-05-30', '2005-09-29 12:27:11', 'East Efren');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('79', 'F', '2011-02-01', '1996-02-06 21:29:10', 'South Terry');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('80', 'M', '1983-10-20', '1991-07-20 15:53:26', 'Lake Adaline');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('81', 'F', '1985-02-28', '2019-09-18 12:06:25', 'Lake Ollieshire');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('82', 'F', '2018-11-16', '1999-08-12 21:35:19', 'Edythfurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('83', 'F', '2016-02-04', '2005-06-05 05:23:02', 'Johnsonshire');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('84', 'F', '1991-10-20', '2007-10-31 16:31:10', 'Thielbury');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('85', 'F', '1973-10-26', '2004-04-08 12:30:29', 'Gibsonhaven');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('86', 'F', '1974-12-05', '2020-06-06 11:25:28', 'Willfort');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('87', 'F', '1983-05-08', '1992-04-23 10:51:25', 'West Darien');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('88', 'M', '2010-03-18', '2002-11-10 05:43:12', 'East Olafmouth');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('89', 'F', '1991-02-15', '1987-08-19 23:48:00', 'Leuschkeberg');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('90', 'F', '1981-10-20', '1986-07-16 06:32:01', 'Lake Hildegardtown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('91', 'M', '1972-08-09', '1994-08-27 02:54:54', 'South Sienna');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('92', 'F', '2005-05-15', '1992-07-06 20:34:31', 'North Callie');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('93', 'F', '1970-01-12', '1991-11-27 11:13:27', 'Filomenashire');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('94', 'F', '1978-02-11', '1975-03-23 07:08:06', 'Ziemestad');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('95', 'M', '2001-01-25', '1976-02-15 00:15:18', 'North Serenafurt');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('96', 'M', '2000-12-01', '2018-08-06 05:11:49', 'Chesterfort');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('97', 'M', '1999-01-07', '2016-10-12 11:43:10', 'New Mary');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('98', 'M', '2015-12-16', '1971-01-12 07:44:56', 'Schummtown');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('99', 'M', '2007-05-19', '1978-06-29 18:02:04', 'Port Marcborough');
INSERT INTO `profiles` (`client_id`, `gender`, `birthday`, `created_at`, `city`) VALUES ('100', 'F', '1992-12-05', '1985-06-30 04:00:59', 'New Elizabeth');


#
# TABLE STRUCTURE FOR: client_addresses
#

DROP TABLE IF EXISTS `client_addresses`;

CREATE TABLE `client_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `type_address` enum('courier delivery','pickup') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `client_addresses_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('1', '1', '3190 Hodkiewicz Valley\nLilianeton, NH 67772', '2019-07-02 11:56:51', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('2', '2', '73176 Weber Path Suite 487\nSouth Dannie, NV 64883-9703', '2020-02-11 17:42:04', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('3', '3', '1501 Goodwin Underpass Apt. 057\nNorth Avery, NH 02733-8544', '2019-10-17 08:52:02', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('4', '4', '97164 Bryon Square\nPort Rheafurt, WA 51091-9961', '2019-08-18 00:33:12', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('5', '5', '8421 Strosin Hollow\nTaureanmouth, NJ 48580-0621', '2019-09-05 04:09:09', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('6', '6', '035 Luettgen Plain Apt. 638\nLake Lavina, SD 74315', '2019-09-27 16:07:55', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('7', '7', '40860 Jordon Burg Apt. 641\nGleasonstad, MI 10019-8626', '2019-10-17 13:29:34', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('8', '8', '69692 Leonard Viaduct Apt. 597\nSouth Cora, OR 79900-3132', '2020-06-10 22:55:46', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('9', '9', '175 Wiegand Trace\nHalvorsonview, NM 74302-8254', '2019-08-05 05:43:43', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('10', '10', '845 Stehr Keys Suite 602\nEast Kameron, NH 89982-3050', '2020-02-05 05:37:24', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('11', '11', '83601 Isaac Streets Apt. 354\nSchowalterhaven, MI 43238', '2020-03-19 18:32:44', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('12', '12', '066 Swift Hollow Suite 487\nNew Rickfurt, MT 40434', '2019-12-22 01:25:36', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('13', '13', '209 Raphael Shores\nWest Davin, OK 26973-1652', '2019-12-01 00:13:29', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('14', '14', '262 Bogisich Summit\nEast Kaylinville, IA 76530', '2019-12-12 00:24:06', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('15', '15', '30111 Benton Shores\nKiehnside, MD 67503', '2020-05-27 13:38:46', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('16', '16', '807 Giovanni Landing\nNorth Rhett, AK 84663', '2019-08-16 19:25:45', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('17', '17', '296 Dolly Fall Suite 147\nWilliamsonburgh, ND 80274', '2019-10-31 11:12:12', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('18', '18', '4766 Claudia Mission\nBartholomeport, MS 84791', '2019-12-01 02:08:57', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('19', '19', '13110 Kathleen Trail Suite 784\nElvisburgh, LA 52106-8803', '2019-08-14 16:53:13', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('20', '20', '93094 Waters Hollow\nDaneborough, IL 18062-1087', '2020-04-25 13:28:37', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('21', '21', '25542 Marina Expressway Apt. 597\nTyrelport, ID 21921', '2019-09-22 01:28:24', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('22', '22', '94758 Justine Keys Apt. 057\nLake Raemouth, WI 74668', '2019-08-10 15:52:31', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('23', '23', '039 Fay Harbor Suite 111\nPort Lorenzo, DC 29536', '2019-07-12 09:40:34', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('24', '24', '118 Leannon Garden Suite 594\nAkeemmouth, SC 29296', '2019-07-23 12:21:04', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('25', '25', '82444 Treutel Loop Apt. 803\nSouth Bo, KY 95799-1885', '2020-04-01 22:35:29', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('26', '26', '738 Bergnaum Falls Suite 365\nBrakusview, MA 30550', '2019-07-12 09:28:02', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('27', '27', '114 Jeff Avenue\nNorth Rodgerbury, NM 18508-7034', '2020-03-04 16:12:00', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('28', '28', '512 Bartell Cliff\nLake Richietown, ME 94930-5093', '2020-05-13 05:55:22', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('29', '29', '07404 Stephanie Crossroad Apt. 894\nRodriguezchester, AZ 74775', '2019-07-20 01:13:31', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('30', '30', '49210 Stoltenberg Junction Apt. 524\nEast Turner, GA 17652-9495', '2020-06-26 12:25:35', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('31', '31', '97374 Leffler Summit\nSalvadorton, WA 04981', '2019-09-15 02:35:02', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('32', '32', '69970 Stokes Route Apt. 436\nLake Antonestad, PA 99261', '2019-11-10 05:38:19', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('33', '33', '8231 Oberbrunner Expressway\nEast Nellestad, SC 71527', '2020-02-15 05:05:35', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('34', '34', '97817 Nella Plains Apt. 770\nEast Maxieshire, ND 82936-0448', '2019-12-21 12:23:37', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('35', '35', '512 Major Mills\nNorth Camden, CT 83503-8218', '2019-07-30 22:33:12', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('36', '36', '7887 Wilderman Throughway Apt. 966\nWintheisermouth, NV 27528', '2019-08-08 13:10:05', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('37', '37', '17130 Jerald Prairie Suite 482\nDuBuquechester, MS 82864-6221', '2020-06-19 15:55:09', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('38', '38', '18675 Erdman Viaduct\nLindaton, FL 27597', '2020-04-20 01:34:11', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('39', '39', '63654 Tromp Hollow Suite 077\nNew Karlie, HI 62639', '2020-03-02 04:57:34', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('40', '40', '64879 Dewitt Lane\nWest Summer, ME 42495', '2020-06-08 18:21:14', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('41', '41', '729 Alana Terrace Apt. 549\nPort Javonte, TX 62938-9628', '2020-03-21 22:00:48', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('42', '42', '97287 Medhurst Road\nWest Lyric, MN 92209', '2019-11-03 14:06:15', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('43', '43', '373 Emmy Mountains\nNorth Darrylshire, KS 15624', '2020-05-23 23:57:05', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('44', '44', '813 Ryan Cliffs\nNew Jettieport, NC 48349', '2020-04-15 22:47:45', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('45', '45', '8926 Rowe Harbor\nO\'Connermouth, ME 07260-2019', '2019-10-15 05:41:05', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('46', '46', '2116 Gerlach Pass\nLurafurt, VT 80709', '2019-10-04 01:14:04', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('47', '47', '81447 West Divide\nLake Rubenside, CO 05752-2682', '2019-08-17 05:15:13', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('48', '48', '1969 Fidel Circles Suite 991\nEast Jenifer, SD 40839', '2019-10-11 02:25:46', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('49', '49', '22342 Rosalinda Vista\nFlorianberg, AR 11550-0828', '2019-09-10 18:27:53', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('50', '50', '82366 Walter Tunnel Apt. 028\nNew Antonettaview, NE 57819', '2020-02-12 02:15:18', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('51', '51', '30478 Anastacio Inlet\nPort Ethelbury, MO 52640', '2019-09-29 06:06:50', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('52', '52', '695 Cole Ranch\nNew Floburgh, NH 87459-2651', '2020-01-01 02:08:36', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('53', '53', '660 Smitham Heights Apt. 999\nLake Winnifred, LA 89625-5577', '2019-08-30 22:33:07', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('54', '54', '34308 Brekke Mall Apt. 578\nEast Mose, AR 44979', '2019-11-28 23:52:40', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('55', '55', '696 Stroman Mountain Suite 998\nJoshuaburgh, KS 84351', '2019-08-28 21:35:16', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('56', '56', '4752 Marcos Roads\nJedidiahshire, VT 60701-8070', '2019-07-12 22:44:33', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('57', '57', '40068 Crawford Cove\nNorth Roberta, TX 22848', '2020-04-24 04:54:44', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('58', '58', '8915 Bruen Drive\nEast Jensenside, ID 02347-5851', '2019-11-03 15:41:15', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('59', '59', '76279 Lavinia Curve\nOniefort, MO 11636', '2020-06-05 15:38:44', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('60', '60', '75243 Streich Gardens Apt. 778\nTurcottefort, IA 54533-0750', '2019-08-19 12:43:15', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('61', '61', '679 Quigley Ridges Suite 044\nLake Melvin, CT 44995-5603', '2019-10-08 02:54:51', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('62', '62', '56691 Jayne Springs Suite 894\nNorth Cecilialand, CA 51318', '2019-11-03 14:19:20', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('63', '63', '709 Eloisa Walks\nKoelpinfurt, MO 84995', '2019-09-25 12:13:56', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('64', '64', '469 Rhea Pines Suite 415\nKelleyton, ID 30670-5910', '2020-03-16 08:29:15', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('65', '65', '509 Raina Rest\nNorth Olen, OH 91672', '2019-12-15 10:48:05', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('66', '66', '27923 Russel Meadow Suite 383\nSouth Cordiashire, VA 38072-9716', '2020-01-07 18:00:06', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('67', '67', '58991 Kayli Summit\nNorth Terrancemouth, RI 75376-7034', '2020-05-24 16:13:02', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('68', '68', '716 Elwyn Rapids\nKendallfort, CA 66866', '2020-04-22 17:33:06', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('69', '69', '963 Sauer Cove Suite 785\nNorth Mose, IA 51379-5994', '2020-03-22 18:38:32', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('70', '70', '4734 Electa Shoals Suite 454\nPort Leonora, LA 69147-8610', '2019-12-24 15:23:58', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('71', '71', '382 Lelah Village Apt. 669\nNorth Helena, DC 40221', '2019-07-28 14:39:02', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('72', '72', '381 Schultz Keys Suite 411\nCeasarmouth, PA 81664', '2019-07-03 13:26:57', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('73', '73', '024 Hickle Plains Apt. 074\nHilllfort, MN 12372-7951', '2019-11-17 21:30:13', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('74', '74', '9938 Cindy Highway\nDesmondberg, VA 26331-2237', '2020-06-11 21:59:30', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('75', '75', '68685 Amina Mills\nGagetown, NC 06853', '2020-01-13 12:08:34', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('76', '76', '746 Delilah Course\nLake Litzy, WA 55262-7450', '2020-02-28 17:30:43', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('77', '77', '37116 Wendell Row\nNorth Frankton, OH 50306', '2020-02-26 23:07:29', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('78', '78', '6769 Rempel Meadows Suite 287\nNorth Raul, IA 04478', '2019-09-19 00:58:21', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('79', '79', '577 Gideon Crossing\nWest Floyberg, MN 64027-1589', '2020-03-02 18:14:36', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('80', '80', '0061 Tia Land\nShadside, OR 18339', '2019-08-30 21:56:14', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('81', '81', '2942 Casper Inlet Suite 320\nPort Kathleen, WI 58230', '2019-12-13 01:35:50', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('82', '82', '6404 Schuppe Squares\nNew Delaneymouth, MT 98015-1018', '2019-07-22 16:16:28', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('83', '83', '3173 Olson Stream Apt. 843\nFranciscohaven, PA 09333-2805', '2019-11-16 14:09:50', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('84', '84', '96466 Klocko Parkways\nPort Roselyn, MN 53191-2023', '2019-07-07 18:47:11', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('85', '85', '464 Zulauf Overpass\nTorphyfort, ND 21220', '2019-08-20 02:45:19', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('86', '86', '9536 Reese Valleys Suite 548\nLake Joanne, IL 95826-9739', '2019-10-04 06:38:06', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('87', '87', '135 Kutch Shoals Apt. 253\nPaoloton, PA 74045-6667', '2019-10-11 18:56:16', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('88', '88', '0628 Konopelski Tunnel\nDessiemouth, AK 85298-6994', '2020-04-27 12:06:48', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('89', '89', '37691 Marley Mount Suite 994\nNew Arvelfort, OR 43004-6863', '2020-06-20 16:31:13', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('90', '90', '2206 Moore Flats\nEast Dellastad, AR 98051-0410', '2020-02-28 15:33:45', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('91', '91', '38231 Gleichner Burgs Apt. 199\nLake Brendan, VA 37885', '2020-06-02 13:23:57', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('92', '92', '799 Catalina Lakes Suite 248\nHirthefurt, KY 03111-6485', '2020-06-27 05:51:57', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('93', '93', '7839 Kris Shoal\nWest Cristal, WY 83005-7341', '2019-08-07 09:05:19', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('94', '94', '158 Lockman Union\nHolliemouth, OR 81646-5016', '2019-09-17 20:19:47', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('95', '95', '6384 Dexter Ridge Suite 793\nWest Venafort, NV 99063-8578', '2019-08-25 06:40:16', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('96', '96', '533 Haven Plain\nSofiashire, IN 31140-5961', '2020-02-21 02:54:31', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('97', '97', '1411 Deshaun Circles\nNew Clovisstad, CT 96670', '2020-03-06 06:00:43', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('98', '98', '2937 Braun Course\nBalistreritown, TN 65305-7585', '2019-09-27 17:54:46', 'pickup');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('99', '99', '188 Crystal Skyway Suite 936\nNorth Billyton, CT 97712-9178', '2020-05-24 05:52:31', 'courier delivery');
INSERT INTO `client_addresses` (`id`, `client_id`, `address`, `created_at`, `type_address`) VALUES ('100', '100', '4209 Daisy Junction Apt. 363\nEriktown, SD 57906-1482', '2020-03-08 04:00:21', 'courier delivery');

#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('1', '1', '2019-07-07 01:17:07', '2020-03-01 07:03:14');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('2', '2', '2019-08-17 14:08:11', '2020-04-02 17:12:42');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('3', '3', '2019-11-27 22:48:17', '2019-09-24 08:07:07');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('4', '4', '2019-08-07 13:03:35', '2020-02-22 14:55:30');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('5', '5', '2020-06-10 12:27:24', '2020-02-25 10:49:47');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('6', '6', '2020-06-12 14:44:25', '2019-10-20 22:11:16');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('7', '7', '2019-11-14 06:35:50', '2019-08-07 08:51:42');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('8', '8', '2020-04-18 18:01:32', '2020-05-27 16:25:13');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('9', '9', '2019-08-06 08:19:57', '2019-09-20 08:17:33');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('10', '10', '2019-12-19 08:22:38', '2020-04-22 13:13:10');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('11', '11', '2020-04-21 14:59:53', '2020-01-10 03:51:45');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('12', '12', '2020-01-17 04:45:41', '2019-07-03 15:17:42');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('13', '13', '2019-12-21 05:42:06', '2019-12-17 16:07:03');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('14', '14', '2019-10-04 02:23:23', '2020-05-29 07:45:54');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('15', '15', '2020-01-12 22:26:56', '2019-09-21 15:24:13');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('16', '16', '2019-11-10 23:26:40', '2020-02-13 20:47:34');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('17', '17', '2019-08-01 17:52:49', '2020-04-23 00:15:35');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('18', '18', '2019-11-19 15:44:01', '2020-01-05 13:51:08');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('19', '19', '2019-09-09 14:23:07', '2019-11-15 02:31:43');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('20', '20', '2019-11-01 12:50:46', '2019-09-10 03:33:04');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('21', '21', '2019-08-04 10:54:40', '2019-11-17 04:07:30');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('22', '22', '2019-07-30 09:52:20', '2019-12-20 00:04:37');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('23', '23', '2020-01-21 05:03:13', '2019-08-01 17:03:49');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('24', '24', '2020-04-10 10:26:08', '2019-10-15 01:25:56');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('25', '25', '2019-11-04 15:00:26', '2020-04-27 22:30:36');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('26', '26', '2020-03-04 17:19:23', '2020-01-19 14:24:00');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('27', '27', '2019-08-01 12:57:28', '2020-01-05 10:46:53');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('28', '28', '2020-06-24 23:36:24', '2019-09-10 01:31:01');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('29', '29', '2020-03-10 20:11:58', '2020-04-27 11:57:52');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('30', '30', '2019-08-16 10:19:40', '2020-03-24 06:24:36');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('31', '31', '2019-09-03 06:10:59', '2020-06-09 00:57:39');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('32', '32', '2019-11-13 05:11:01', '2020-05-20 10:32:18');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('33', '33', '2019-10-05 05:19:30', '2019-08-12 04:07:31');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('34', '34', '2019-09-15 17:08:44', '2019-10-17 09:52:54');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('35', '35', '2020-02-09 17:30:41', '2019-07-08 08:49:41');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('36', '36', '2020-01-19 05:17:48', '2020-03-20 07:58:24');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('37', '37', '2020-01-30 20:04:56', '2019-08-01 16:53:32');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('38', '38', '2019-08-17 04:20:01', '2019-08-12 15:54:55');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('39', '39', '2019-08-05 15:32:29', '2019-09-19 19:02:30');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('40', '40', '2019-09-03 12:23:26', '2020-06-06 23:45:44');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('41', '41', '2019-12-05 22:51:05', '2020-03-02 23:33:03');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('42', '42', '2019-12-20 20:03:49', '2020-04-20 12:39:50');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('43', '43', '2019-12-26 01:38:43', '2020-01-24 18:24:04');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('44', '44', '2019-07-02 21:16:20', '2020-03-28 15:05:02');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('45', '45', '2020-05-10 03:00:14', '2020-04-23 11:15:58');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('46', '46', '2020-06-04 22:41:51', '2019-08-07 12:27:43');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('47', '47', '2019-09-03 06:07:32', '2019-07-27 21:54:28');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('48', '48', '2019-08-26 09:04:07', '2019-09-01 23:39:20');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('49', '49', '2019-07-12 16:32:58', '2020-05-20 04:21:53');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('50', '50', '2020-02-09 14:18:02', '2019-08-18 11:09:44');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('51', '51', '2020-03-15 07:17:10', '2019-08-21 20:49:57');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('52', '52', '2019-11-15 07:56:53', '2020-04-04 19:00:23');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('53', '53', '2020-06-26 07:10:27', '2019-09-07 16:22:37');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('54', '54', '2019-11-04 13:18:59', '2020-03-08 15:15:00');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('55', '55', '2020-03-07 19:35:18', '2019-07-10 21:33:01');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('56', '56', '2019-10-01 21:28:51', '2020-05-03 11:13:56');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('57', '57', '2020-05-27 08:48:06', '2020-03-22 11:21:21');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('58', '58', '2020-03-04 16:52:56', '2019-08-16 09:07:23');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('59', '59', '2020-01-28 03:46:21', '2020-02-04 22:10:29');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('60', '60', '2020-03-10 15:19:04', '2020-02-23 05:38:04');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('61', '61', '2019-08-24 13:17:12', '2019-07-19 16:09:08');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('62', '62', '2020-04-06 01:59:54', '2019-12-08 18:32:08');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('63', '63', '2019-11-15 20:58:22', '2019-09-25 04:08:47');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('64', '64', '2020-05-17 07:02:52', '2019-10-01 13:41:33');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('65', '65', '2019-10-30 12:12:20', '2019-12-11 00:25:29');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('66', '66', '2020-03-07 15:16:18', '2020-01-09 17:25:20');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('67', '67', '2019-09-12 08:04:14', '2020-03-04 14:55:30');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('68', '68', '2019-12-19 17:34:24', '2019-10-13 17:40:04');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('69', '69', '2019-10-13 19:04:06', '2020-03-09 09:07:26');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('70', '70', '2020-06-24 00:29:29', '2020-04-23 11:02:24');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('71', '71', '2019-11-16 01:21:40', '2019-08-20 14:54:19');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('72', '72', '2020-03-29 21:54:32', '2020-03-12 07:26:02');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('73', '73', '2020-01-19 21:50:33', '2020-04-21 10:24:46');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('74', '74', '2019-10-19 18:03:50', '2020-05-14 00:17:08');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('75', '75', '2020-05-23 14:40:11', '2020-01-07 23:37:57');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('76', '76', '2019-07-04 22:39:22', '2020-03-30 17:18:44');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('77', '77', '2020-04-23 01:55:58', '2019-08-13 07:12:59');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('78', '78', '2019-09-17 15:32:05', '2020-05-03 05:44:25');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('79', '79', '2019-08-19 20:48:09', '2019-07-18 12:07:28');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('80', '80', '2019-07-05 11:53:22', '2019-07-29 02:52:19');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('81', '81', '2019-09-17 07:19:26', '2020-02-05 03:41:25');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('82', '82', '2020-01-06 23:51:21', '2020-01-27 12:36:38');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('83', '83', '2020-01-11 19:45:48', '2020-04-04 11:39:39');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('84', '84', '2020-05-15 15:46:26', '2020-05-30 10:09:32');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('85', '85', '2020-03-31 18:55:20', '2019-07-29 20:49:48');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('86', '86', '2020-03-12 03:03:02', '2020-03-10 21:44:17');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('87', '87', '2020-02-28 09:13:13', '2020-06-18 18:10:23');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('88', '88', '2020-04-28 18:25:22', '2020-03-20 17:39:25');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('89', '89', '2020-06-24 08:27:22', '2020-01-01 04:01:34');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('90', '90', '2019-12-18 10:20:29', '2019-11-21 05:44:06');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('91', '91', '2019-09-20 00:13:14', '2020-02-21 17:05:26');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('92', '92', '2020-01-17 23:25:36', '2020-04-18 05:30:07');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('93', '93', '2020-02-09 02:13:02', '2019-11-29 01:29:34');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('94', '94', '2020-03-17 07:00:11', '2019-07-09 20:47:10');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('95', '95', '2020-03-09 16:25:03', '2020-04-15 13:38:32');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('96', '96', '2019-08-28 06:27:44', '2020-05-07 13:21:46');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('97', '97', '2019-07-24 00:36:32', '2020-05-18 20:12:40');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('98', '98', '2020-05-28 15:30:48', '2020-01-21 11:36:32');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('99', '99', '2020-04-12 17:15:21', '2020-01-15 09:26:21');
INSERT INTO `orders` (`id`, `client_id`, `created_at`, `updated_at`) VALUES ('100', '100', '2020-05-08 11:23:13', '2020-04-05 10:44:35');



#
# TABLE STRUCTURE FOR: deliveries
#

DROP TABLE IF EXISTS `deliveries`;

CREATE TABLE `deliveries` (
  `order_id` bigint(20) unsigned NOT NULL,
  `address_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `date_deliver` date NOT NULL,
  PRIMARY KEY (`order_id`,`address_id`),
  KEY `address_id` (`address_id`),
  KEY `date_deliver_idx` (`date_deliver`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `client_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('1', '1', '2006-11-04 01:47:20', '1985-12-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('2', '2', '1995-02-17 00:36:45', '1982-08-19');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('3', '3', '2018-10-02 20:32:57', '1976-01-25');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('4', '4', '1971-10-12 18:55:18', '2005-09-19');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('5', '5', '1995-08-20 17:41:00', '2002-09-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('6', '6', '1987-02-07 08:49:54', '1988-06-11');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('7', '7', '1970-05-10 02:43:04', '1977-09-01');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('8', '8', '2016-08-27 02:59:34', '2006-09-24');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('9', '9', '1979-08-10 16:02:25', '1994-02-10');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('10', '10', '1985-04-07 14:10:22', '1984-10-17');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('11', '11', '1971-01-16 10:18:25', '1982-12-06');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('12', '12', '1976-07-13 04:14:51', '1996-07-13');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('13', '13', '1976-01-26 13:42:46', '1991-10-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('14', '14', '2016-02-07 05:44:38', '1985-09-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('15', '15', '1987-11-06 16:24:04', '1993-08-24');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('16', '16', '1977-09-15 02:48:32', '2018-11-21');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('17', '17', '1991-07-03 13:21:03', '1993-08-24');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('18', '18', '2015-08-25 14:22:30', '2014-05-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('19', '19', '2014-08-26 00:11:16', '2014-06-18');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('20', '20', '2018-05-05 08:00:54', '2016-01-24');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('21', '21', '1985-11-26 05:16:55', '2015-08-25');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('22', '22', '2012-06-23 18:17:06', '1974-02-10');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('23', '23', '1999-02-12 22:30:56', '1979-10-19');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('24', '24', '1991-01-03 15:55:45', '2015-08-02');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('25', '25', '2006-03-23 05:30:47', '2010-07-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('26', '26', '2000-04-30 14:01:35', '1998-03-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('27', '27', '1978-07-06 07:25:51', '1985-11-14');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('28', '28', '1998-04-04 03:15:43', '2009-06-04');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('29', '29', '1979-07-18 14:47:31', '1996-03-18');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('30', '30', '1973-02-02 17:01:40', '2001-02-06');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('31', '31', '2007-04-05 15:06:51', '2005-05-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('32', '32', '1999-02-24 05:35:40', '1996-09-07');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('33', '33', '1988-03-10 18:24:01', '1999-07-25');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('34', '34', '1972-08-30 00:00:34', '1972-04-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('35', '35', '2006-07-19 04:48:32', '1992-07-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('36', '36', '2013-09-18 01:28:35', '1983-02-09');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('37', '37', '1980-04-29 13:10:52', '1986-06-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('38', '38', '1988-09-02 22:31:58', '1994-12-05');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('39', '39', '1972-05-28 19:10:11', '2011-01-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('40', '40', '2006-05-22 19:24:53', '2007-02-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('41', '41', '1993-07-31 17:48:37', '2000-03-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('42', '42', '2008-02-25 02:55:59', '1973-07-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('43', '43', '2007-05-08 05:04:44', '2006-07-16');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('44', '44', '2004-10-24 05:56:22', '1977-03-31');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('45', '45', '1997-05-31 10:52:50', '1970-11-08');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('46', '46', '2019-08-13 05:26:32', '2011-07-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('47', '47', '1987-04-27 22:01:15', '1976-01-09');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('48', '48', '1998-03-31 11:45:38', '2003-12-14');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('49', '49', '1993-10-28 20:21:44', '1996-09-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('50', '50', '1973-06-17 05:59:08', '2000-02-05');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('51', '51', '1998-08-27 16:37:53', '2005-05-02');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('52', '52', '2015-01-22 10:19:11', '2004-04-18');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('53', '53', '1989-05-10 23:58:04', '2017-10-27');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('54', '54', '2003-07-26 21:09:49', '1986-08-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('55', '55', '2004-05-19 22:57:54', '2012-10-14');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('56', '56', '1999-03-29 05:38:18', '1983-08-11');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('57', '57', '1999-01-15 04:16:14', '2001-02-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('58', '58', '2011-10-17 09:20:36', '2004-04-17');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('59', '59', '2014-03-11 00:15:39', '2007-01-19');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('60', '60', '1979-08-02 22:39:38', '1985-04-29');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('61', '61', '1972-03-04 20:51:02', '2007-11-16');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('62', '62', '1970-04-03 20:23:19', '1990-06-04');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('63', '63', '1991-12-10 15:52:44', '2009-03-24');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('64', '64', '1995-08-17 17:13:58', '2018-01-08');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('65', '65', '1971-09-01 01:04:36', '2014-10-22');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('66', '66', '2012-01-13 22:06:33', '2019-03-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('67', '67', '2008-05-27 23:00:35', '1976-05-04');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('68', '68', '2018-02-27 20:11:53', '2008-11-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('69', '69', '2020-01-22 15:15:31', '1998-11-04');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('70', '70', '1993-11-28 01:17:12', '1993-01-25');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('71', '71', '2009-06-27 14:22:16', '2009-08-02');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('72', '72', '2018-10-09 06:07:21', '2001-11-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('73', '73', '1996-06-07 21:55:51', '1973-10-17');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('74', '74', '1987-04-26 09:53:43', '1971-03-06');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('75', '75', '1992-08-29 20:36:45', '2014-04-19');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('76', '76', '1986-05-02 08:02:05', '1983-03-01');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('77', '77', '1979-11-05 02:18:54', '2004-11-28');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('78', '78', '2005-02-02 17:05:18', '1978-05-07');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('79', '79', '1985-07-29 04:12:09', '2011-06-29');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('80', '80', '2006-06-13 06:58:09', '2011-05-18');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('81', '81', '1987-06-30 16:12:16', '1979-07-22');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('82', '82', '2009-06-12 08:43:18', '1997-10-30');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('83', '83', '1987-05-21 07:13:18', '2016-12-02');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('84', '84', '2014-11-20 17:59:13', '1985-07-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('85', '85', '1991-07-09 13:11:24', '1999-02-10');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('86', '86', '2002-07-03 03:35:58', '1999-04-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('87', '87', '2007-07-30 01:39:50', '1971-04-26');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('88', '88', '1974-05-18 11:36:29', '2011-03-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('89', '89', '1988-06-11 00:24:44', '1989-12-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('90', '90', '2005-09-11 21:45:01', '1974-02-10');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('91', '91', '1974-01-02 10:19:22', '1974-11-05');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('92', '92', '1991-08-02 10:11:44', '2015-08-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('93', '93', '2001-11-12 11:25:28', '2009-04-01');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('94', '94', '1984-05-07 04:08:00', '1977-10-15');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('95', '95', '1977-08-26 03:16:13', '1970-05-17');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('96', '96', '1994-09-16 12:22:59', '2006-05-30');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('97', '97', '2004-04-10 12:57:57', '2018-01-12');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('98', '98', '1987-11-28 03:58:11', '2000-03-20');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('99', '99', '1970-10-18 11:05:36', '1986-02-04');
INSERT INTO `deliveries` (`order_id`, `address_id`, `created_at`, `date_deliver`) VALUES ('100', '100', '1987-03-28 21:04:28', '1993-01-06');


#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `catalog_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('1', 'sint', 'Sit dolore ullam quae repellat cupiditate perferendis. Et aut aut aut repudiandae cupiditate. Voluptas nesciunt vel ut sit.', '583.02', '1', '2020-06-15 21:50:07', '2020-06-28 18:32:10');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('2', 'facere', 'Iure officia consectetur omnis fugiat illo. Nemo neque sed voluptatem autem distinctio occaecati. Qui sit quia eos incidunt.', '6489.37', '2', '2020-06-25 09:20:58', '2020-06-09 01:24:04');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('3', 'quis', 'Ut debitis quo laudantium aspernatur reprehenderit occaecati quia sit. Veniam maxime illum aliquam enim aut illum voluptatibus. Doloribus praesentium est libero atque.', '0.00', '3', '2020-06-07 07:13:16', '2020-06-16 03:42:16');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('4', 'aliquam', 'Quisquam voluptatem error saepe similique nostrum. Consequuntur nam omnis est totam ullam et. Dolores natus dolores deleniti quibusdam temporibus. Quos molestiae vero harum odio perferendis dolorum eum.', '435616672.69', '4', '2020-06-21 02:37:21', '2020-06-11 16:50:08');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('5', 'corporis', 'Voluptas aperiam quam sed distinctio veritatis. Similique hic quia architecto. Ut eligendi quidem est soluta accusamus dicta. Magnam consequuntur aut non libero delectus ullam ipsum velit.', '583226.90', '5', '2020-06-02 11:03:49', '2020-06-11 21:23:55');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('6', 'aut', 'Pariatur veritatis ipsam est labore sed iure aperiam in. Modi natus labore molestias sunt commodi. Voluptas odit deserunt quis deleniti quo eligendi. Aut blanditiis totam consequatur nostrum dolores in iste.', '0.00', '6', '2020-06-19 16:46:46', '2020-06-20 09:42:40');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('7', 'in', 'Quia nemo omnis nulla facere necessitatibus. Accusamus dolore corrupti et quia magnam. Illum ad aut sequi eos distinctio numquam magni. Quia laudantium molestiae harum cupiditate. Voluptatem velit laboriosam nobis et.', '2.03', '7', '2020-06-22 17:18:55', '2020-06-19 09:55:51');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('8', 'omnis', 'Ad laudantium ab incidunt enim numquam aperiam. Alias eum tempore omnis voluptatem quo ratione. Autem consequuntur repellendus dignissimos earum placeat voluptate incidunt. Tempore nostrum pariatur sint porro quia et.', '37.00', '8', '2020-06-04 14:03:47', '2020-06-18 03:34:48');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('9', 'reprehenderit', 'Nobis aliquid sint maxime omnis. Nihil placeat ipsam quidem voluptatem quia voluptatem quos.', '1.93', '9', '2020-06-20 01:39:09', '2020-06-06 03:17:58');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('10', 'sunt', 'Voluptatem facere ut accusantium temporibus nisi sint eos. Sint et et dolores dolorum. Dolor omnis non vel voluptas corporis ad. Consequuntur aut provident eos quia labore.', '20.25', '10', '2020-06-05 18:06:31', '2020-06-30 11:27:44');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('11', 'excepturi', 'Eum omnis quod sed occaecati. Suscipit quis in in voluptate odit. Quia maiores sed labore modi voluptatem qui. Dolor amet tempore quae voluptatem odit eaque vel fugiat.', '0.00', '11', '2020-06-19 02:26:29', '2020-06-16 21:34:55');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('12', 'laborum', 'Saepe optio reiciendis eum quia. Est nihil distinctio rerum aut alias id. Eius et repellendus maxime reiciendis numquam dolorem. Iure aut explicabo magni.', '866408.53', '12', '2020-06-24 16:42:28', '2020-06-04 01:37:01');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('13', 'maxime', 'Laboriosam ex natus magnam voluptatibus. Nihil autem autem ut voluptatem fugit aperiam in. Enim dicta pariatur sit omnis eum autem consequatur reprehenderit. Fugit omnis libero reiciendis voluptate mollitia.', '44.92', '13', '2020-06-05 10:15:16', '2020-06-05 23:00:33');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('14', 'vitae', 'Quia sit velit modi explicabo suscipit. Labore officia nostrum ut culpa explicabo. Laboriosam recusandae dolor expedita hic enim.', '132650.03', '14', '2020-06-12 14:53:05', '2020-06-23 05:52:49');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('15', 'est', 'Maxime nemo illo qui quas. Ab beatae inventore magnam incidunt ducimus quia voluptate. Placeat quidem perspiciatis alias ullam rem. Sit qui debitis molestiae.', '4.14', '15', '2020-06-04 11:22:10', '2020-06-08 13:11:44');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('16', 'ut', 'Ea ipsa possimus earum voluptas expedita. Officia sed ea voluptas nulla dolores pariatur blanditiis. Quos enim minima dolorem et recusandae ea enim. Sunt recusandae rerum voluptatem laborum quo ut iure hic.', '48890842.72', '16', '2020-06-23 22:17:36', '2020-06-20 13:08:15');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('17', 'dicta', 'Ut dolores sed qui excepturi minus. Autem et qui numquam ipsum ullam. Nihil iusto iusto eos sunt quia autem.', '1444.86', '17', '2020-06-17 05:47:36', '2020-06-25 00:10:26');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('18', 'nisi', 'Delectus doloribus omnis blanditiis. Et accusantium odit alias explicabo aut quod. Qui et ipsam animi saepe occaecati ex ut. Est iste mollitia odit iure.', '2960.01', '18', '2020-06-09 18:07:04', '2020-06-19 01:34:59');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('19', 'deserunt', 'Quia ipsum saepe enim dolorem temporibus nihil aut. Incidunt est pariatur sed accusantium et. Rem provident numquam voluptates quam dolores assumenda cumque.', '2.85', '19', '2020-06-19 00:27:25', '2020-06-14 01:25:07');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('20', 'vel', 'Aut ut dignissimos voluptas recusandae. Enim provident autem et doloribus. Voluptatum ab eveniet sed autem.', '2157.82', '20', '2020-06-15 22:01:07', '2020-06-24 08:43:40');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('21', 'et', 'Non quibusdam non impedit sunt assumenda. Et natus eaque nam itaque consequuntur eaque. Dolor omnis aut aut dolore voluptatem natus.', '8.00', '21', '2020-06-19 02:59:32', '2020-06-29 17:34:17');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('22', 'sit', 'Similique et ducimus aut. Iusto repellendus voluptates et. Velit laboriosam voluptatem id facilis rerum ullam.', '0.22', '22', '2020-06-03 00:38:27', '2020-06-30 20:20:28');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('23', 'est', 'Quia aliquid doloremque perferendis suscipit laboriosam sint omnis. Sed et repellat facilis occaecati. Temporibus ea saepe et quas.', '80.46', '23', '2020-06-14 11:53:35', '2020-06-14 06:43:12');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('24', 'iste', 'Nostrum ea omnis est quas nemo. Consectetur aspernatur adipisci ut veritatis enim. Autem veniam omnis ducimus voluptatem omnis eveniet beatae dolorem. Aut esse omnis molestiae ducimus aut omnis est est.', '1558506.09', '24', '2020-06-03 02:45:43', '2020-06-21 14:51:54');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('25', 'repellat', 'Impedit itaque tenetur voluptatem et suscipit. Aperiam dolor debitis quisquam sed qui praesentium exercitationem ab. Dolorem dolores assumenda fugit dolor qui tenetur alias. Rerum aliquam culpa nihil ratione facilis harum enim.', '79544.26', '25', '2020-06-11 09:50:38', '2020-06-14 18:33:25');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('26', 'ut', 'Nihil qui error aspernatur soluta fugiat laudantium aperiam nisi. Earum rerum consequatur fugit illum sed. Ut fuga tempora unde veritatis repellendus nisi assumenda et.', '9031586.16', '26', '2020-06-11 02:02:08', '2020-06-19 11:59:30');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('27', 'pariatur', 'Officiis cum molestiae praesentium quia. Et laborum optio corporis fugit et qui quasi. Quibusdam numquam voluptatem dicta.', '0.27', '27', '2020-06-06 03:32:35', '2020-06-30 13:08:54');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('28', 'voluptatem', 'Optio numquam sapiente deleniti perspiciatis quibusdam officia. Sapiente est velit sint sint facilis dicta. Et voluptatibus ipsa magni.', '26.40', '28', '2020-06-15 14:41:22', '2020-06-16 09:32:57');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('29', 'quo', 'Voluptatem natus labore laboriosam in. Et velit consequatur et iure. Fugiat minima exercitationem hic harum ut id. Porro rem qui vel vel.', '0.00', '29', '2020-06-30 17:46:03', '2020-06-07 17:59:24');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('30', 'dolores', 'Libero sed rem ipsum ratione maxime. Perferendis animi id similique voluptas eligendi. A laboriosam enim quo eligendi et culpa. Optio voluptate eligendi eaque delectus amet. Id et quia qui.', '426036226.80', '30', '2020-06-13 06:59:38', '2020-06-06 02:58:38');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('31', 'sapiente', 'Facilis voluptatem tempora doloribus et itaque aut. Ex soluta voluptatem ea quam beatae veniam beatae. Unde facere sunt velit sit ipsa officia ea. Adipisci veritatis nihil velit laborum enim quis officia et.', '19717.80', '31', '2020-06-20 02:28:45', '2020-06-13 12:17:19');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('32', 'et', 'Dolores repellendus ut sed magni quo perferendis omnis dolorem. Possimus qui optio quia ipsa et sequi sunt. Velit beatae animi similique reiciendis vero sit harum.', '29868296.76', '32', '2020-06-28 12:49:04', '2020-06-22 15:05:00');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('33', 'corporis', 'Ipsa sint eum totam reprehenderit nobis sint ratione. Exercitationem aut et harum nihil. Omnis dolore numquam cumque asperiores nulla magni. Nihil sit et est in perspiciatis.', '42053305.00', '33', '2020-06-26 12:04:40', '2020-06-09 11:28:28');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('34', 'placeat', 'Et dolorum odio repellendus earum. Eos odit sit porro. Rem id ut assumenda voluptates sint est dicta eaque. Temporibus labore placeat aperiam est ullam ratione rerum.', '297683.78', '34', '2020-06-03 17:25:52', '2020-06-22 17:21:28');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('35', 'molestiae', 'Qui ut sunt voluptatem similique cum. Voluptatum autem rem tempora autem rerum adipisci deserunt. Magnam natus perferendis voluptatem et quis et. Modi nobis dolores adipisci harum qui quis.', '8.20', '35', '2020-07-01 08:30:13', '2020-06-29 10:31:09');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('36', 'ut', 'Hic adipisci modi voluptas praesentium est. Autem aut et in provident temporibus. Dolores eos est voluptas beatae.', '3360.91', '1', '2020-06-11 23:53:12', '2020-06-19 09:02:44');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('37', 'voluptatem', 'Et voluptas voluptas aut dolorem maiores repellendus. Labore recusandae aut voluptatum. Itaque saepe labore est voluptatum laborum.', '2605191.00', '2', '2020-06-19 12:37:35', '2020-06-06 10:39:30');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('38', 'nostrum', 'Recusandae doloribus qui est voluptas voluptatum est eveniet. Eveniet rem delectus debitis iusto. Qui omnis est rerum. Eum excepturi aut odit quas atque quia consequatur aut.', '45390.99', '3', '2020-06-09 05:07:45', '2020-06-14 10:56:08');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('39', 'ea', 'Totam reprehenderit quo id et sed doloremque. Molestiae blanditiis rem reiciendis tempore eaque aliquam quia. Commodi sed culpa beatae.', '62.00', '4', '2020-06-19 19:10:02', '2020-06-14 04:37:04');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('40', 'quos', 'Labore sed rerum et beatae qui beatae delectus. Nihil adipisci ullam id. Vitae voluptas officia delectus consequuntur perferendis ullam atque.', '1352440.80', '5', '2020-06-23 16:53:06', '2020-06-26 08:40:33');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('41', 'veritatis', 'Et quo aliquam id cum eligendi perspiciatis. Expedita tempore cumque tempora et. Vero quam quibusdam a rerum.', '890491.00', '6', '2020-06-12 08:51:17', '2020-06-15 09:11:04');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('42', 'placeat', 'Natus nam itaque sint veritatis. Praesentium qui laudantium sit minus dolores quod ab. Quasi sit id ducimus enim quia quisquam. Inventore voluptas praesentium deserunt nam molestias dolore incidunt.', '8680.36', '7', '2020-06-10 06:28:03', '2020-06-11 04:44:09');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('43', 'maiores', 'Magni architecto autem nobis quo culpa inventore velit error. Vel aut illo beatae.', '280.47', '8', '2020-06-24 03:37:54', '2020-06-16 14:40:35');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('44', 'illum', 'Distinctio est veniam rem modi voluptatem iusto. Qui dolorum praesentium mollitia sunt est. Consequuntur qui et ullam qui quas qui.', '94293320.48', '9', '2020-06-25 08:33:25', '2020-06-02 14:52:01');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('45', 'veniam', 'Minus natus repellat quisquam necessitatibus aut. Dolores ipsum enim mollitia. Repellat tenetur voluptas inventore sint.', '276848313.12', '10', '2020-06-13 22:06:10', '2020-06-09 15:05:42');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('46', 'aut', 'Veritatis possimus qui rerum aut eos quaerat. Est minima id aut atque. Consequatur dicta qui eos vitae. Quos rem rerum ea repudiandae.', '2.67', '11', '2020-06-11 05:05:06', '2020-06-07 18:17:37');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('47', 'quia', 'Eos blanditiis et quasi eum mollitia fugit. Quia quia quis est doloremque. Repellat doloremque maxime sed.', '1203.85', '12', '2020-06-26 19:53:16', '2020-06-25 01:53:46');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('48', 'dolore', 'Ipsum et libero repudiandae qui qui. Voluptates voluptatem nulla corporis nemo. Illo expedita ut cupiditate.', '5095.61', '13', '2020-06-18 05:49:56', '2020-06-07 03:21:10');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('49', 'repellendus', 'Enim qui aliquid repudiandae aut. Repellendus et soluta et rerum quia nobis.', '10.93', '14', '2020-06-08 02:54:13', '2020-06-12 23:15:29');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('50', 'non', 'Eum porro quae expedita tempora saepe ab nihil veniam. Qui ut qui excepturi tempore autem delectus quod autem. Consequuntur debitis pariatur id ullam sit deserunt. Quidem ab vitae id ad.', '8829612.22', '15', '2020-06-11 23:30:17', '2020-06-05 16:52:32');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('51', 'corporis', 'Qui harum nemo dignissimos nam necessitatibus nam repellendus impedit. Quo laudantium minus aut cumque error modi qui voluptatem. Esse ea dolorem cumque eum magnam ab adipisci.', '404255.90', '16', '2020-06-24 20:30:54', '2020-06-12 00:24:05');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('52', 'natus', 'Quo aut voluptatem tempore perferendis sequi deserunt rerum. Doloribus ut nemo et quod eveniet praesentium eligendi. Ut nesciunt ut magni.', '826723.00', '17', '2020-06-18 10:02:19', '2020-06-18 14:26:44');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('53', 'sed', 'Quia enim non totam omnis eos. Aut mollitia excepturi ipsa amet similique aliquid. Repellendus repellat porro facilis id ipsa corporis sint.', '237.29', '18', '2020-06-29 03:19:18', '2020-06-27 07:43:57');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('54', 'autem', 'Quo omnis doloremque et ipsam voluptatibus veniam et. Laudantium laudantium officiis aut est quis dolores.', '6051.88', '19', '2020-06-29 17:29:08', '2020-06-08 20:47:23');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('55', 'numquam', 'Quo temporibus quia eos nihil iusto impedit. Ratione est deleniti officiis nobis. Quis laudantium saepe hic tempore.', '5.44', '20', '2020-06-13 05:44:43', '2020-06-04 16:19:47');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('56', 'et', 'Fugit debitis sed veniam non minima recusandae. Et nam quo autem ducimus voluptatibus sed.', '108.72', '21', '2020-06-04 06:55:31', '2020-06-26 04:56:56');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('57', 'possimus', 'Labore blanditiis tempore nesciunt quisquam nemo. Dolores ut error eveniet eaque tenetur. Doloremque expedita perspiciatis voluptatibus est mollitia. Numquam praesentium quaerat eligendi omnis aperiam sapiente quae.', '90.89', '22', '2020-06-21 19:04:56', '2020-06-22 12:24:07');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('58', 'aut', 'Recusandae exercitationem temporibus qui dignissimos eos eligendi. Ea iusto quidem et occaecati libero et. Sed et at soluta atque quia sit.', '3041219.50', '23', '2020-06-25 17:33:17', '2020-06-04 03:29:20');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('59', 'eligendi', 'Eos rerum corrupti eum. Nihil asperiores id blanditiis. Aliquam eum recusandae dicta ducimus. Ducimus iste cum eos saepe quo minima qui.', '345701814.63', '24', '2020-06-20 16:40:34', '2020-06-04 20:09:08');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('60', 'libero', 'Saepe fuga officiis aut. Dolorem rem animi consequatur. Est sit sint fugiat harum totam. Commodi quia ut saepe enim ut ipsam.', '40292.43', '25', '2020-06-20 17:06:30', '2020-06-08 17:38:27');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('61', 'sed', 'Voluptas quasi voluptatibus modi labore odit nihil. Totam in tempore iste delectus. Odit rerum possimus laudantium. Et aut voluptate est exercitationem magnam enim omnis. Ut quia eos quidem eius tempora esse aut.', '4.02', '26', '2020-06-18 11:01:35', '2020-06-22 03:59:57');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('62', 'autem', 'Repellat a qui non incidunt. Facere numquam quae error quis optio. Ad odio voluptatem blanditiis harum et est.', '666620.50', '27', '2020-06-03 11:45:51', '2020-06-09 22:35:45');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('63', 'ut', 'Et id sint ut optio et est. Sunt praesentium qui culpa. Et rerum fuga rerum labore sunt.', '7473385.12', '28', '2020-06-15 07:32:21', '2020-06-10 21:52:24');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('64', 'voluptas', 'Officiis dolorem ullam nam quasi eos. Provident consectetur aliquid maxime. Numquam blanditiis sunt maiores labore. Repudiandae cupiditate rerum tempora alias tempora officiis.', '373969947.40', '29', '2020-06-09 06:14:25', '2020-06-03 20:43:10');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('65', 'dolor', 'Facilis voluptate porro accusamus eveniet ullam. Quia libero saepe quaerat corporis voluptatibus. Aperiam ea tenetur et et voluptatem omnis.', '0.00', '30', '2020-06-25 14:27:52', '2020-06-15 00:51:20');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('66', 'quod', 'Quo magni perferendis labore eveniet beatae perferendis. Repellendus dolores et dolor. Consequatur omnis a officiis vero nihil quae.', '925249.50', '31', '2020-06-20 05:19:22', '2020-06-13 07:00:00');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('67', 'distinctio', 'Adipisci veniam ea voluptatum sit similique et. Totam sint ut possimus aliquam quis ut. Dolorem repellat commodi est harum molestiae. Sed quis eos nihil recusandae fugiat.', '78.12', '32', '2020-06-12 06:40:55', '2020-06-12 11:27:47');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('68', 'a', 'Qui qui dignissimos id qui non. Fugit id ducimus iste unde et. Incidunt quos et perspiciatis et.', '11.33', '33', '2020-06-21 09:00:52', '2020-06-20 09:04:21');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('69', 'est', 'Neque excepturi perferendis temporibus ut est dicta pariatur. Sint recusandae libero quisquam ducimus velit. Fugit illum sit soluta praesentium non.', '1090.82', '34', '2020-06-26 02:31:02', '2020-06-04 09:44:29');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('70', 'quis', 'Et et voluptate molestias odit. Consequuntur ut ut nihil accusantium et incidunt deserunt. Voluptates illum consequuntur odit et praesentium. Pariatur sapiente totam dolorem dignissimos laboriosam aut eius est.', '0.00', '35', '2020-06-24 17:36:40', '2020-06-15 20:34:30');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('71', 'omnis', 'Ipsa aliquid rerum eum. Minima repellat culpa vero alias dolores eveniet. Vel quas eligendi eligendi id laudantium qui. Ut qui eum voluptas est earum praesentium sed. Maiores veniam eum dolores officiis.', '18902.04', '1', '2020-06-23 14:30:40', '2020-06-29 14:45:56');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('72', 'voluptas', 'Velit libero et qui tempora ut eum velit. Doloremque sed possimus velit error sunt dolores. Mollitia dolores aut quia est eligendi rem.', '0.00', '2', '2020-06-30 09:07:46', '2020-06-25 00:28:40');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('73', 'id', 'Eveniet similique voluptas et aut ad ut. Mollitia et ea consequatur sit repellat iusto. Libero voluptas similique est doloremque rem minus officiis.', '5414753.89', '3', '2020-06-23 05:41:38', '2020-06-26 10:58:18');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('74', 'nobis', 'Repellendus quae neque ea. Suscipit fugiat modi a autem. Aliquam minima doloribus tempore voluptatem laboriosam ipsa quia quia.', '8884425.80', '4', '2020-06-24 06:29:29', '2020-06-20 07:00:34');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('75', 'dolor', 'Dignissimos deleniti commodi consequatur in rerum quia. Blanditiis delectus dolorum maxime illo. Totam velit architecto magnam itaque.', '521.71', '5', '2020-06-02 22:00:02', '2020-06-30 18:15:05');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('76', 'repellat', 'Iste mollitia rerum asperiores aut dolores assumenda itaque. Et sed quas explicabo. Placeat aut amet et nulla molestiae temporibus. Quod odio corporis sapiente labore nemo.', '3.58', '6', '2020-06-05 11:13:03', '2020-06-23 13:20:59');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('77', 'voluptate', 'Et ipsum maiores aut et quis. Expedita sit esse praesentium laudantium iusto occaecati debitis. At aut nesciunt ea maxime omnis amet. Consequatur qui est earum non.', '0.00', '7', '2020-06-12 08:12:33', '2020-06-16 07:10:38');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('78', 'dolor', 'Quisquam ex earum expedita molestiae vel quia libero. Cumque omnis excepturi laudantium dolorum sit est. Vel qui ut sit rerum enim corrupti.', '775.40', '8', '2020-06-08 02:42:51', '2020-06-06 21:08:25');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('79', 'iste', 'Numquam qui ex atque ut dolore ipsam numquam. Consequuntur quisquam sed a iusto. Aut et soluta ut sequi qui saepe neque.', '300783727.47', '9', '2020-06-19 19:23:50', '2020-06-04 14:38:58');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('80', 'nesciunt', 'Magni sit aspernatur nihil quia inventore sunt. Exercitationem dicta velit quo reiciendis adipisci. Cupiditate incidunt perspiciatis atque cupiditate voluptas magni.', '84276305.77', '10', '2020-06-28 02:36:37', '2020-06-13 00:56:20');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('81', 'est', 'Et ea est distinctio fugiat exercitationem labore. Earum culpa quia qui et. Natus voluptatum veritatis repellat necessitatibus consequatur et rerum.', '2346057.21', '11', '2020-06-14 04:19:05', '2020-06-19 18:39:01');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('82', 'quam', 'Tempore labore vel et dolores. Dolorem molestiae eaque rerum itaque est. Corrupti facilis rem in quasi earum. Illo voluptas odit ab reprehenderit tempora voluptatibus dignissimos.', '514340.16', '12', '2020-06-26 16:30:50', '2020-06-02 11:08:31');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('83', 'dolorum', 'Quo dolorem ipsum odio rerum autem et adipisci. Sit maiores unde et repellat aliquam. Omnis quis ut fuga nemo.', '53853233.63', '13', '2020-06-21 10:22:12', '2020-06-26 12:44:43');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('84', 'non', 'Quae hic et nulla. Et ea impedit quis impedit. Voluptatem vitae animi a qui libero. Ab placeat cum magnam.', '0.40', '14', '2020-06-25 17:42:43', '2020-06-18 23:42:52');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('85', 'quia', 'Dicta ipsam quidem repellat dolorem iusto voluptas rerum praesentium. Omnis numquam veritatis esse maxime velit est. Doloribus eos voluptatibus voluptatum maxime.', '510642.25', '15', '2020-06-03 23:38:58', '2020-06-10 05:22:16');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('86', 'et', 'Repellat beatae sint distinctio aliquam accusamus nihil magnam. Illum sint aut vitae praesentium cum quidem sit. Dignissimos quia laboriosam quam excepturi ut aperiam sapiente. Enim est sunt modi sint labore.', '14.65', '16', '2020-06-11 08:59:08', '2020-06-18 11:17:26');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('87', 'optio', 'Suscipit modi corrupti asperiores eum at eum. Officia voluptas ducimus animi. Eligendi assumenda culpa qui omnis a ut. Doloremque maiores veniam labore omnis et incidunt.', '16378.69', '17', '2020-06-28 06:36:20', '2020-06-14 15:32:50');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('88', 'perferendis', 'Minima et eius quia. In cum velit aut placeat. Quia dolores temporibus occaecati. At qui nihil ea et numquam ut.', '2163543.30', '18', '2020-06-04 09:50:36', '2020-06-20 21:12:37');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('89', 'ratione', 'Optio et rem rerum repellat dignissimos. Eligendi illo minus explicabo et.', '1.02', '19', '2020-06-27 15:37:29', '2020-06-06 17:42:54');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('90', 'dolores', 'Facilis quidem accusamus ducimus ab qui. Ut voluptatem autem earum aliquam eos. Dolor debitis aut soluta minima et natus rerum consequatur.', '50.19', '20', '2020-06-17 04:26:39', '2020-06-29 03:15:41');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('91', 'provident', 'Sint voluptas quis ut ratione. Accusantium harum aspernatur dicta impedit. Eos est sit et libero distinctio. Omnis animi natus minima eum. Corporis et voluptates quidem rerum harum laboriosam quis quasi.', '2087543.52', '21', '2020-06-03 01:19:13', '2020-06-07 09:28:55');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('92', 'amet', 'Libero perspiciatis dolores et nihil. Qui quos vero excepturi voluptatem. Perspiciatis eum delectus sit vel. Tempora consequatur et et magni consequuntur. Qui suscipit eos est minima.', '14.60', '22', '2020-06-14 21:20:14', '2020-06-06 09:40:16');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('93', 'nihil', 'Magnam excepturi et qui amet non esse ut. Qui corrupti eligendi assumenda est. Dolorem vel labore voluptatem ullam rerum natus. Et rerum maxime voluptas officia aut. Reprehenderit delectus aut voluptas aut.', '4173.46', '23', '2020-06-21 16:23:15', '2020-06-23 05:26:17');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('94', 'quod', 'Ut tenetur esse et ut deleniti aut. Non saepe delectus qui. Rerum autem nam fugiat fugit id minus cum. Molestiae consequatur aut consequatur quis.', '3528787.60', '24', '2020-06-05 01:56:05', '2020-06-25 16:43:43');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('95', 'itaque', 'Molestias sapiente velit blanditiis reprehenderit temporibus. Et cum et distinctio sapiente expedita exercitationem excepturi. Tempore eum quam delectus architecto dolore quia. Quas quod blanditiis id et cupiditate soluta.', '58097721.63', '25', '2020-06-11 20:51:34', '2020-06-21 21:57:51');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('96', 'reprehenderit', 'Delectus et sit expedita magnam non. Quasi ullam qui ducimus. Nulla sit id est ipsam nisi dolor.', '385.57', '26', '2020-06-10 11:25:43', '2020-07-01 10:00:46');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('97', 'odio', 'Commodi vero est totam consectetur alias quo. Odit exercitationem natus omnis iste. Minus optio natus aut voluptatem aperiam aut qui.', '488538.38', '27', '2020-06-08 11:11:40', '2020-06-05 23:29:29');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('98', 'deleniti', 'Minus ex quo reprehenderit. Esse voluptates fugit consequatur rerum nisi qui enim.', '156699.07', '28', '2020-06-05 06:58:24', '2020-06-23 18:31:31');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('99', 'sunt', 'Corporis corrupti maxime est eligendi corrupti. Velit harum soluta ad sint neque et. Possimus ex necessitatibus assumenda dolore voluptatum.', '2904484.06', '29', '2020-06-27 18:00:52', '2020-06-17 13:06:43');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`, `created_at`, `updated_at`) VALUES ('100', 'est', 'Vitae error consequatur quidem corrupti enim. Eos aut nesciunt non voluptatem magni modi officiis. Animi perspiciatis voluptatibus commodi odio saepe impedit.', '86.20', '30', '2020-06-12 09:29:55', '2020-06-03 19:59:42');



#
# TABLE STRUCTURE FOR: orders_products
#

DROP TABLE IF EXISTS `orders_products`;

CREATE TABLE `orders_products` (
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `purchased` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `quantity_ordered` int(10) unsigned NOT NULL DEFAULT 1,
  `quantity_purchased` int(10) unsigned NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`product_id`,`order_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('1', '67', 'Yes', 6427903, 2, '2020-05-19 07:41:07', '2020-06-09 19:03:03');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('2', '28', 'No', 316171191, 7, '2020-06-17 08:59:39', '2020-06-10 06:15:58');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('3', '36', 'Yes', 70925835, 65, '2019-08-19 02:29:21', '2020-06-09 02:07:53');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('4', '49', 'No', 0, 381084, '2020-01-09 18:12:34', '2019-10-23 07:44:41');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('5', '41', 'No', 12035695, 2351658, '2020-01-10 09:45:31', '2019-11-14 22:18:50');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('6', '61', 'Yes', 3, 150, '2020-04-28 00:42:57', '2019-09-30 17:48:06');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('7', '72', 'No', 3, 182, '2020-05-24 14:57:51', '2019-07-16 12:39:24');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('8', '81', 'No', 1321, 43987333, '2019-10-24 20:48:36', '2019-10-28 22:10:34');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('9', '99', 'Yes', 53677, 370678021, '2020-06-05 15:27:47', '2020-05-27 10:39:40');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('10', '70', 'Yes', 1, 86193, '2019-10-23 20:32:40', '2019-09-14 12:46:32');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('11', '71', 'No', 58814, 12, '2020-04-04 02:25:12', '2020-03-01 16:30:57');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('12', '42', 'No', 1050624, 145317502, '2019-08-01 06:12:20', '2020-03-11 00:08:08');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('13', '63', 'Yes', 5158718, 641455557, '2020-05-11 05:04:45', '2020-01-08 14:45:57');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('14', '54', 'No', 250460, 24, '2019-07-07 12:39:37', '2019-10-03 14:25:02');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('15', '85', 'No', 96720, 623490, '2019-08-16 17:34:59', '2020-04-03 04:58:55');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('16', '76', 'No', 1709, 424, '2020-06-05 04:46:07', '2020-06-07 11:41:30');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('17', '67', 'No', 52446705, 3, '2019-11-03 05:29:45', '2019-12-21 11:47:30');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('18', '48', 'No', 7353460, 4434, '2020-03-24 07:44:19', '2019-09-02 19:05:56');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('19', '79', 'Yes', 0, 161588, '2020-06-26 05:57:45', '2019-08-13 05:00:46');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('20', '90', 'No', 63656009, 175, '2019-10-29 15:23:57', '2019-09-03 07:14:09');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('21', '41', 'No', 3269, 8, '2019-12-19 11:31:20', '2019-08-31 13:03:19');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('22', '82', 'No', 73, 579548592, '2020-05-12 15:45:30', '2020-06-06 05:26:14');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('23', '53', 'Yes', 3, 0, '2019-08-03 23:55:31', '2019-12-12 19:51:17');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('24', '54', 'Yes', 261919452, 290, '2020-02-21 06:49:41', '2019-07-26 21:37:26');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('25', '95', 'No', 367198622, 5283164, '2020-02-02 20:37:45', '2019-09-12 04:38:19');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('26', '66', 'No', 859806, 48, '2019-07-28 02:49:12', '2020-01-08 15:50:11');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('27', '57', 'Yes', 2119, 4, '2020-01-30 11:12:38', '2020-02-12 16:29:28');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('28', '88', 'Yes', 355815707, 0, '2020-06-02 08:38:23', '2019-12-13 06:19:50');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('29', '19', 'No', 110591326, 75567, '2019-12-28 15:44:43', '2020-01-08 01:11:55');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('30', '70', 'Yes', 74581, 1148643, '2020-06-23 16:53:36', '2019-09-04 06:21:03');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('31', '11', 'Yes', 275728955, 0, '2020-06-18 15:47:35', '2020-06-20 01:13:55');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('32', '52', 'No', 841, 76139, '2019-08-02 10:37:34', '2020-06-09 00:19:29');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('33', '13', 'Yes', 2327, 6305, '2020-02-28 10:05:37', '2020-01-22 07:59:59');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('34', '74', 'Yes', 0, 0, '2019-08-13 14:34:16', '2020-02-27 00:33:49');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('35', '45', 'Yes', 94057214, 0, '2020-01-03 15:19:13', '2020-02-15 05:15:58');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('36', '76', 'No', 0, 262008, '2019-11-23 13:39:32', '2020-01-13 08:05:33');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('37', '47', 'Yes', 858408, 602866, '2019-09-05 14:47:41', '2020-01-29 00:58:42');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('38', '58', 'Yes', 94925109, 84128156, '2019-11-23 11:05:56', '2019-11-17 12:40:08');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('39', '79', 'Yes', 13878, 35850, '2019-12-24 20:22:04', '2020-04-26 21:01:47');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('40', '90', 'No', 200453522, 245139150, '2020-01-14 08:24:42', '2020-06-01 00:29:53');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('41', '51', 'Yes', 0, 4890, '2020-01-30 22:29:14', '2019-11-26 18:03:48');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('42', '42', 'No', 3283, 3233863, '2019-12-11 05:14:24', '2019-09-02 17:18:27');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('43', '63', 'Yes', 88, 621554896, '2019-07-05 09:11:02', '2019-12-10 06:29:39');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('44', '14', 'No', 3, 19277, '2020-04-20 15:56:42', '2020-05-06 23:50:54');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('45', '75', 'No', 421, 172176049, '2019-10-02 18:23:59', '2020-02-01 03:31:50');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('46', '86', 'No', 10767184, 79, '2020-06-02 11:53:42', '2019-09-04 12:40:20');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('47', '37', 'No', 4, 1356, '2020-01-10 05:44:45', '2020-01-19 01:48:23');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('48', '38', 'No', 9, 11488, '2019-11-28 18:26:55', '2019-07-10 08:59:44');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('49', '39', 'Yes', 1158, 53104, '2020-01-01 01:59:51', '2020-04-27 07:16:36');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('50', '10', 'No', 1888851, 1, '2019-10-05 03:09:15', '2019-11-15 01:58:39');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('51', '11', 'No', 68, 0, '2019-09-03 18:48:39', '2020-01-11 17:08:45');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('52', '12', 'No', 4018, 86, '2020-05-11 08:20:14', '2020-03-27 09:59:59');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('53', '43', 'Yes', 0, 363, '2019-10-08 10:57:36', '2020-03-08 09:50:01');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('54', '34', 'Yes', 424417152, 0, '2020-01-02 07:17:13', '2020-03-09 12:45:15');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('55', '25', 'Yes', 51, 388442265, '2019-12-06 01:16:42', '2020-05-13 20:30:11');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('56', '16', 'Yes', 6, 9559092, '2020-04-17 13:40:23', '2019-07-03 02:56:00');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('57', '17', 'No', 20833976, 26, '2019-11-07 05:29:49', '2019-09-17 00:50:11');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('58', '28', 'Yes', 2, 5393, '2019-09-17 06:26:56', '2019-10-10 19:43:27');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('59', '19', 'Yes', 4, 25, '2019-11-30 16:29:07', '2020-03-22 10:05:18');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('60', '10', 'Yes', 19208204, 58, '2019-09-28 23:37:05', '2019-10-16 18:15:37');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('61', '11', 'Yes', 13, 5, '2020-03-21 04:53:59', '2020-04-28 03:13:29');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('62', '12', 'Yes', 74176353, 43948, '2019-10-10 18:24:26', '2020-02-17 14:22:19');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('63', '3', 'No', 31757, 4890, '2019-07-26 06:16:22', '2019-11-11 17:38:34');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('64', '4', 'Yes', 12, 1227, '2019-10-08 22:02:21', '2020-03-27 23:18:25');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('65', '45', 'No', 533, 34118541, '2019-08-10 16:57:47', '2020-06-03 16:02:32');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('66', '33', 'Yes', 7, 321, '2020-03-13 06:58:53', '2019-11-12 22:26:25');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('67', '25', 'Yes', 0, 1008, '2020-06-20 08:40:22', '2019-08-02 18:35:41');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('68', '24', 'No', 44, 103547640, '2020-06-05 11:31:16', '2019-12-01 03:50:48');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('69', '69', 'No', 3290, 319721454, '2019-08-30 15:17:31', '2019-09-11 09:33:12');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('70', '20', 'No', 552, 426, '2019-07-24 17:17:50', '2019-11-03 20:25:28');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('71', '71', 'Yes', 369218272, 0, '2019-08-23 18:33:10', '2020-03-18 22:23:38');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('72', '2', 'Yes', 16268, 4236, '2019-09-14 06:37:27', '2020-01-10 11:02:45');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('73', '73', 'No', 17692, 291189, '2019-07-14 01:04:59', '2019-10-31 11:17:15');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('74', '74', 'Yes', 5788, 290, '2020-06-30 08:12:10', '2019-07-14 09:42:56');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('75', '5', 'Yes', 270, 57, '2019-07-11 11:20:33', '2019-08-14 18:12:23');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('76', '6', 'No', 1419814, 24, '2019-10-13 12:29:06', '2020-01-25 02:40:13');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('77', '7', 'No', 11977, 529, '2019-12-02 11:46:40', '2020-02-02 13:09:25');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('78', '7', 'No', 21, 0, '2019-12-23 19:33:34', '2019-07-30 10:01:38');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('79', '9', 'Yes', 597679, 3, '2019-08-18 03:22:01', '2019-08-21 02:51:31');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('80', '80', 'Yes', 10261949, 0, '2019-10-06 15:42:22', '2019-12-31 16:00:04');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('81', '31', 'Yes', 26372, 433948450, '2019-12-27 20:59:46', '2019-12-16 05:52:01');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('82', '82', 'No', 735536, 0, '2019-08-29 10:59:43', '2020-05-31 03:40:46');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('83', '33', 'Yes', 34836294, 206748659, '2020-02-04 12:33:56', '2020-06-04 10:02:30');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('84', '44', 'Yes', 14, 13, '2019-12-13 14:20:52', '2020-01-15 23:02:08');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('85', '25', 'Yes', 169, 1749365, '2019-07-22 10:28:31', '2019-12-26 17:05:24');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('86', '8', 'Yes', 13516276, 248685654, '2019-11-16 01:49:02', '2020-06-30 12:36:55');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('87', '87', 'No', 0, 340778627, '2020-06-13 02:40:08', '2020-03-31 14:46:45');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('88', '8', 'Yes', 339, 22, '2020-03-03 02:09:15', '2020-01-17 05:31:41');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('89', '9', 'No', 4495, 123851946, '2020-03-03 06:33:38', '2020-01-02 06:18:33');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('90', '90', 'No', 2663012, 925269, '2020-02-17 05:17:33', '2019-10-05 17:00:35');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('91', '1', 'Yes', 1, 0, '2019-10-27 18:28:28', '2019-12-21 05:33:22');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('92', '2', 'Yes', 8012, 521, '2020-06-24 05:55:36', '2019-11-28 21:03:04');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('93', '3', 'No', 2978, 34, '2020-02-16 06:26:04', '2019-11-18 20:30:05');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('94', '9', 'Yes', 31335, 27197751, '2020-04-06 02:52:44', '2019-11-04 23:55:33');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('95', '5', 'Yes', 0, 15818413, '2019-12-12 21:11:50', '2019-09-01 23:05:35');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('96', '6', 'Yes', 5, 4584, '2020-06-03 14:22:19', '2020-03-07 20:45:02');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('97', '7', 'No', 207456915, 59814327, '2020-05-21 14:33:58', '2020-06-11 21:21:42');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('98', '8', 'No', 214459, 114914664, '2020-02-09 16:54:45', '2020-02-26 18:45:33');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('99', '9', 'No', 181, 2, '2020-01-29 18:11:45', '2019-11-14 09:33:46');
INSERT INTO `orders_products` (`product_id`, `order_id`, `purchased`, `quantity_ordered`, `quantity_purchased`, `created_at`, `updated_at`) VALUES ('100', '10', 'Yes', 8, 0, '2019-07-17 18:33:16', '2019-12-12 08:56:51');


#
# TABLE STRUCTURE FOR: personal_discount
#

DROP TABLE IF EXISTS `personal_discount`;

CREATE TABLE `personal_discount` (
  `client_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `personal_discount` float unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`client_id`),
  CONSTRAINT `personal_discount_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('1', '3', '2020-03-30 15:33:08', '2019-09-05 20:50:12');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('2', '7', '2020-06-10 15:14:54', '2019-11-16 02:36:51');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('3', '2', '2020-05-09 23:24:46', '2020-02-12 10:11:17');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('4', '5', '2019-08-05 10:04:12', '2020-06-01 07:03:42');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('5', '1', '2019-12-03 06:53:59', '2020-02-20 10:18:03');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('6', '5', '2019-10-05 09:03:33', '2019-12-23 04:21:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('7', '9', '2019-12-25 01:29:30', '2020-03-12 07:28:16');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('8', '6', '2019-09-26 22:43:11', '2020-01-05 20:55:07');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('9', '3', '2019-12-21 18:05:55', '2020-05-28 23:11:14');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('10', '5', '2019-08-22 15:48:49', '2019-09-12 11:23:37');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('11', '8', '2019-11-28 04:04:47', '2019-09-28 09:01:03');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('12', '9', '2020-04-01 02:47:57', '2019-08-09 07:33:41');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('13', '8', '2020-04-17 03:52:58', '2019-08-04 04:19:46');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('14', '9', '2020-06-28 02:39:52', '2020-01-30 13:08:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('15', '9', '2020-03-02 00:25:10', '2019-09-28 04:03:30');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('16', '5', '2019-10-13 07:11:20', '2020-05-31 04:47:16');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('17', '1', '2019-10-08 21:42:35', '2019-07-18 07:09:44');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('18', '3', '2020-03-03 12:21:28', '2020-01-23 14:02:14');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('19', '2', '2020-01-09 19:51:03', '2020-04-27 16:41:14');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('20', '5', '2020-01-24 16:53:51', '2020-05-24 16:01:10');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('21', '2', '2019-09-02 05:31:21', '2020-03-18 17:33:18');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('22', '5', '2020-06-29 08:09:20', '2020-02-06 10:40:35');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('23', '1', '2019-08-01 04:17:07', '2019-12-04 08:49:53');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('24', '2', '2020-01-08 21:28:00', '2020-04-03 07:37:28');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('25', '5', '2020-05-04 20:39:03', '2020-02-02 08:02:46');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('26', '3', '2020-06-26 00:44:29', '2020-01-16 12:24:39');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('27', '1', '2020-06-03 07:52:02', '2019-08-17 11:20:12');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('28', '5', '2020-04-04 12:43:01', '2019-12-14 13:42:25');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('29', '8', '2020-05-23 04:34:28', '2020-05-30 05:07:02');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('30', '2', '2019-08-05 10:07:38', '2019-12-05 17:39:02');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('31', '4', '2020-03-05 07:25:17', '2020-02-23 09:57:32');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('32', '5', '2020-05-17 18:08:54', '2020-02-01 03:59:21');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('33', '4', '2020-06-20 04:09:05', '2020-04-04 08:51:02');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('34', '6', '2019-12-07 16:52:48', '2020-06-23 04:54:16');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('35', '7', '2020-06-30 12:06:19', '2019-07-03 19:43:27');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('36', '5', '2019-07-24 00:35:52', '2019-12-03 01:56:08');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('37', '7', '2019-12-27 20:59:16', '2019-10-04 19:30:02');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('38', '5', '2020-04-28 02:05:56', '2020-03-10 00:48:00');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('39', '7', '2019-08-04 08:06:29', '2019-12-13 10:37:53');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('40', '6', '2020-03-24 10:20:04', '2020-05-05 05:03:54');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('41', '1', '2020-03-14 18:55:04', '2019-08-21 23:50:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('42', '3', '2020-04-18 09:28:35', '2019-10-18 06:31:32');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('43', '6', '2020-01-28 00:28:01', '2019-11-18 11:29:52');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('44', '9', '2020-02-02 02:41:12', '2019-11-30 06:56:09');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('45', '5', '2019-12-31 00:35:39', '2019-10-27 10:06:06');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('46', '3', '2019-10-22 05:20:23', '2019-10-20 17:13:08');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('47', '4', '2019-08-08 12:01:43', '2020-06-01 13:09:39');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('48', '7', '2020-04-09 16:16:28', '2019-12-23 01:22:38');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('49', '9', '2020-04-02 10:58:39', '2019-11-23 10:59:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('50', '8', '2019-07-18 11:51:20', '2019-10-02 01:15:48');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('51', '4', '2020-02-14 18:27:27', '2020-04-27 04:08:55');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('52', '2', '2020-02-21 12:10:27', '2020-01-23 02:07:34');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('53', '1', '2020-01-04 23:38:23', '2020-04-29 00:10:42');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('54', '2', '2020-05-30 11:46:41', '2019-09-07 20:56:42');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('55', '8', '2020-02-22 21:37:07', '2019-11-22 04:31:11');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('56', '9', '2020-06-24 19:23:25', '2019-07-08 06:41:14');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('57', '9', '2020-06-19 12:12:16', '2019-08-28 07:33:18');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('58', '9', '2020-02-04 13:49:27', '2019-09-21 11:10:22');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('59', '2', '2019-12-05 18:51:18', '2020-02-07 15:29:53');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('60', '7', '2020-04-27 07:22:27', '2019-07-13 01:49:14');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('61', '5', '2020-03-28 23:02:44', '2020-06-20 12:07:06');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('62', '4', '2019-09-30 11:19:58', '2020-04-19 19:45:30');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('63', '4', '2020-02-19 07:21:02', '2019-10-26 08:40:37');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('64', '9', '2020-06-17 11:15:07', '2019-08-29 21:14:18');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('65', '2', '2019-12-18 11:49:44', '2020-06-17 19:22:26');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('66', '9', '2020-01-03 18:22:35', '2020-05-10 16:58:15');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('67', '7', '2019-08-15 01:08:07', '2020-05-20 02:17:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('68', '3', '2020-01-09 06:44:59', '2020-03-24 03:25:56');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('69', '6', '2019-07-11 13:02:53', '2020-02-04 08:44:39');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('70', '2', '2020-01-01 00:10:29', '2020-01-28 02:55:12');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('71', '4', '2019-07-10 14:49:45', '2019-12-01 10:52:23');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('72', '9', '2020-01-17 16:57:34', '2020-02-10 09:42:17');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('73', '7', '2019-12-28 13:22:29', '2020-04-19 03:57:05');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('74', '6', '2019-11-21 21:57:38', '2020-06-04 21:54:27');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('75', '4', '2020-06-20 11:28:30', '2019-09-09 23:31:34');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('76', '3', '2019-12-09 13:31:31', '2019-11-08 05:10:46');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('77', '5', '2020-05-31 14:24:06', '2020-06-05 20:01:33');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('78', '3', '2019-07-12 22:51:05', '2020-03-16 10:33:10');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('79', '4', '2020-04-03 18:46:08', '2019-11-12 18:53:20');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('80', '4', '2020-06-16 09:25:11', '2019-11-03 19:56:17');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('81', '6', '2020-04-05 08:56:36', '2019-07-12 00:56:07');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('82', '7', '2019-11-01 02:57:07', '2020-05-24 05:13:08');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('83', '3', '2020-04-11 03:55:44', '2020-05-27 19:15:47');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('84', '7', '2020-02-04 16:41:55', '2019-12-07 04:54:57');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('85', '5', '2020-05-22 23:58:48', '2020-02-14 15:59:01');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('86', '1', '2019-09-03 15:27:59', '2020-01-04 10:23:05');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('87', '1', '2020-03-07 00:06:36', '2020-05-18 08:31:01');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('88', '5', '2019-08-18 03:24:15', '2020-03-09 03:15:24');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('89', '4', '2019-07-08 17:38:42', '2019-11-23 19:29:18');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('90', '5', '2020-06-29 12:44:05', '2019-09-23 16:56:25');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('91', '4', '2020-01-17 21:23:38', '2019-10-25 16:16:43');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('92', '2', '2019-07-18 10:32:18', '2020-02-29 20:38:31');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('93', '5', '2020-02-19 23:49:19', '2019-12-16 21:23:52');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('94', '7', '2020-02-07 21:10:18', '2019-09-04 01:17:32');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('95', '6', '2019-08-07 05:49:51', '2019-08-08 02:35:56');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('96', '8', '2019-11-10 20:47:19', '2020-05-12 00:23:57');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('97', '5', '2020-06-20 02:01:15', '2020-03-02 12:27:52');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('98', '3', '2020-03-22 23:06:51', '2020-02-06 12:37:49');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('99', '2', '2019-09-12 21:53:26', '2020-06-14 19:43:28');
INSERT INTO `personal_discount` (`client_id`, `personal_discount`, `created_at`, `updated_at`) VALUES ('100', '2', '2019-10-01 17:45:36', '2020-03-23 21:07:50');



#
# TABLE STRUCTURE FOR: stocks
#

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` float unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `finished_at` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `stocks_name_idx` (`name`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('1', 'qui', 'Dolorem voluptas beatae officiis quos excepturi quia quaerat qui. Non velit non nesciunt vitae nisi quis. Natus suscipit est possimus alias. Corrupti provident pariatur iste rerum ab provident.', '3', '1', '1988-09-09 04:41:02', '1977-05-05 09:31:03', '2002-05-01 13:29:02', '1994-11-12 15:44:15');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('2', 'itaque', 'Numquam cupiditate ad dolor maxime. Sunt debitis ut quo atque nobis rerum. Quia ut ipsa odit non.', '2', '2', '2019-10-01 11:31:14', '1999-05-08 13:34:35', '2016-01-28 22:07:00', '2008-08-23 15:15:40');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('3', 'et', 'Est similique ullam repellat consequatur quidem. Voluptatem deserunt ea veritatis officia est qui. Distinctio quasi consectetur minima itaque voluptate qui et. Libero eligendi numquam quos et possimus magni cumque reprehenderit. Iure totam rerum facere est recusandae dolorem.', '9', '3', '1986-06-20 20:59:06', '2003-05-29 14:18:28', '2007-05-01 20:03:34', '1979-07-28 16:25:54');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('4', 'error', 'Perspiciatis est ut consequatur quasi illo perspiciatis quasi. Commodi aperiam qui repellendus facere aperiam quasi. Soluta id facere facilis aut assumenda et. Quidem veritatis veniam magni ipsa qui magni. Dolore aut sit qui ea porro laboriosam architecto placeat.', '7', '4', '1973-07-17 10:14:35', '2015-10-16 23:30:48', '1989-03-23 07:42:18', '2018-04-22 23:41:32');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('5', 'id', 'Rerum sint et minima at. Omnis et vero nesciunt et ipsam. Corrupti aut voluptatem ullam. Ut laudantium nihil alias et rerum.', '9', '5', '1977-11-09 12:48:26', '1973-11-27 14:36:36', '1995-04-07 05:42:00', '1970-04-13 04:17:41');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('6', 'ea', 'Aut perspiciatis debitis autem et. Ipsa autem commodi dolorem maxime a dolorem veritatis. Nisi aut ut rerum et dolorem.', '5', '6', '2007-10-02 21:43:35', '1993-06-29 01:29:39', '2002-07-04 05:33:41', '1983-12-27 18:14:34');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('7', 'aut', 'Quas similique voluptas quam qui beatae ut. Nihil iure ex est. Perferendis debitis neque nam sint. Vitae dolorem eum amet vero possimus ducimus.', '8', '7', '1979-01-02 05:17:06', '1995-01-12 21:32:34', '1978-01-28 01:11:05', '1993-12-30 16:19:03');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('8', 'quos', 'Officia aut et adipisci placeat nihil numquam iste. Id officia aperiam rerum asperiores veritatis magni est. Eaque voluptatum non enim. Asperiores est est nobis nobis.', '8', '8', '1976-01-17 05:41:59', '2009-12-21 00:49:37', '1981-06-28 14:02:11', '1997-04-12 13:53:17');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('9', 'similique', 'Velit facilis ab reprehenderit cum ut architecto aut qui. Quas perspiciatis velit dolores necessitatibus. Labore itaque adipisci rerum expedita id. Ut optio et suscipit veniam dolor.', '4', '9', '2020-02-20 08:06:13', '1978-06-12 16:10:02', '2007-10-15 07:06:38', '1997-10-20 14:34:41');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('10', 'laboriosam', 'Modi ratione sit perspiciatis est. Officiis velit consequatur facilis placeat similique. Officia dolorum quia placeat suscipit.', '1', '10', '2019-04-17 03:59:27', '2018-10-26 06:19:35', '2001-09-18 05:29:18', '2011-08-06 12:45:51');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('11', 'laudantium', 'Dolor aut adipisci vel autem illo. Facere ea sed minus tempora sequi praesentium temporibus corrupti. Aliquam consequuntur omnis autem earum voluptas. Officia quae voluptas dolorem ea ex nemo reprehenderit.', '7', '11', '1975-09-02 05:50:29', '1979-05-07 16:16:43', '1999-03-24 13:15:05', '2001-06-17 21:41:31');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('12', 'perspiciatis', 'Repellendus numquam et pariatur necessitatibus neque explicabo eos. Sint blanditiis ea nisi. Fugit impedit ipsa ut nulla esse. Vitae accusamus velit eius vel voluptate.', '5', '12', '2016-02-15 10:09:47', '2005-10-23 14:00:35', '1981-11-26 06:37:19', '2009-07-25 14:29:59');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('13', 'aliquid', 'Neque rerum voluptatibus fugiat hic aut et culpa. Voluptatem sit deleniti quam aut ea esse. Incidunt facilis omnis aliquid sapiente iste sed voluptate sed.', '3', '13', '1973-04-11 03:39:37', '2013-05-28 12:41:11', '2004-06-07 21:41:44', '1995-02-14 18:29:44');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('14', 'dolore', 'Soluta suscipit possimus quas earum explicabo sunt facilis. Et et temporibus vitae iure aperiam minus quidem et. Eligendi sed ut porro in nobis dolor. Atque ab omnis accusantium similique quia.', '7', '14', '2000-12-10 20:10:37', '2006-08-25 18:14:12', '2001-08-31 22:16:45', '1985-08-22 01:01:14');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('15', 'repellat', 'Ducimus voluptatem tempore ut officia magni non error. Nam repudiandae voluptatem veritatis. Sit et ut dolores culpa neque odit quis. Iste vel distinctio facilis ut.', '8', '15', '1999-01-27 16:54:23', '2008-02-18 01:30:35', '1991-12-16 00:39:33', '1972-04-22 19:28:32');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('16', 'perspiciatis', 'Quo suscipit explicabo necessitatibus alias voluptas rerum illo. Voluptas voluptatem incidunt qui excepturi in est. Omnis qui et et aperiam recusandae sit. Optio explicabo in quam doloremque quidem vel.', '1', '16', '1995-07-23 15:17:10', '1985-02-15 22:37:51', '2011-09-14 06:13:08', '1983-02-27 04:17:27');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('17', 'nobis', 'Pariatur quia eaque ratione. Vel eligendi magnam velit voluptatem est aut. Illo autem beatae quia fuga asperiores ex. Dolore deserunt cumque ad cum.', '4', '17', '1993-03-26 22:26:47', '2000-08-17 19:03:50', '2009-06-30 17:55:40', '2017-09-30 23:36:58');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('18', 'voluptas', 'Saepe velit voluptatem pariatur aliquam omnis neque eaque. Ut omnis ut nihil et et. Molestias qui provident neque. Quia dolorem molestiae vel voluptates et.', '7', '18', '1998-10-21 17:23:18', '2004-02-08 03:07:51', '1991-07-21 09:27:08', '2005-04-18 09:45:21');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('19', 'provident', 'Autem est in amet ea pariatur molestiae. Molestiae non optio esse molestiae aspernatur. Sint sit autem vero eius enim autem.', '9', '19', '2010-07-16 06:03:23', '2003-04-18 04:21:07', '1992-10-20 03:53:34', '1992-06-23 09:38:21');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('20', 'voluptates', 'Doloremque aut dicta iure quos. Et beatae minima totam excepturi reprehenderit. Rerum laudantium ut enim mollitia a provident.', '1', '20', '2008-02-29 10:12:31', '1984-09-02 15:54:46', '2005-11-25 19:06:36', '1987-05-28 07:27:08');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('21', 'ut', 'Ut maiores laborum aut modi corrupti ex. Animi quia quo velit animi alias voluptatum rem tempore.', '7', '21', '1987-11-09 11:08:51', '1977-05-25 17:56:17', '2003-10-04 14:50:57', '1982-07-30 01:12:51');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('22', 'aperiam', 'Aut et tempora nihil fuga. Cum molestiae quis fuga maxime eos repellendus tenetur. Adipisci expedita rerum totam a libero. Ipsam ab voluptatem architecto doloribus voluptates dolore nam.', '3', '22', '1979-08-06 17:39:13', '1990-08-24 14:51:44', '1975-06-01 01:22:50', '2019-02-10 08:33:08');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('23', 'iste', 'Possimus beatae voluptatum a nihil expedita quo eos iste. Sit explicabo voluptates illo. Ducimus enim sunt maiores autem eaque harum ad dolore. Aut et est in suscipit cum.', '8', '23', '2004-07-04 03:09:25', '2017-03-25 08:54:56', '2000-12-19 04:59:30', '1993-02-05 00:29:19');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('24', 'voluptatem', 'Sapiente vitae dolor aut excepturi non voluptatibus. Totam voluptas sunt ullam.', '6', '24', '1982-01-13 10:12:38', '1994-09-14 05:38:02', '2004-10-29 14:31:07', '2000-06-07 01:18:08');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('25', 'reiciendis', 'Omnis ullam placeat excepturi in cupiditate. Provident fuga fugiat ab a. Et ipsam repudiandae nam dolorum et velit sint.', '2', '25', '1977-12-27 19:15:25', '1995-04-11 02:44:20', '1980-01-06 13:23:34', '2006-10-18 15:28:24');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('26', 'quia', 'Minima doloremque magnam ut id sint sit itaque. Quibusdam ipsum itaque et nihil. A odio consequuntur qui aliquam veritatis qui. Rerum quo quidem velit nostrum. Est vitae in unde itaque repellendus culpa voluptatem.', '4', '26', '1989-10-13 12:15:42', '1973-07-01 23:27:18', '2016-09-11 01:10:03', '2011-02-18 08:58:13');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('27', 'minus', 'Similique quia consequatur animi qui molestiae. Qui at aut in ex vel voluptatum. Neque et aut perferendis iure aut. Voluptatum voluptatum fugit debitis ut reiciendis.', '5', '27', '1998-09-25 17:13:01', '1982-07-10 02:59:47', '2008-05-28 03:37:10', '1994-07-11 14:45:22');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('28', 'aliquid', 'Non dicta et veniam autem. Vel mollitia officiis accusantium hic est consequatur.', '1', '28', '2017-04-14 15:08:33', '1998-11-23 15:47:21', '2003-09-18 12:50:47', '1970-10-31 03:39:04');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('29', 'rerum', 'Debitis a non pariatur tempore velit. Magni alias ipsa eum nesciunt voluptatem illum.', '4', '29', '1976-03-15 11:53:33', '1998-02-08 07:39:16', '1984-02-06 20:40:08', '2001-04-04 00:45:58');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('30', 'ipsa', 'Provident voluptatem officiis atque et culpa quo voluptatem. Harum omnis dolorem deserunt est. Vel expedita sequi eveniet non vel.', '2', '30', '2015-10-07 06:14:07', '1996-02-26 13:44:20', '1971-03-11 17:34:53', '1979-03-13 18:06:47');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('31', 'voluptate', 'Ab expedita iure nesciunt eum non magnam quam laudantium. Sunt eaque quo enim in dolore veniam dolores. Ullam neque sit occaecati possimus.', '4', '31', '1979-09-16 10:21:37', '1976-09-26 02:11:28', '1974-07-21 01:45:55', '1971-06-15 20:26:31');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('32', 'consequatur', 'Dolorum culpa qui commodi minus minus debitis. Enim et repellat cum dolorem veritatis provident ea. Ut impedit voluptates voluptates quo.', '8', '32', '1978-08-20 03:50:39', '1983-08-09 21:15:44', '2009-01-30 07:12:01', '1979-10-10 23:02:02');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('33', 'voluptate', 'Voluptatem doloribus ad ex voluptas maiores omnis placeat. Necessitatibus quia minima quos. Qui odit possimus qui nobis possimus quia. Ea sint eum beatae incidunt laboriosam rerum.', '1', '33', '1988-05-28 04:37:00', '1996-03-01 16:52:50', '1970-11-30 19:56:25', '1986-11-10 06:16:41');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('34', 'aliquid', 'Voluptate rem ut necessitatibus eaque aliquid dolor ex nemo. Atque impedit exercitationem aliquam sit.', '1', '34', '1988-07-02 19:22:33', '1975-04-01 04:59:55', '1987-06-07 02:38:48', '1981-03-24 13:17:34');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('35', 'quae', 'Sit quo consectetur vel dolorem aut nihil rerum. Dolor tenetur ipsam mollitia nobis est. Ut id accusamus est illum ut harum aut. Aut explicabo molestiae non doloremque accusantium.', '6', '35', '1974-06-20 15:27:51', '1992-03-05 22:07:55', '1980-01-15 07:11:06', '2004-07-08 03:21:45');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('36', 'in', 'Enim accusamus corrupti incidunt ut optio repellendus ab. Sequi quasi modi molestias sed. Corporis repellat voluptate qui sapiente similique blanditiis temporibus. Dolorem qui impedit placeat nobis aperiam assumenda.', '1', '36', '2002-07-31 14:19:28', '2013-08-05 23:14:53', '2009-07-04 16:43:50', '1983-10-25 06:22:20');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('37', 'neque', 'Alias quia earum quae totam qui explicabo qui. Harum possimus et quis. Est labore explicabo molestias a ullam. Ullam enim officiis molestias voluptatem animi voluptatibus omnis quisquam. Eos voluptas quod quae expedita quae quisquam repudiandae.', '1', '37', '2002-11-08 11:34:43', '1997-05-01 08:00:41', '1974-11-17 22:50:17', '2004-04-16 07:51:13');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('38', 'recusandae', 'Fugit tempora unde culpa maiores sunt sed impedit. Rem cumque vel harum sint soluta sapiente atque. Fugiat et cum vitae et quam.', '5', '38', '2003-08-19 13:27:45', '2008-01-21 07:16:22', '1992-07-13 10:58:42', '2006-02-03 03:54:41');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('39', 'sint', 'In doloribus occaecati quo sequi qui. Eos provident accusamus quod dolor praesentium officiis laudantium. Maiores sit illum voluptatem asperiores. Maiores quia illum ipsa est cupiditate praesentium perspiciatis unde.', '2', '39', '1995-01-31 03:04:32', '1990-11-01 15:33:50', '2001-08-29 13:38:55', '1975-10-29 08:24:45');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('40', 'est', 'Ipsam ex molestiae est. Voluptatibus eum in perspiciatis. Culpa natus omnis sapiente nisi at inventore quia. Doloremque quibusdam qui voluptates architecto labore praesentium.', '7', '40', '1984-07-12 22:34:06', '2003-08-11 18:43:47', '1991-06-15 08:46:12', '1991-01-13 23:33:09');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('41', 'eos', 'Atque omnis quam et autem. Natus aspernatur libero nostrum dicta. Optio sit sed vero consequatur rerum nobis.', '2', '41', '2004-10-07 23:20:42', '2012-11-05 03:16:15', '1999-05-12 19:22:59', '1987-03-16 00:07:41');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('42', 'harum', 'Voluptas adipisci amet in. In ut vel ad accusamus atque. A fugit voluptatem beatae maxime. Omnis et in quia corrupti repudiandae.', '9', '42', '2016-03-07 04:02:14', '2007-08-29 00:59:10', '2018-11-08 12:41:16', '1997-11-13 20:26:44');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('43', 'nihil', 'Assumenda atque delectus laborum id tenetur blanditiis. Dicta ad aperiam repellendus. Et architecto ut et cupiditate dolorum est. Consequatur fugit rerum placeat.', '4', '43', '2003-03-24 13:06:58', '1988-03-30 15:28:44', '2005-02-27 19:57:03', '1985-07-11 18:40:08');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('44', 'reprehenderit', 'Incidunt nulla cupiditate ex quo et. Saepe rerum ducimus beatae magni nesciunt omnis. Sed sed ea optio aut. Laborum iste itaque fugiat ipsum.', '6', '44', '2017-05-06 13:04:35', '1976-01-14 02:03:58', '1978-04-09 03:08:44', '2013-12-20 18:20:56');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('45', 'neque', 'Voluptas laborum fugiat et occaecati fuga molestiae et. Id vel at deserunt ipsum consequuntur eveniet. Et porro excepturi dolorum hic maxime mollitia. Incidunt recusandae nostrum ab quos maxime.', '3', '45', '1970-08-17 11:03:23', '1978-06-26 12:43:27', '1973-01-14 21:53:36', '1985-04-12 08:33:23');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('46', 'aliquid', 'Dolorem aperiam velit modi culpa est. Atque non magni quasi quos vel voluptatem. Ullam aut provident consectetur aut quas tempora.', '3', '46', '1991-02-20 09:22:19', '1984-05-26 10:59:41', '1986-10-23 18:11:20', '1999-12-05 16:25:25');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('47', 'temporibus', 'Et amet aliquid blanditiis assumenda aut qui. Sunt labore voluptas necessitatibus rerum. Nesciunt minima quo aspernatur esse porro.', '9', '47', '2000-02-20 05:34:28', '1987-03-18 14:24:22', '2018-09-11 13:29:35', '2010-08-01 01:09:02');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('48', 'eveniet', 'Modi aperiam cupiditate aliquam. At iusto atque voluptatem aliquid voluptate voluptatem. Ea occaecati exercitationem deleniti.', '7', '48', '1990-06-25 13:15:08', '1979-04-22 20:11:52', '2012-01-22 06:05:03', '2011-12-03 09:30:20');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('49', 'sunt', 'Animi nobis velit voluptatem error quo blanditiis nihil. Nam illum assumenda quod distinctio consequatur mollitia qui. Dolorem labore voluptatem quibusdam sunt officia et sed.', '8', '49', '1999-03-12 07:04:23', '2004-10-27 09:37:48', '1984-11-30 18:59:42', '1991-12-17 02:39:46');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('50', 'et', 'Consequatur commodi non exercitationem consequatur sunt. Soluta et neque ipsa. Aliquid ut hic nihil sit. Qui aliquam ex est. Dolor placeat veniam molestiae cumque suscipit error.', '1', '50', '1985-04-06 21:11:08', '2015-02-04 11:53:50', '1978-12-05 19:34:14', '1986-11-20 00:26:14');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('51', 'sequi', 'Consequatur dicta quia est voluptatem maiores. Eum eligendi architecto alias dolorem. Quaerat ipsa sapiente consequuntur recusandae est officia.', '8', '51', '1971-09-25 19:13:13', '1982-09-20 21:57:50', '2000-10-18 10:33:52', '1972-08-17 11:41:33');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('52', 'harum', 'Laudantium iste ut ea in recusandae. Fuga ad illo hic dicta perspiciatis soluta.', '1', '52', '2007-05-05 23:19:52', '2018-05-31 20:59:42', '1976-07-14 22:44:25', '2014-04-20 18:53:08');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('53', 'modi', 'Facilis modi aut excepturi in pariatur et facilis. Tempore fugit sit asperiores dolor ducimus enim labore id. Sed harum quas tenetur maiores dolor iure unde.', '2', '53', '1985-06-07 12:02:46', '2014-12-19 21:07:56', '1993-07-12 07:03:46', '1986-03-25 04:09:02');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('54', 'repellendus', 'Architecto minima sequi quis aut cumque molestias similique. Inventore quia rerum sint porro a et laborum. Iure sit aut adipisci. Sequi molestias dolorem sint omnis repellendus voluptas.', '6', '54', '1971-04-19 08:36:08', '2015-05-30 16:30:57', '1987-07-15 04:32:50', '2004-05-04 16:13:30');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('55', 'odit', 'Laudantium officiis soluta dolores vel et aspernatur perspiciatis. Ipsa est voluptatum quasi perferendis quis molestiae temporibus. Nobis voluptas mollitia et animi unde magnam.', '5', '55', '1971-07-11 17:31:39', '1976-12-01 21:38:23', '2009-09-04 11:29:29', '2011-10-02 16:27:36');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('56', 'nemo', 'Reiciendis esse dicta modi veniam eligendi earum architecto velit. Doloribus rerum eum odit numquam accusamus expedita.', '3', '56', '1985-01-07 12:41:40', '2017-09-05 13:56:36', '1971-08-24 23:37:58', '1974-01-16 07:35:33');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('57', 'accusamus', 'Mollitia voluptas placeat reprehenderit vel nisi inventore. Blanditiis similique eveniet sint id ut animi. Magnam inventore qui dolore beatae rerum sed ullam.', '4', '57', '2011-04-19 08:47:32', '1979-05-05 17:56:28', '1987-04-18 21:03:50', '1994-11-03 13:02:43');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('58', 'aspernatur', 'Aut et deserunt minima excepturi velit nam. At rerum explicabo velit officia pariatur. Quia magnam veritatis quam.', '6', '58', '2006-02-17 21:41:02', '2017-10-15 02:07:54', '2002-01-27 14:11:50', '1972-11-15 05:16:45');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('59', 'facilis', 'Minus eaque vel aut facere doloremque voluptates. Cupiditate dolores autem voluptatem itaque a et. Eos facere beatae qui maiores.', '5', '59', '1993-05-03 11:14:52', '1982-01-18 06:36:12', '1998-06-13 23:13:06', '1989-06-30 10:22:04');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('60', 'magni', 'Incidunt velit praesentium sit ut sed eos ullam. Quo consequuntur facere atque velit delectus. A minus similique laborum et eveniet.', '3', '60', '1991-05-07 18:14:36', '1996-04-07 00:43:20', '1993-07-29 17:17:29', '1979-03-03 10:29:31');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('61', 'illum', 'Ipsum tempora nostrum at iure. Molestias nihil dicta qui maiores sequi molestias est. Recusandae quaerat amet quia laudantium et accusantium sed aliquid. Hic facere non minus aut. A consectetur et autem et non mollitia necessitatibus ea.', '1', '61', '1972-02-21 08:35:15', '2014-12-18 10:54:01', '2002-05-10 18:34:42', '2018-03-14 04:12:59');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('62', 'aperiam', 'Et illo ullam et reprehenderit blanditiis. Laudantium nostrum aliquam nihil distinctio labore. Eos pariatur quaerat nobis blanditiis.', '8', '62', '2007-05-29 06:08:58', '1999-02-20 19:11:02', '1999-11-01 15:41:19', '2015-08-07 15:40:59');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('63', 'a', 'Autem quaerat quidem ea velit officiis voluptatem aut. Dolorum aspernatur est molestiae rem. Natus harum quos praesentium rerum. Iste perferendis incidunt voluptatem omnis dolorum et deleniti dignissimos.', '6', '63', '1998-09-30 10:32:56', '2018-10-08 05:29:36', '1974-10-22 09:46:31', '1985-07-05 10:21:12');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('64', 'voluptas', 'Earum reprehenderit voluptas nam laborum nihil inventore sunt. Odit necessitatibus dolorem nihil ut nam temporibus et. Dolor molestiae voluptates ullam sed atque.', '1', '64', '2014-08-31 00:54:21', '1973-07-29 12:28:34', '2014-06-15 04:17:11', '2013-10-01 09:25:33');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('65', 'a', 'Neque ipsam omnis debitis omnis et quibusdam. Ad consequuntur doloribus harum sed corporis perferendis eligendi eos. Sapiente fugiat fuga deleniti quia qui consequatur unde. Impedit autem maxime et fugit. Sint ut qui ratione hic.', '5', '65', '2017-04-28 05:52:08', '1985-05-10 14:26:55', '2006-09-18 19:20:45', '2014-01-16 16:05:35');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('66', 'aut', 'Occaecati est consequatur tenetur totam modi hic sed occaecati. Non voluptatum eligendi quasi expedita quae et dolorem. Esse est ea et dolores. Harum voluptate fugiat vel.', '1', '66', '2001-06-19 01:34:54', '1972-01-20 17:10:48', '2012-09-12 20:29:51', '2014-04-21 22:07:11');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('67', 'id', 'Et aut maxime accusantium culpa vel explicabo in. Et et labore et at et. Doloremque voluptatibus doloribus sint velit molestiae minus non dicta. Est cupiditate aut harum sunt ratione voluptatem aliquam.', '7', '67', '1988-04-16 06:29:55', '2006-06-04 12:04:53', '1999-04-16 20:46:52', '1973-06-22 05:55:21');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('68', 'exercitationem', 'Et dolores facilis enim officia sequi sit. Eius perferendis ut delectus vel. Consequuntur architecto fugiat tempore qui.', '6', '68', '1998-03-18 13:36:39', '2009-02-09 01:29:51', '1987-11-28 02:55:54', '2004-10-07 03:05:03');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('69', 'eaque', 'Deserunt debitis ut maxime aspernatur et eos deserunt. Et autem est neque dolorem. Quos et quis nisi dolorem aut distinctio. Dolor ullam vel eum aut.', '2', '69', '1982-01-05 12:28:06', '2012-12-26 02:40:07', '2000-01-07 10:14:41', '2019-07-28 00:40:46');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('70', 'quisquam', 'Ipsum voluptates nemo at voluptatem cupiditate inventore. Similique ut accusantium voluptatem veritatis qui excepturi id. Eligendi tempore voluptatem enim voluptatem. Aliquam architecto voluptas asperiores illo nesciunt.', '1', '70', '2014-07-20 12:11:41', '1980-02-16 03:35:45', '1988-01-21 20:53:54', '2000-02-26 09:37:33');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('71', 'quibusdam', 'Nihil qui vel et. Voluptatum quaerat in similique sit maiores. Sint id qui voluptatem voluptas. Doloribus voluptas vero libero quis.', '9', '71', '1992-04-15 04:02:32', '1983-02-01 21:26:12', '2015-01-11 16:28:44', '2006-05-15 00:07:56');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('72', 'voluptatibus', 'Omnis veritatis esse quia dolores. Sunt enim laboriosam non rem qui est. Omnis eveniet corrupti rerum quia officia consectetur est. Qui doloremque autem distinctio quibusdam quis veritatis.', '1', '72', '2002-08-06 23:48:10', '1997-11-14 17:56:17', '1970-04-28 18:24:58', '2000-06-13 03:35:46');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('73', 'aut', 'Aliquam sint ab quod fugiat et. Non officiis voluptate eligendi libero repellendus ea accusantium. Voluptatem velit mollitia et qui blanditiis. Labore enim porro natus non.', '7', '73', '1997-12-20 18:43:26', '1991-07-13 15:44:03', '2012-07-22 14:31:15', '1997-11-30 02:25:40');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('74', 'quis', 'Sunt nam tempora sequi. Qui neque omnis dolor architecto excepturi. Et vel magnam consequatur. Omnis ea dicta ullam accusamus praesentium labore magni molestiae.', '3', '74', '2018-07-14 07:31:44', '1989-10-16 13:43:55', '2003-05-21 17:16:09', '1982-06-27 18:23:55');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('75', 'excepturi', 'Eligendi sed et pariatur libero. Quam debitis necessitatibus assumenda nulla. Minus minus nihil dolorum et rem dicta. Libero rerum fugit maxime veniam qui et doloremque. Quaerat suscipit ratione doloribus.', '9', '75', '2020-05-26 04:44:52', '2001-11-19 14:53:53', '1975-06-10 13:31:01', '1995-01-26 23:43:00');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('76', 'ut', 'Et est similique necessitatibus eligendi voluptate rerum a nulla. Tempora voluptatum in dolorem sed dolor. Qui ea repudiandae qui. Eaque qui nihil voluptas est.', '2', '76', '2005-03-24 18:21:15', '1985-03-27 10:39:41', '2006-10-31 04:52:17', '1983-04-08 19:04:04');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('77', 'autem', 'Recusandae sequi dicta facere delectus ut quia sequi. Dolor ut sit vel quo et qui. Sit occaecati est quasi voluptatum animi commodi.', '5', '77', '1971-02-13 13:35:10', '1999-08-25 15:17:42', '1999-01-01 09:20:21', '2005-07-24 10:20:06');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('78', 'animi', 'Exercitationem enim aut in. Et tempore quis et. Et cumque molestias iure dolorem sit ipsum ut dolores.', '7', '78', '2019-05-16 12:26:15', '2000-07-24 22:55:06', '1971-05-25 00:52:12', '1987-06-21 11:51:05');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('79', 'reiciendis', 'Quod quo quas voluptatem voluptas repellat ut fuga adipisci. Sit eligendi repellat voluptas nostrum ipsa non adipisci quaerat.', '3', '79', '1980-04-29 04:27:59', '1980-06-20 05:49:34', '1970-03-09 07:00:27', '2000-07-03 04:51:20');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('80', 'sequi', 'Voluptatem accusantium assumenda omnis velit velit maiores. Nemo ea qui ipsam eligendi aut sunt. Pariatur odio animi quaerat sequi minima iusto incidunt.', '4', '80', '1977-12-24 10:40:08', '2004-08-26 01:33:40', '2004-01-10 16:23:43', '1985-08-02 15:09:34');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('81', 'fugit', 'Distinctio sed aliquam provident commodi nihil quia. Vel ut dolorum sint molestiae molestias. Inventore ipsam ut necessitatibus optio voluptates nihil. Excepturi maiores et non expedita et accusamus. Esse ea quaerat veniam deleniti aut id.', '4', '81', '1995-12-22 10:17:50', '1979-11-11 07:32:47', '2011-01-16 00:09:21', '1999-03-05 08:22:58');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('82', 'accusantium', 'Ab consequatur magni dolor. Hic voluptas nostrum soluta culpa officiis repudiandae. Dolorem nemo inventore a vel delectus quam ea. Soluta itaque itaque qui nulla aut voluptatem blanditiis.', '5', '82', '2015-06-19 08:26:16', '2016-03-20 10:37:42', '1979-12-02 23:24:40', '1986-10-28 01:47:48');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('83', 'dolores', 'Sapiente repellendus consectetur velit distinctio quas quae. Consequuntur dolorem a et illo sit.', '4', '83', '1975-08-21 10:40:11', '1980-12-02 21:42:29', '2010-08-27 20:31:22', '1992-02-03 22:06:44');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('84', 'et', 'Saepe officia velit et sed distinctio delectus. Laudantium perferendis qui numquam consequuntur. Exercitationem et architecto sit non qui.', '7', '84', '2004-06-13 04:32:51', '1993-02-07 16:22:15', '1973-08-06 12:06:17', '2007-01-03 05:19:47');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('85', 'eos', 'Eveniet blanditiis est illum libero rerum nulla libero. Eius corrupti qui quod recusandae magni ex. Voluptates quia et odio quam enim nam sunt. Rem consequatur odio quam dolores debitis suscipit eaque error.', '8', '85', '2002-05-11 19:14:58', '1977-03-06 13:04:20', '1982-03-12 04:39:26', '1997-10-02 00:15:46');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('86', 'vel', 'Sint fugiat quam voluptatibus velit ratione. Voluptates quasi rerum consequatur aliquam. Commodi unde rerum assumenda. Vel iste quia sit non eum pariatur ea. Sunt corporis et corporis pariatur.', '2', '86', '2016-10-08 00:11:30', '2018-11-20 08:08:54', '2003-07-20 13:17:22', '1989-04-05 18:47:40');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('87', 'molestias', 'Odio corrupti voluptatum sed omnis. Cumque qui porro ea beatae eligendi. Animi laboriosam quis animi.', '9', '87', '1987-11-18 05:22:35', '1971-09-18 21:47:57', '2000-02-17 23:14:48', '1970-06-11 18:46:22');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('88', 'eligendi', 'Ut provident excepturi minima sunt. Et occaecati veniam quibusdam maxime accusantium maxime. Rerum blanditiis est vitae voluptatem.', '6', '88', '1980-11-13 14:41:16', '2006-09-04 00:46:27', '1981-03-04 07:05:57', '1983-06-22 14:40:54');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('89', 'doloremque', 'Voluptate necessitatibus velit beatae magni expedita. Iusto voluptatum numquam culpa. Ea nemo enim sapiente doloribus.', '2', '89', '2017-10-12 20:35:36', '1971-05-05 20:33:01', '2006-12-28 20:18:49', '1987-03-05 13:18:04');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('90', 'et', 'Dolor ab voluptatum sequi dolores ad. Est magnam iure sit molestiae quo quo maxime. Voluptatem quia eos ut et perspiciatis velit fugiat.', '1', '90', '2010-07-28 00:43:52', '1981-02-09 16:17:10', '1998-07-22 06:29:57', '1997-12-08 11:29:17');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('91', 'illum', 'Corporis vel necessitatibus illo quis sequi maiores non adipisci. Quis ut quidem dolorem voluptate odio ab. Dicta deleniti ut ea cum alias consequatur accusamus. Unde tempore dolores enim nihil delectus in praesentium.', '9', '91', '1985-05-21 02:28:14', '2009-05-26 05:47:50', '2002-02-09 14:39:58', '2012-07-08 22:28:39');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('92', 'quia', 'Sed tenetur id in omnis est. Aspernatur non reiciendis vitae ducimus voluptatem modi. Nisi totam dolorem sed eius quidem sed. Dolorem voluptate dignissimos sunt dolores libero autem rerum.', '5', '92', '1998-10-20 17:08:23', '2011-07-22 17:50:04', '2009-01-04 02:23:22', '1985-12-22 17:55:53');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('93', 'non', 'Incidunt voluptas reprehenderit minima quia. Dolores sed recusandae blanditiis maxime assumenda. Et sunt necessitatibus quia asperiores quae doloremque quidem. Voluptatem sunt molestiae vel et.', '3', '93', '1976-07-18 16:34:16', '1996-07-19 21:33:23', '1973-07-11 10:35:21', '1996-12-19 12:55:12');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('94', 'sint', 'Voluptatem aut cum molestias ipsam non. Sunt odit aut magnam quo nesciunt ipsum voluptatem qui.', '7', '94', '2019-06-27 06:39:15', '2009-01-04 02:27:16', '1973-07-27 16:54:42', '1992-01-15 15:48:01');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('95', 'omnis', 'Rerum aut sunt non qui. Provident veritatis sit qui reprehenderit ut. Aspernatur qui voluptas distinctio sed.', '1', '95', '1976-08-04 08:57:28', '2010-09-02 22:50:05', '1976-03-16 05:53:50', '1984-09-03 15:09:29');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('96', 'eius', 'Et esse amet velit sed recusandae impedit. Porro deleniti quasi fugit rem sunt odio. Aut expedita eligendi quod odio velit.', '8', '96', '1972-06-06 14:52:13', '1999-04-26 19:50:36', '1996-10-29 22:20:14', '2009-10-23 19:43:12');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('97', 'voluptatibus', 'Aut magni exercitationem dolores in. Eligendi iure non id sapiente eum error. Non blanditiis ut dolores eveniet ipsa laborum repellendus.', '1', '97', '1992-04-24 00:18:51', '1975-10-02 06:19:56', '2017-12-31 22:16:48', '2008-05-04 19:47:12');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('98', 'libero', 'Unde et quisquam aut similique suscipit non. Quasi dolorum qui eum ea. Maxime exercitationem et veniam et distinctio. Odio quaerat voluptatem numquam tenetur consequuntur cum.', '6', '98', '2014-01-15 17:04:30', '1983-10-19 07:38:41', '1985-10-14 11:49:41', '2008-02-02 02:58:52');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('99', 'dicta', 'Omnis cupiditate aut culpa totam. Quia illo corrupti nesciunt. Inventore sunt dolor accusamus omnis est aliquam. Quidem iste non fugit quo.', '3', '99', '1984-10-29 01:06:46', '1991-10-18 09:09:17', '1990-01-02 08:18:45', '2015-07-29 06:39:54');
INSERT INTO `stocks` (`id`, `name`, `description`, `discount`, `product_id`, `finished_at`, `started_at`, `created_at`, `updated_at`) VALUES ('100', 'ipsum', 'Et beatae qui aut adipisci et est magnam. Accusantium incidunt quia doloribus est est et alias. Doloremque deserunt odit voluptas error qui fuga et.', '9', '100', '2015-10-08 00:28:29', '1997-11-08 09:13:20', '2019-09-12 04:12:52', '2014-01-14 00:13:19');


#
# TABLE STRUCTURE FOR: storehouses
#

DROP TABLE IF EXISTS `storehouses`;

CREATE TABLE `storehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_idx` (`product_id`),
  KEY `storehouse_name_idx` (`name`),
  CONSTRAINT `storehouses_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('1', 'aut', '1', '1995-06-01 16:49:55', '2005-11-20 18:07:01');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('2', 'et', '2', '2016-03-29 02:52:45', '2015-07-25 21:10:16');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('3', 'et', '3', '1978-04-12 10:17:32', '2005-04-22 00:58:54');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('4', 'qui', '4', '1994-04-07 23:10:49', '2003-09-30 01:10:54');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('5', 'sed', '5', '1971-08-08 05:38:08', '1990-07-06 05:13:55');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('6', 'ullam', '6', '1996-11-23 15:16:30', '1982-05-16 15:05:00');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('7', 'voluptatem', '7', '1994-02-26 10:35:22', '1981-02-22 07:09:51');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('8', 'numquam', '8', '2000-02-14 14:13:00', '1974-02-07 00:09:47');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('9', 'voluptatem', '9', '1993-03-20 03:54:31', '1986-12-25 04:36:00');
INSERT INTO `storehouses` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES ('10', 'facere', '10', '1985-01-19 05:21:44', '2011-01-23 09:29:24');


#
# TABLE STRUCTURE FOR: storehouses_product
#

DROP TABLE IF EXISTS `storehouses_product`;

CREATE TABLE `storehouses_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `storehouse_id` bigint(20) unsigned NOT NULL,
  `value` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `storehouse_id` (`storehouse_id`),
  CONSTRAINT `storehouses_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `storehouses_product_ibfk_2` FOREIGN KEY (`storehouse_id`) REFERENCES `storehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('1', '1', '1', NULL, '2002-05-09 18:52:39', '2009-06-24 19:17:56');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('2', '2', '2', NULL, '2014-10-28 06:27:36', '2015-06-22 09:29:38');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('3', '3', '3', NULL, '2003-07-12 17:16:53', '2017-04-17 08:01:48');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('4', '4', '4', NULL, '1995-06-18 09:33:44', '2002-04-01 13:34:01');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('5', '5', '5', NULL, '2010-12-13 12:38:23', '1993-07-13 11:54:28');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('6', '6', '6', NULL, '2007-01-12 05:52:48', '2001-04-23 00:46:06');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('7', '7', '7', NULL, '2003-12-14 07:37:19', '2006-02-27 03:50:07');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('8', '8', '8', NULL, '1973-04-22 10:51:12', '1984-08-15 14:07:37');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('9', '9', '9', NULL, '2014-04-25 16:49:38', '1981-11-26 00:57:57');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('10', '10', '10', NULL, '2018-07-25 15:38:21', '1989-02-17 21:33:15');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('11', '11', '1', NULL, '2013-10-10 20:30:33', '2017-01-27 06:51:59');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('12', '12', '2', NULL, '2010-11-09 09:52:06', '1986-08-16 08:26:43');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('13', '13', '3', NULL, '2004-02-13 22:37:46', '1976-06-24 14:09:07');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('14', '14', '4', NULL, '2012-07-20 15:29:35', '1991-07-27 01:40:50');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('15', '15', '5', NULL, '1980-09-05 04:13:41', '2004-05-18 16:32:26');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('16', '16', '6', NULL, '1990-01-12 01:09:27', '1971-12-19 18:16:47');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('17', '17', '7', NULL, '2010-08-23 02:19:29', '2005-11-30 05:55:14');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('18', '18', '8', NULL, '2015-04-30 15:38:08', '1992-12-12 08:45:46');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('19', '19', '9', NULL, '2000-09-26 15:49:30', '1998-06-21 23:22:37');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('20', '20', '10', NULL, '1970-01-16 11:08:24', '1971-03-06 05:14:57');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('21', '21', '1', NULL, '2016-03-29 19:34:44', '2017-08-28 02:34:18');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('22', '22', '2', NULL, '1988-09-30 03:50:59', '1991-11-26 17:07:47');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('23', '23', '3', NULL, '1991-02-02 20:26:52', '2007-02-19 01:56:36');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('24', '24', '4', NULL, '2015-07-13 19:49:06', '1990-11-25 22:16:19');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('25', '25', '5', NULL, '2000-03-20 00:08:56', '2009-05-06 04:34:30');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('26', '26', '6', NULL, '1978-03-11 14:02:06', '1975-04-08 20:31:30');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('27', '27', '7', NULL, '1992-01-25 00:21:37', '1972-06-12 06:00:44');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('28', '28', '8', NULL, '1983-11-27 07:02:12', '1997-08-11 20:18:46');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('29', '29', '9', NULL, '1970-10-02 14:09:26', '1983-10-05 05:21:16');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('30', '30', '10', NULL, '2019-04-09 12:16:30', '2013-07-15 15:24:13');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('31', '31', '1', NULL, '1998-08-10 03:31:23', '1986-09-10 21:20:43');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('32', '32', '2', NULL, '2007-11-05 11:56:31', '1983-12-11 16:59:40');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('33', '33', '3', NULL, '2019-04-16 13:30:33', '1985-06-23 11:20:55');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('34', '34', '4', NULL, '1987-10-07 12:39:58', '1976-06-06 01:16:23');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('35', '35', '5', NULL, '1991-07-17 07:14:43', '1977-04-05 15:41:13');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('36', '36', '6', NULL, '1997-08-18 11:22:54', '1987-05-10 12:23:25');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('37', '37', '7', NULL, '1987-08-17 02:26:09', '1974-02-28 19:48:28');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('38', '38', '8', NULL, '2012-07-19 05:41:15', '1994-11-10 09:07:46');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('39', '39', '9', NULL, '1977-06-14 14:10:07', '1975-11-30 10:21:51');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('40', '40', '10', NULL, '2017-09-29 12:49:25', '1992-12-11 13:43:57');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('41', '41', '1', NULL, '2005-04-07 00:47:18', '1975-01-25 20:20:22');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('42', '42', '2', NULL, '2014-05-11 07:04:38', '2000-02-29 04:00:08');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('43', '43', '3', NULL, '1997-10-29 22:19:21', '2005-01-14 02:45:48');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('44', '44', '4', NULL, '2019-05-09 21:55:31', '2019-06-01 09:37:39');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('45', '45', '5', NULL, '1986-07-15 06:15:25', '1996-05-01 20:28:08');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('46', '46', '6', NULL, '2010-04-05 03:59:41', '2017-08-17 01:02:54');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('47', '47', '7', NULL, '2013-06-03 01:11:58', '2008-04-13 12:24:09');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('48', '48', '8', NULL, '2015-12-27 20:09:18', '1972-01-27 02:18:44');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('49', '49', '9', NULL, '1973-06-25 13:30:54', '2002-07-15 05:30:30');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('50', '50', '10', NULL, '2007-03-30 09:42:55', '1974-07-04 12:21:41');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('51', '51', '1', NULL, '2004-11-07 10:09:05', '1999-02-08 23:48:15');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('52', '52', '2', NULL, '2011-11-28 23:43:27', '2008-11-29 03:01:05');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('53', '53', '3', NULL, '2011-03-18 22:04:36', '1979-07-03 12:19:38');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('54', '54', '4', NULL, '1978-07-03 18:16:52', '2000-10-13 10:39:09');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('55', '55', '5', NULL, '2016-08-10 20:11:53', '1997-12-09 14:10:11');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('56', '56', '6', NULL, '1971-02-07 10:56:43', '1996-12-12 10:14:30');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('57', '57', '7', NULL, '2019-08-07 22:20:43', '2012-04-22 05:12:00');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('58', '58', '8', NULL, '1990-10-14 01:35:36', '2002-08-05 05:11:55');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('59', '59', '9', NULL, '2017-10-24 23:59:27', '2003-06-14 12:07:57');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('60', '60', '10', NULL, '1994-04-03 20:03:10', '1978-01-21 09:27:36');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('61', '61', '1', NULL, '2008-12-06 02:05:59', '2013-12-15 10:57:42');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('62', '62', '2', NULL, '1997-11-15 11:59:41', '2011-06-16 01:05:28');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('63', '63', '3', NULL, '2000-01-14 15:41:16', '1974-12-18 23:43:18');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('64', '64', '4', NULL, '1982-06-19 17:22:04', '1991-04-03 23:30:35');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('65', '65', '5', NULL, '1985-01-25 15:57:35', '2019-08-09 05:57:51');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('66', '66', '6', NULL, '1991-03-14 16:14:00', '2007-08-09 18:24:36');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('67', '67', '7', NULL, '1987-01-05 19:33:24', '1971-06-04 12:08:24');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('68', '68', '8', NULL, '1997-02-06 00:13:08', '1985-01-10 11:40:06');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('69', '69', '9', NULL, '2006-11-22 01:11:57', '2019-01-11 12:56:34');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('70', '70', '10', NULL, '1983-05-13 20:14:33', '1973-06-21 19:34:17');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('71', '71', '1', NULL, '1977-12-25 17:22:52', '2000-11-11 22:03:53');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('72', '72', '2', NULL, '2005-06-23 18:48:33', '2020-05-27 23:46:45');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('73', '73', '3', NULL, '1985-04-23 23:11:00', '1990-10-20 20:30:22');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('74', '74', '4', NULL, '2019-06-02 21:26:06', '2009-01-03 19:34:27');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('75', '75', '5', NULL, '2007-04-02 20:29:49', '2010-11-08 00:44:16');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('76', '76', '6', NULL, '2002-08-22 21:45:40', '1992-10-09 14:18:07');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('77', '77', '7', NULL, '2012-09-14 01:03:33', '1973-07-11 15:41:22');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('78', '78', '8', NULL, '1970-03-12 22:21:07', '1985-11-09 04:45:12');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('79', '79', '9', NULL, '1983-07-29 22:54:45', '2008-08-02 03:01:38');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('80', '80', '10', NULL, '2005-09-05 17:59:03', '1986-11-17 03:21:10');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('81', '81', '1', NULL, '1970-08-27 17:31:32', '1998-07-22 03:32:59');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('82', '82', '2', NULL, '2003-01-16 04:24:12', '1993-11-12 08:05:29');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('83', '83', '3', NULL, '1997-02-27 03:38:39', '2009-11-29 21:30:11');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('84', '84', '4', NULL, '1975-10-30 05:34:34', '1980-10-29 03:16:09');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('85', '85', '5', NULL, '1975-03-19 11:42:01', '1989-04-23 01:15:08');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('86', '86', '6', NULL, '1997-04-10 19:31:23', '2002-06-18 15:45:16');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('87', '87', '7', NULL, '2014-09-05 09:52:28', '1971-05-27 22:03:21');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('88', '88', '8', NULL, '1996-03-21 20:23:25', '1995-12-05 12:59:55');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('89', '89', '9', NULL, '2000-06-08 09:04:58', '2008-02-18 15:18:21');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('90', '90', '10', NULL, '1983-04-03 14:48:28', '1974-12-05 22:49:27');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('91', '91', '1', NULL, '2014-02-14 04:28:05', '1986-06-28 01:33:42');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('92', '92', '2', NULL, '1993-05-09 16:10:15', '2013-05-12 19:37:10');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('93', '93', '3', NULL, '1986-10-26 13:04:13', '1993-10-07 05:59:51');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('94', '94', '4', NULL, '1987-10-10 00:57:12', '1978-11-03 21:42:47');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('95', '95', '5', NULL, '2019-08-18 01:42:32', '1988-11-03 09:30:31');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('96', '96', '6', NULL, '1980-09-14 14:11:02', '1973-12-01 02:04:03');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('97', '97', '7', NULL, '2018-08-19 23:56:37', '2004-11-11 15:23:24');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('98', '98', '8', NULL, '2004-06-14 02:19:00', '1990-04-09 23:03:40');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('99', '99', '9', NULL, '1975-03-13 07:51:49', '1993-03-01 00:06:42');
INSERT INTO `storehouses_product` (`id`, `product_id`, `storehouse_id`, `value`, `created_at`, `updated_at`) VALUES ('100', '100', '10', NULL, '2004-12-31 19:24:45', '1976-05-03 22:57:39');


