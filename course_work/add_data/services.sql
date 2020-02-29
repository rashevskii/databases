-- Generation time: Thu, 27 Feb 2020 07:44:16 +0000
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

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `executor` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` int(11) NOT NULL,
  `costs` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `services` VALUES 
('1','Voluptatem eos deleniti distinctio deserunt magnam officia.','Ab deleniti quia dolores laudantium aliquam quidem.','2019-05-03',NULL),
('2','Sit officia explicabo quam quos amet.','Numquam repudiandae soluta porro nemo facere.','2019-05-03',NULL),
('3','Aut sit harum nesciunt quia qui placeat illum.','Et facere odit voluptatibus accusantium minima.','2019-05-03',NULL),
('4','Officiis asperiores aliquid inventore omnis culpa.','Soluta in repellendus ea sunt quam excepturi architecto.','2019-05-03',NULL),
('5','Facilis sit nobis et eos.','Qui ut quam et sed sed eveniet facere.','2019-05-03',NULL),
('6','Libero ut non officiis quas praesentium laboriosam.','Corrupti qui ab architecto.','2019-05-03',NULL),
('7','Dignissimos sit nostrum architecto in quae voluptatem eveniet at.','Modi reiciendis dolorem neque sint quia fuga.','2019-05-03',NULL),
('8','Praesentium blanditiis dolorem laboriosam necessitatibus.','Rem aut sunt autem consectetur et voluptatum et.','2019-05-03',NULL),
('9','Odit et assumenda ea recusandae tempore ut.','Vel dicta enim architecto quia.','2019-05-03',NULL),
('10','Vel corporis voluptatum libero nulla corporis veniam.','Quo deleniti quidem dolores quia beatae ut.','2019-05-03',NULL); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

