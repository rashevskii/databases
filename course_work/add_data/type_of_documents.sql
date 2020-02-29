#
# TABLE STRUCTURE FOR: type_of_documents
#

DROP TABLE IF EXISTS `type_of_documents`;

CREATE TABLE `type_of_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('passport','SNILS','INN','birth_certificate','driver_license','medical_policy','international_passport','military_ID') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('1', 'passport');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('2', 'SNILS');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('3', 'INN');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('4', 'birth_certificate');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('5', 'driver_license');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('6', 'medical_policy');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('7', 'international_passport');
INSERT INTO `type_of_documents` (`id`, `type`) VALUES ('8', 'military_ID');


