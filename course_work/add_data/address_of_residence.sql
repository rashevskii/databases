#
# TABLE STRUCTURE FOR: address_of_residence
#

DROP TABLE IF EXISTS `address_of_residence`;

CREATE TABLE `address_of_residence` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` int(11) DEFAULT NULL,
  `sub_building` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `address_of_residence_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `address_of_residence` VALUES 
	('1', 'Россия', 'Московская область', 'Москва', 'Фрунзе', 151, NULL, 1),
	('2', 'Россия', 'Московская область', 'Москва', 'Забелина', 11, NULL, 10),
	('3', 'Россия', 'Московская область', 'Москва', 'Заветная', 88, NULL, 134),
	('4', 'Россия', 'Самарская область', 'Самара', 'Ленинская', 151, NULL, 1),
	('5', 'Россия', 'Самарская область', 'Самара', 'Самарская', 55, NULL, 50),
	('6', 'Казахстан', 'Алматинская область', 'Алмата', 'Фрунзе', 16, NULL, 154),
	('7', 'Россия', 'Пензенская область', 'Пенза', 'Фрунзе', 98, NULL, 101),
	('8', 'Россия', 'Пензенская область', 'Пенза', 'Вавилова', 241, NULL, 135),
	('9', 'Россия', 'Саратовская область', 'Саратов', 'Ленинская', 251, NULL, 40),
	('10', 'Россия', 'Саратовская область', 'Саратов', 'Фрунзе', 200, NULL, 1);


