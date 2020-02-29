-- Generation time: Thu, 27 Feb 2020 10:11:45 +0000
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

DROP TABLE IF EXISTS `receiving_service`;
CREATE TABLE `receiving_service` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('performed','executed','failure') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_user` (`id_user`),
  foreign key (`id_user`) references `users`(`id`)
	on update cascade
	on delete restrict,
	foreign key (`id`) references `services`(`id`)
	on update cascade
	on delete restrict
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `receiving_service` VALUES 
('1','1','Voluptatem eius quia in.','performed','2017-05-02 15:35:33','2017-06-12 19:11:28'),
('2','2','Maxime consequatur maxime excepturi totam dolor.','performed','2018-05-15 02:21:50','2018-07-27 12:37:58'),
('3','3','Itaque corrupti quis omnis nostrum voluptates eum quia.','performed','2018-05-10 03:28:10','2018-09-03 03:41:33'),
('4','4','Rerum qui molestias omnis non aut laborum voluptatibus iusto.','executed','2019-03-21 12:20:00','2019-06-09 20:45:50'),
('5','5','Voluptas aperiam ab harum illum et.','performed','2019-03-21 09:34:05','2019-04-28 21:12:40'),
('6','6','Beatae quasi aliquid consequuntur.','performed','2018-09-27 03:49:24','2018-12-22 14:28:35'),
('7','7','Sit placeat assumenda molestiae et mollitia quia et est.','executed','2018-09-17 06:04:39','2019-10-17 06:18:54'),
('8','8','Aut esse fugiat ut.','performed','2019-04-21 14:10:08','2019-06-28 16:44:03'),
('9','9','Dicta impedit ut tempora ipsum.','performed','2019-03-03 22:07:42','2019-04-06 14:47:21'),
('10','10','Facere consectetur ut ipsum qui doloremque quibusdam.','failure','2019-04-04 07:14:53','2019-08-11 02:50:05'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

