-- Generation time: Thu, 27 Feb 2020 07:49:50 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
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

DROP TABLE IF EXISTS `place_of_birth`;
CREATE TABLE `place_of_birth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` int(11) DEFAULT NULL,
  `sub_building` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `place_of_birth_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `place_of_birth` VALUES 
('1','Россия','Московская область','Москва','Забелина','92',NULL,'22'),
('2','Россия','Московская область','Москва','Заветная','116',NULL,'13'),
('3','Россия','Московская область','Москва','Заводская','288',NULL,'75'),
('4','Россия','Московская область','Москва','Заводская','38',NULL,'80'),
('5','Россия','Московская область','Москва','Вавилова','193',NULL,'55'),
('6','Россия','Московская область','Москва','Валовая','127',NULL,'38'),
('7','Россия','Московская область','Москва','Водников','119',NULL,'55'),
('8','Россия','Московская область','Москва','Войсковая','197',NULL,'53'),
('9','Россия','Московская область','Москва','Тихомирова','197',NULL,'53'),
('10','Россия','Московская область','Москва','Ткацкая','197',NULL,'53');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

