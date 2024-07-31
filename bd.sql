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

/*Table structure for table `clientes2` */

DROP TABLE IF EXISTS `clientes2`;

CREATE TABLE `clientes2` (
  `idclientes2` int(2) NOT NULL AUTO_INCREMENT,
  `cli2_nombre` varchar(40) DEFAULT NULL,
  `cli2_numero` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idclientes2`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
