CREATE DATABASE IF NOT EXISTS `fullcycle`;
USE `fullcycle`;

CREATE TABLE IF NOT EXISTS `modules` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdatedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=InnoDB AUTO_INCREMENT=8624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `modules` 
    (`name`)
VALUES
    ("Docker"),
    ("Kubernetes"),
    ("RabbitMQ"),
    ("DDD"),
    ("Arquitetura de Software"),
    ("Microsservicos");