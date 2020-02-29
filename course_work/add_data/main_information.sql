#
# TABLE STRUCTURE FOR: main_information
#

DROP TABLE IF EXISTS `main_information`;

CREATE TABLE `main_information` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `status` enum('simplified','standart','confirmed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `children` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `children` (`children`),
  CONSTRAINT `main_information_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `main_information_ibfk_2` FOREIGN KEY (`children`) REFERENCES `children` (`binding_code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `main_information` (`user_id`, `gender`, `birthday`, `status`, `citizenship`, `created_at`, `updated_at`, `children`) VALUES 
('1', 'm', '2017-11-07', 'simplified', NULL, '2012-01-14 19:32:07', '2011-12-22 10:14:10', NULL),
('2', 'm', '1970-03-30', 'simplified', NULL, '1997-01-17 02:12:55', '1985-08-11 15:18:05', NULL),
('3', 'f', '1985-05-25', 'simplified', NULL, '2014-02-16 04:12:54', '1995-02-22 12:11:19', NULL),
('4', 'f', '1992-06-11', 'simplified', NULL, '1974-09-11 16:48:40', '1975-11-09 04:43:29', NULL),
('5', 'm', '1984-01-08', 'simplified', NULL, '2001-07-29 02:36:54', '1990-11-23 03:05:23', NULL),
('6', 'm', '2008-07-22', 'simplified', NULL, '1987-11-29 21:17:03', '1988-12-25 00:15:12', NULL),
('7', 'f', '1990-01-11', 'simplified', NULL, '1983-04-19 09:34:04', '1995-08-03 02:34:06', NULL),
('8', 'f', '1980-11-11', 'simplified', NULL, '2001-03-12 09:20:17', '2000-04-16 00:08:03', NULL),
('9', 'm', '1970-05-10', 'simplified', NULL, '1994-09-23 05:05:20', '1982-01-16 19:10:40', NULL),
('10', 'm', '2005-09-19', 'standart', NULL, '2008-09-29 06:04:53', '1993-12-17 21:50:40', NULL);