/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB : Database - ejemploguido
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ejemploguido` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ejemploguido`;

/*Table structure for table `ciudades` */

DROP TABLE IF EXISTS `ciudades`;

CREATE TABLE `ciudades` (
  `idciudades` int(11) NOT NULL AUTO_INCREMENT,
  `ciu_nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idciudades`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ciudades` */

insert  into `ciudades`(`idciudades`,`ciu_nombre`) values 
(1,'Ypacarai'),
(2,'Itaugua');

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `cli_nombre` varchar(45) NOT NULL,
  `cli_apellido` varchar(45) NOT NULL,
  `cli_ruc` varchar(15) NOT NULL,
  `cli_telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clientes` */

insert  into `clientes`(`idclientes`,`cli_nombre`,`cli_apellido`,`cli_ruc`,`cli_telefono`) values 
(0,'','','',''),
(1,'Hector Daniel','Gomez Lopez','1202812_6','0982209005'),
(2,'Junior Enmanuel','Sanabria','00','0983254865'),
(3,'Adrian','Morel','00','0983260434'),
(4,'Adrian','Riveros','00','0992855363'),
(5,'Adriel','Galeano','00','0986520806'),
(6,'Aguero','Moto','00','0985315115'),
(7,'Agustin','Mendieta','00','0982835804'),
(8,'Agustin','Osnaghi','00','0985660635'),
(9,'Aldo','Ferreira','00','0986578822'),
(10,'Alejandro','Gorosito','00','0983270288'),
(11,'Alejandro','Meza','00','0971697696'),
(12,'Ale','Rienzi','00','0986715918'),
(13,'Alexander','Torales','00','0972337644'),
(14,'Alejandro','Grossi','00','0983769780'),
(15,'Manu','Almeida','00','0985570285'),
(16,'Alvaro','Enciso Snead','00','0981341663'),
(17,'Amin','Rodriguez','00','0972806831'),
(18,'Angel','Borja','00','0971290136'),
(19,'Anthony','Doria','00','0983968243'),
(20,'Ariel','Sueñolar','00','0981192742'),
(21,'Ariel','Villagra','00','0981451908'),
(22,'Ariel','Yegros','00','0994157803'),
(23,'Ariel','sin','00','0976206624'),
(24,'Ariel','Enciso','00','0971874563'),
(26,'Arnaldo','Canatta','00','0974774820'),
(27,'Augusto','Ovelar','00','0986134192'),
(28,'Axel','Alvarez','00','0994104560'),
(29,'Axel','Arana','00','0984854647'),
(30,'Axel','Cantero','00','0991783690'),
(31,'Blas','sin','00','0991234526'),
(32,'Blas','Franco','00','0992889915'),
(33,'Blas','Grisseti','00','0992627418'),
(34,'Brayan','pasopuente','00','0993597616'),
(35,'Bruno','Aquino','00','0982747653'),
(36,'Bruno','Rodas','00','0971923403'),
(37,'Caco','Castro','00','0984340742'),
(38,'Alexander','Cano','00','0985487241'),
(39,'Nelson','Villalba','00','0971224412'),
(40,'Carlos','Sosa','00','0985707691'),
(41,'Carlos','Aguero','00','0983426843'),
(42,'Carlos','Gomez','00','0982665168'),
(43,'Carlos','Jimenez','00','0984485783'),
(44,'Carlos Plate','Padre','00','0991500561'),
(45,'Carlos Plate','Hijo','00','0991448866'),
(46,'Carlos','Zaracho','00','0976597940'),
(47,'Chama','Ferreira','00','0991724171'),
(48,'Marcelo','Chelo','00','0985508042'),
(49,'Ramon','Coronel','00','0971695489'),
(50,'Cristian','Cabral','00','0972895537'),
(51,'Chupo','Cli','00','0986458142'),
(52,'Cli','Cli','00','0976864637'),
(53,'Ireneo','Cli','00','0986346764'),
(54,'Renato','Maldonado','00','0983216739'),
(55,'Chofer','Guarani','00','0971792337'),
(56,'Hermano de Aguero','sin','00','0981543755'),
(57,'Sergio','Ramos','00','0986768627'),
(58,'Victor','Martinez','00','0992669704'),
(59,'Cliente Postulante','sin','00','0986609131'),
(60,'Cliente SantaRosa','sin','00','0982280781'),
(61,'Cliente Sueñolar','sin','00','0984142008'),
(62,'Cliente Vecino','sin','00','0993588899'),
(63,'Gregori','Smith','00','0986485047'),
(64,'Christian','Lugo','00','0982330385'),
(65,'Richard','Baez','00','0976521385'),
(66,'Daniel','Valenzuela','00','0981543328'),
(67,'Dani','Cli','00','0986853275'),
(68,'Dani','Lopez','00','0985798903'),
(69,'Dario','Alcaraz','00','0993590380'),
(70,'David','Suarez','00','0986313455'),
(71,'Hector David','Gomez Arrua','00','0983407828'),
(72,'David','Vera','00','0986280855'),
(73,'Denis','Vazquez','00','0983156740'),
(74,'Nicolas','Britos','00','0992216150'),
(75,'Diego','Pettengill','00','0971640893'),
(76,'Diego','Gimenez','00','0982926466'),
(77,'Diego','Grippo','00','0993616656'),
(78,'Dieter','Pastoriza','00','0984879347'),
(79,'Domingo','Ruiz Diaz','00','0994390739'),
(80,'Beto','Vera','00','0972238935'),
(81,'Edgar','Patiño','00','0983308467'),
(82,'Eduardo','Arrua','00','0994624479'),
(83,'Eduardo','Vera','00','0971647948'),
(84,'Eduardo','Franco','00','0981706539'),
(85,'Eduardo','Portillo','00','0982721390'),
(86,'Eduardo','Villagra','00','0991848621'),
(87,'Edwin','Lugo','00','0992841169'),
(88,'Egidio','Benitez','00','0991609757'),
(89,'El arabe','sin','00','0985179493'),
(90,'Elias','Borja','00','0991450404'),
(91,'Emilio ','Wildberger','00','0971132552'),
(92,'Enrique','Cli','00','0984210006'),
(93,'Enrique','Zacher','00','0984767371'),
(94,'Enzo','Benitez','00','0991721871'),
(95,'Enzo','Rienzi','00','0981556555'),
(96,'Enzo','Vera','00','0976485317'),
(97,'Erick','Ojeda','00','0981510872'),
(98,'Esteban','Borja','00','0983926287'),
(99,'Esteban','Britos','00','0985924947'),
(100,'Estigarribia','Cli','00','0981914556'),
(101,'Eugenio','Barboza','00','0971240799'),
(102,'Evert','Cli','00','0992890319'),
(103,'Estiven','Caballero','00','0971163906'),
(104,'Ezequiel','Benitez','00','0981512993'),
(105,'Fabian','Caceres','00','0985461850'),
(106,'Fabian','Enciso','00','0984123291'),
(107,'Fabio','Salinas','00','0984242415'),
(108,'Fabiola','Cli','00','0981796113'),
(109,'Fabri','Morinigo','00','0981849175'),
(110,'Fabricio','Servian','00','0972681249'),
(111,'Favio ','Roble','00','0994307791'),
(112,'Federico','Amarilla','00','0995625725'),
(113,'Federico','Ortigoza','00','0981346302'),
(114,'Fernando','Baez','00','0994300262'),
(115,'Fernando','Gomez','00','0992630374'),
(116,'Fernandez','Cli','00','0971387798'),
(117,'Fernando','Benitez','00','0991941820'),
(118,'Atilio','Ferreira','00','0991344874'),
(119,'Teofilo','Lugo','00','0974201042'),
(120,'Fito','Ortega','00','0983456473'),
(121,'Flavia','Marin','00','0986774020'),
(122,'Kalu','Cli','00','0976124783'),
(123,'Franckie','Bock','00','0981885997'),
(124,'Fredy','Salinas','00','0976225319'),
(125,'Fredy','Vera','00','0983804224'),
(126,'Gabriel','Arevalos','00','0972871479'),
(127,'Gabriel','Insfran','00','0986877905'),
(128,'Gabriel','Riquelme','00','0983889087'),
(129,'Gerardo','Lopez','00','0984493812'),
(130,'Giuliano','Rufinelli','00','0984604537'),
(131,'Gonzalo','Britez','00','0985782196'),
(132,'Gonzalo','Medina','00','0981560490'),
(133,'Guardia','Cli','00','0981780278'),
(134,'Gustavito','Cli','00','0982956960'),
(135,'Gustavo','Garay','00','0986181313'),
(136,'Gustavo','Riveros','00','0981108927'),
(137,'Hector','Arce','00','0986824048'),
(138,'Hermano de Aguero','Cli','00','0974238270'),
(139,'Hermano de Jaka','Cli','00','0981199114'),
(140,'Iliana','Flecha','00','0985598694'),
(141,'Isaias','Dominguez','00','0971551030'),
(142,'Ismael','Gamarra','00','0971234917'),
(143,'Ivan','Pereira','00','0976912888'),
(144,'Ivan','Rodriguez','00','0984363323'),
(145,'Ivan','Yegros','00','0983959706'),
(146,'Jaka','Cli','00','0982521630'),
(147,'Jarold','Haedo','00','0984426965'),
(148,'Javier','Cli','00','0981820860'),
(149,'Joel','Acosta','00','0984840944'),
(150,'Jonathan','Penayo','00','0984840944'),
(151,'Jonny','Meza','00','0985159215'),
(152,'Jorge','Villagra','00','096166191'),
(153,'Jorgue','Wildberger','00','0981424382'),
(154,'Jose','Alvarez','00','0986475400'),
(155,'Jose','Cantero','00','0982602674'),
(156,'Jose','Cousinho','00','0983817184'),
(157,'Jose','Lopez','00','0985749205'),
(158,'Jose','Mendieta','00','0972494957'),
(159,'Dario Jose','Molina','00','0985248691'),
(160,'Jose','Pa i','00','0972631700'),
(161,'Jose','Portillo','00','0982787056'),
(162,'Jose','Rolon','00','0982505867'),
(163,'Jose','Sosa','00','0981576480'),
(164,'Jose','Torres','00','0993543681'),
(165,'Jose','Vidal','00','0986878315'),
(166,'Juan','Acosta','00','0981716010'),
(167,'Juan','Bernardo','00','0982474640'),
(168,'Juan','Gomez','00','0976962942'),
(169,'Juan','Machado','00','0991301990'),
(170,'Juan','Silva','00','0976468134'),
(171,'Juancho','24','00','0972963995'),
(172,'Juanjo','Gimenez','00','0991808311'),
(173,'Judith','Rojas','00','0972537602'),
(174,'Junior','Alum','00','0991753138'),
(175,'Junior','Rosembaun','000','0981877269'),
(176,'Carlos Plate','Hijo','00','0991448866'),
(177,'Kevin','Vera','00','0991203509'),
(178,'Kevin Mathias','Ramirez','00','0985649585'),
(179,'Koki','Mel','00','0976753666'),
(180,'Antonio','Vera','00','0986875722'),
(181,'Leandro','Martinez','00','0991252289'),
(182,'Leandro','Galeano','00','0971599987'),
(183,'Leo','Gamarra','00','0984335759'),
(184,'Leonardo','Lopez','00','0981989380'),
(185,'Lorenzo','Borja','00','0982935354'),
(186,'Lucas','Adorno','00','0971207922'),
(187,'Lucas','Valenzuela','00','0991255808'),
(188,'Lucho','sin','00','0971667622'),
(189,'Luis Angel','Rodas','00','0972162182'),
(190,'','','',''),
(191,'','','',''),
(192,'','','','');

/*Table structure for table `clientes2` */

DROP TABLE IF EXISTS `clientes2`;

CREATE TABLE `clientes2` (
  `idclientes2` int(2) NOT NULL AUTO_INCREMENT,
  `cli2_nombre` varchar(40) DEFAULT NULL,
  `cli2_numero` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idclientes2`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `clientes2` */

insert  into `clientes2`(`idclientes2`,`cli2_nombre`,`cli2_numero`) values 
(1,'Yessica Ibarra','0976157428'),
(2,'Abi Muzzachi','0971249149'),
(3,'Iliana Flecha','0985598694'),
(4,'Ana Medina','0985166580'),
(5,'Monse Aranda','0983683476'),
(6,'Yani Feltes','0984798954');

/*Table structure for table `detallefacturacion` */

DROP TABLE IF EXISTS `detallefacturacion`;

CREATE TABLE `detallefacturacion` (
  `productos_idproductos` int(11) NOT NULL,
  `facturacion_idfacturacion` int(11) NOT NULL,
  `det_cantidad` int(11) NOT NULL,
  `det_precio` int(11) NOT NULL,
  PRIMARY KEY (`productos_idproductos`,`facturacion_idfacturacion`),
  KEY `fk_productos_has_facturacion_facturacion1_idx` (`facturacion_idfacturacion`),
  KEY `fk_productos_has_facturacion_productos1_idx` (`productos_idproductos`),
  CONSTRAINT `fk_productos_has_facturacion_facturacion1` FOREIGN KEY (`facturacion_idfacturacion`) REFERENCES `facturacion` (`idfacturacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_has_facturacion_productos1` FOREIGN KEY (`productos_idproductos`) REFERENCES `productos` (`idproductos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detallefacturacion` */

insert  into `detallefacturacion`(`productos_idproductos`,`facturacion_idfacturacion`,`det_cantidad`,`det_precio`) values 
(1,4,1,50000),
(1,5,1,50000),
(1,6,2,50000),
(1,7,2,50000),
(1,8,1,50000),
(1,9,2,50000),
(1,12,2,50000),
(1,14,2,50000),
(1,15,1,50000),
(1,16,1,50000),
(1,17,1,50000),
(1,18,3,50000),
(1,19,1,50000),
(1,20,1,50000),
(1,21,1,50000),
(1,31,1,50000),
(1,35,1,50000),
(1,47,1,50000),
(1,50,1,50000),
(1,51,1,50000),
(1,53,3,50000),
(1,54,1,50000),
(2,3,1,330000),
(2,4,1,330000),
(2,5,1,330000),
(2,6,1,330000),
(2,11,1,330000),
(2,13,1,330000),
(2,15,1,330000),
(2,16,1,330000),
(2,18,2,330000),
(2,19,1,330000),
(2,20,1,330000),
(2,21,1,330000),
(2,29,1,330000),
(2,31,1,330000),
(2,34,1,330000),
(2,47,1,330000),
(2,51,1,330000),
(2,54,1,330000),
(3,2,1,90000),
(3,4,1,90000),
(3,5,4,90000),
(3,6,1,90000),
(3,10,1,900000),
(3,11,1,900000),
(3,15,1,900000),
(3,16,1,900000),
(3,18,1,900000),
(3,19,1,900000),
(3,20,1,900000),
(3,21,1,900000),
(3,31,1,900000),
(3,47,1,900000),
(3,51,1,900000),
(3,52,1,900000),
(3,54,1,900000),
(4,22,1,30000),
(4,23,1,30000),
(4,24,1,30000),
(4,25,1,30000),
(4,26,1,30000),
(4,27,1,30000),
(4,28,1,30000),
(4,29,1,30000),
(4,30,1,30000),
(4,31,1,30000),
(4,32,1,30000),
(4,33,1,30000),
(4,34,1,30000),
(4,38,1,30000),
(4,39,1,30000),
(4,40,1,30000),
(4,41,1,30000),
(4,42,1,30000),
(4,43,1,30000),
(4,44,2,30000),
(4,45,2,30000),
(4,46,2,30000),
(4,48,1,30000),
(4,49,1,30000),
(5,24,1,15000),
(5,44,1,15000),
(5,45,1,15000),
(5,46,1,15000),
(5,48,1,15000),
(6,45,1,5000),
(6,46,1,5000),
(6,48,1,5000),
(6,49,1,5000),
(6,54,1,5000);

/*Table structure for table `facturacion` */

DROP TABLE IF EXISTS `facturacion`;

CREATE TABLE `facturacion` (
  `idfacturacion` int(11) NOT NULL,
  `fa_condicion` varchar(15) NOT NULL,
  `fa_fecha` date NOT NULL,
  `fa_numero` varchar(15) NOT NULL,
  `fa_estado` varchar(15) NOT NULL,
  `usuarios_idusuarios` int(11) NOT NULL,
  `clientes_idclientes` int(11) NOT NULL,
  `idpersonales` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfacturacion`),
  KEY `fk_facturacion_usuarios_idx` (`usuarios_idusuarios`),
  KEY `fk_facturacion_clientes1_idx` (`clientes_idclientes`),
  KEY `idpersonales` (`idpersonales`),
  CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`idpersonales`) REFERENCES `personales` (`idpersonales`),
  CONSTRAINT `fk_facturacion_clientes1` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_facturacion_usuarios` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `facturacion` */

insert  into `facturacion`(`idfacturacion`,`fa_condicion`,`fa_fecha`,`fa_numero`,`fa_estado`,`usuarios_idusuarios`,`clientes_idclientes`,`idpersonales`) values 
(1,'CONTADO','2020-08-12','1','P',1,1,1),
(2,'CONTADO','2023-05-24','2','P',1,2,1),
(3,'CONTADO','2023-12-12','3','P',1,1,1),
(4,'CREDITO','2023-12-12','4','P',1,2,1),
(5,'CONTADO','2023-12-12','5','P',1,1,1),
(6,'CONTADO','2023-05-12','112','P',1,1,NULL),
(7,'CONTADO','2023-05-12','12312','P',1,1,NULL),
(8,'CONTADO','2023-09-21','1122','P',1,1,NULL),
(9,'CONTADO','2023-09-21','123','P',1,1,NULL),
(10,'CONTADO','2023-12-12','13','P',1,2,NULL),
(11,'CONTADO','2023-12-12','11','P',1,1,NULL),
(12,'CONTADO','2023-12-12','12','P',1,2,NULL),
(13,'CONTADO','2023-12-12','13','P',1,1,NULL),
(14,'CONTADO','2023-12-12','14','P',1,1,NULL),
(15,'CONTADO','2023-12-12','15','P',1,2,NULL),
(16,'CONTADO','2023-12-12','16','P',1,1,NULL),
(17,'CONTADO','2023-12-12','17','P',1,1,NULL),
(18,'CONTADO','2023-12-12','18','P',1,1,NULL),
(19,'CONTADO','2023-10-02','19','P',1,1,NULL),
(20,'CONTADO','2023-10-02','20','P',1,1,NULL),
(21,'CONTADO','2023-12-12','21','P',1,1,NULL),
(22,'CONTADO','2023-10-05','22','P',1,147,NULL),
(23,'CONTADO','2023-10-05','23','P',1,78,NULL),
(24,'CONTADO','2023-10-25','24','P',1,79,NULL),
(25,'CONTADO','2023-10-26','25','P',1,2,NULL),
(26,'CONTADO','2023-10-26','26','P',1,2,NULL),
(27,'CONTADO','2023-10-26','27','P',1,1,NULL),
(28,'CONTADO','2023-10-26','28','P',1,1,NULL),
(29,'CONTADO','2023-10-26','29','P',1,2,NULL),
(30,'CONTADO','2023-10-26','30','P',1,78,NULL),
(31,'CONTADO','2023-10-26','31','P',1,78,NULL),
(32,'CONTADO','2023-11-06','31','P',1,1,NULL),
(33,'CONTADO','2023-12-12','33','P',1,78,NULL),
(34,'CONTADO','2023-12-12','34','P',1,78,NULL),
(35,'CONTADO','2023-12-12','35','A',1,2,NULL),
(36,'CONTADO','2024-01-18','37','P',1,1,NULL),
(37,'CONTADO','2024-01-18','37','P',1,1,NULL),
(38,'CONTADO','2024-01-18','38','A',1,1,NULL),
(39,'CONTADO','2024-01-18','39','P',1,1,NULL),
(40,'CONTADO','2024-01-18','40','P',1,1,NULL),
(41,'CONTADO','2024-01-18','41','P',1,1,NULL),
(42,'CONTADO','2024-01-18','42','P',1,1,NULL),
(43,'CONTADO','2024-01-18','43','P',1,1,NULL),
(44,'CONTADO','2024-01-18','44','P',1,1,NULL),
(45,'CONTADO','2024-01-18','44','P',1,1,NULL),
(46,'CONTADO','2024-01-18','46','P',1,1,NULL),
(47,'CONTADO','2024-01-18','47','P',1,1,NULL),
(48,'CONTADO','2024-01-18','48','P',1,1,NULL),
(49,'CONTADO','2024-01-18','48','P',1,83,NULL),
(50,'CONTADO','2024-01-18','50','P',1,83,NULL),
(51,'CONTADO','2024-01-22','51','P',1,1,NULL),
(52,'CONTADO','2024-01-22','52','P',1,1,NULL),
(53,'CONTADO','2024-01-22','53','A',1,1,NULL),
(54,'CONTADO','2024-01-22','53','P',1,5,NULL);

/*Table structure for table `inventario` */

DROP TABLE IF EXISTS `inventario`;

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `ventas_idventas` int(11) NOT NULL,
  PRIMARY KEY (`idInventario`),
  KEY `fk_Inventario_ventas1_idx` (`ventas_idventas`),
  CONSTRAINT `fk_Inventario_ventas1` FOREIGN KEY (`ventas_idventas`) REFERENCES `ventas` (`idventas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inventario` */

insert  into `inventario`(`idInventario`,`Fecha`,`ventas_idventas`) values 
(1,'2023-11-14',1);

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `marca` */

/*Table structure for table `personales` */

DROP TABLE IF EXISTS `personales`;

CREATE TABLE `personales` (
  `idpersonales` int(11) NOT NULL AUTO_INCREMENT,
  `per_nombre` varchar(30) DEFAULT NULL,
  `per_apellido` varchar(30) DEFAULT NULL,
  `per_ci` varchar(10) DEFAULT NULL,
  `idciudades` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpersonales`),
  KEY `idciudades` (`idciudades`),
  CONSTRAINT `personales_ibfk_1` FOREIGN KEY (`idciudades`) REFERENCES `ciudades` (`idciudades`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `personales` */

insert  into `personales`(`idpersonales`,`per_nombre`,`per_apellido`,`per_ci`,`idciudades`) values 
(1,'Jose Andres','Gomez','6038499',1),
(2,'Fiorela Magali','Pecci Nuñez','0',1),
(3,'Patricio','Rivas','0',2),
(4,'Elias','Pykare','0',2);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL,
  `pro_nombre` varchar(45) NOT NULL,
  `pro_precio` int(11) NOT NULL,
  `pro_cantidad` int(11) NOT NULL,
  `pro_IVA` varchar(10) NOT NULL,
  PRIMARY KEY (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`idproductos`,`pro_nombre`,`pro_precio`,`pro_cantidad`,`pro_IVA`) values 
(1,'Mouse',50000,-9,'10'),
(2,'Teclado RedDragon Fiiz PRO',330000,-7,'10'),
(3,'Monitor HYE 24\" 165Hz',900000,-7,'10'),
(4,'Corte de Pelo',30000,967,'0'),
(5,'Perfilado de Barba',15000,994,'0'),
(6,'Perfilado de Cejas',5000,995,'0');

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `produtos` */

insert  into `produtos`(`idprodutos`,`nombre`,`cantidad`) values 
(1,'Iphone 11',9000);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `us_nombre` varchar(45) NOT NULL,
  `us_clave` varchar(45) NOT NULL,
  `us_tipo` varchar(15) NOT NULL,
  `us_estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`idusuarios`,`us_nombre`,`us_clave`,`us_tipo`,`us_estado`) values 
(1,'admin','admin','ADMINISTRADOR','A'),
(2,'00','00','ADMINISTRADOR','A');

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `idventas` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `produtos_idprodutos` int(11) NOT NULL,
  PRIMARY KEY (`idventas`),
  KEY `fk_ventas_produtos_idx` (`produtos_idprodutos`),
  CONSTRAINT `fk_ventas_produtos` FOREIGN KEY (`produtos_idprodutos`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ventas` */

insert  into `ventas`(`idventas`,`Cantidad`,`produtos_idprodutos`) values 
(1,30,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
