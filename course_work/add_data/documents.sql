-- Generation time: Thu, 27 Feb 2020 10:18:48 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `serial_number` bigint unsigned not null unique,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type_of_document` bigint(20) unsigned NOT NULL,
  `date_of_issue` date NOT NULL,
  `validity` date DEFAULT NULL,
  `place_of_issue` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  foreign key (`type_of_document`) references `type_of_documents`(`id`)
	on update cascade
	on delete restrict,
	foreign key (`user_id`) references `users`(`id`)
	on update cascade
	on delete restrict
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `documents` VALUES 
('1','1','12345','������������� � ��������','4','2005-07-21',NULL,'���� ���������� ������ �.������'),
('2','2','67890','�����','2','1998-04-22',NULL,'���������� ����'),
('3','3','58794','����� ������������� ������������ �����������','6','2016-08-15','2019-11-07','��������� ��������'),
('4','4','17534','�����','2','2007-11-27',NULL,'���������� ����'),
('5','5','36741','������� �����','8','2011-07-22',NULL,'������� ����������'),
('6','6','10547','�����','2','2015-04-16',NULL,'���������� ����'),
('7','7','30254','������������ �������������','5','2015-02-28','2025-02-28','�����'),
('8','8','97134','������������� � ��������','4','1981-12-01',NULL,'���� ���������� ������ �.������'),
('9','9','96314','�������','1','1974-03-30','2024-03-30','����'),
('10','10','10584','���','3','2015-01-11',NULL,'���� � 7'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

