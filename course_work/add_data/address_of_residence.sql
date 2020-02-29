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
	('1', '������', '���������� �������', '������', '������', 151, NULL, 1),
	('2', '������', '���������� �������', '������', '��������', 11, NULL, 10),
	('3', '������', '���������� �������', '������', '��������', 88, NULL, 134),
	('4', '������', '��������� �������', '������', '���������', 151, NULL, 1),
	('5', '������', '��������� �������', '������', '���������', 55, NULL, 50),
	('6', '���������', '����������� �������', '������', '������', 16, NULL, 154),
	('7', '������', '���������� �������', '�����', '������', 98, NULL, 101),
	('8', '������', '���������� �������', '�����', '��������', 241, NULL, 135),
	('9', '������', '����������� �������', '�������', '���������', 251, NULL, 40),
	('10', '������', '����������� �������', '�������', '������', 200, NULL, 1);


