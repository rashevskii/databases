#
# TABLE STRUCTURE FOR: children
#

DROP TABLE IF EXISTS `children`;

CREATE TABLE `children` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `patronymic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `binding_code` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `binding_code` (`binding_code`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `children` VALUES 
 	('1', '����', '���������', '��������', 'f', '2008-10-05', '0'),
	('2', '�����', '��������', '���������', 'f', '2008-10-05', '3568455'),
	('3', '�����', '��������', '��������', 'f', '2008-10-05', '4465028'),
	('4', '�����', '��������', '����������', 'f', '2008-10-05', '1043221'),
	('5', '�����', '��������', '��������', 'f', '2008-10-05', '1464607'),
	('6', '�����', '��������', '����������', 'f', '2008-10-05', '9071129'),
	('7', '�����', '��������', '����������', 'f', '2008-10-05', '2298655'),
	('8', '������', '������', '���������', 'm', '2008-10-05', '7835216'),
	('9', '������', '������', '���������', 'm', '2008-10-05', '3530954'),
	('10', '������', '������', '���������', 'm', '2008-10-05', '8949726');
