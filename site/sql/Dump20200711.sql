-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hcode_shop
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_carrinhos`
--

DROP TABLE IF EXISTS `tb_carrinhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carrinhos` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `frete_car` decimal(10,2) DEFAULT NULL,
  `cep_car` char(8) DEFAULT NULL,
  `data_car` datetime DEFAULT NULL,
  `session_car` varchar(256) NOT NULL,
  `prazo_car` int DEFAULT NULL,
  PRIMARY KEY (`id_car`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carrinhos`
--

LOCK TABLES `tb_carrinhos` WRITE;
/*!40000 ALTER TABLE `tb_carrinhos` DISABLE KEYS */;
INSERT INTO `tb_carrinhos` VALUES (14,73.19,'01310100','2020-07-11 17:49:22','6hn4q2fo6jctfn2h34b6tkr9rq',3);
/*!40000 ALTER TABLE `tb_carrinhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carrinhosprodutos`
--

DROP TABLE IF EXISTS `tb_carrinhosprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carrinhosprodutos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_car` int NOT NULL,
  `id_prod` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carrinhosprodutos`
--

LOCK TABLES `tb_carrinhosprodutos` WRITE;
/*!40000 ALTER TABLE `tb_carrinhosprodutos` DISABLE KEYS */;
INSERT INTO `tb_carrinhosprodutos` VALUES (81,14,6);
/*!40000 ALTER TABLE `tb_carrinhosprodutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_produtos`
--

DROP TABLE IF EXISTS `tb_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produtos` (
  `id_prod` int NOT NULL AUTO_INCREMENT,
  `nome_prod_curto` varchar(150) DEFAULT NULL,
  `nome_prod_longo` varchar(500) DEFAULT NULL,
  `codigo_interno` bigint DEFAULT NULL,
  `id_cat` int DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `largura_centimetro` int DEFAULT NULL,
  `altura_centimetro` int DEFAULT NULL,
  `quantidade_estoque` int DEFAULT NULL,
  `preco_promorcional` decimal(10,2) DEFAULT NULL,
  `foto_principal` varchar(500) DEFAULT NULL,
  `visivel` bit(8) DEFAULT NULL,
  `comprimento_centimetro` int DEFAULT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produtos`
--

LOCK TABLES `tb_produtos` WRITE;
/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
INSERT INTO `tb_produtos` VALUES (3,'iPhone 6s 16GB','iPhone 6s 16GB Prata Desbloqueado iOS 9 4G 12MP - Apple',124678139,3,2000.00,0.30,11,13,50,1499.00,'iphone.jpg',_binary '',16),(4,'Smart TV Samsung','Smart TV Nano Cristal 60\" Samsung 60JS7200 SUHD 4K com Conversor Digital 4 HDMI 3 USB Wi-Fi Função Games Quad Core ',124407806,1,3500.00,30.00,105,77,10,1999.00,'SmartTVSamsung.jpg',_binary '',18),(5,'Cafeteira Expresso Nescafé Dolce Gusto','Cafeteira Expresso Nescafé Dolce Gusto Genio Arno Preta 15Bar',120866280,5,700.00,2.70,26,60,100,508.00,'CafeteiraDolceGusto.jpg',_binary '',16),(6,'Ar Condicionado Split Hi Wall LG 12.000 Btus Quente/Frio - 220V','Ar Condicionado Split Hi Wall LG 12.000 Btus Quente/Frio - 220V',123893531,5,1599.99,9.00,29,21,10,1499.99,'arCondicionadoSplitLG.jpg',_binary '',20),(7,'Smartphone Motorola Moto Maxx','Smartphone Motorola Moto Maxx Desbloqueado Android 4.4 Tela 5.2\" Memória 64GB Wi-Fi Câmera 21MP Preto',121034371,3,2000.00,0.30,11,13,100,1943.33,'motoMaxx.jpg',_binary '',16);
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reviews`
--

DROP TABLE IF EXISTS `tb_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reviews` (
  `id_revew` int NOT NULL AUTO_INCREMENT,
  `id_prod` int DEFAULT NULL,
  `review` int DEFAULT NULL,
  PRIMARY KEY (`id_revew`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reviews`
--

LOCK TABLES `tb_reviews` WRITE;
/*!40000 ALTER TABLE `tb_reviews` DISABLE KEYS */;
INSERT INTO `tb_reviews` VALUES (1,3,4),(2,3,5),(3,3,4),(4,3,5),(5,4,4),(6,4,5),(7,4,5),(8,5,5),(9,5,4),(10,5,3),(11,6,2),(12,6,4),(13,6,5),(14,7,3),(15,7,4);
/*!40000 ALTER TABLE `tb_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hcode_shop'
--

--
-- Dumping routines for database 'hcode_shop'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhosprodutosfrete_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhosprodutosfrete_list`(
pid_car INT
)
BEGIN

SELECT
b.preco*COUNT(*) AS preco,
b.peso*COUNT(*) AS peso,
b.largura_centimetro*COUNT(*) AS largura,
b.altura_centimetro*COUNT(*) AS altura,
b.comprimento_centimetro*COUNT(*) AS comprimento,
id_car
FROM tb_carrinhosprodutos a
INNER JOIN tb_produtos b USING(id_prod)
WHERE id_car = pid_car
GROUP BY b.id_prod;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhosprodutostodos_rem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhosprodutostodos_rem`(
pid_car INT,
pid_prod INT
)
BEGIN
    
    DELETE FROM tb_carrinhosprodutos
    WHERE id_car = pid_car AND id_prod = pid_prod;
    
    CALL sp_carrinhosprodutos_list(pid_car);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhosprodutos_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhosprodutos_add`(
pid_car INT,
pid_prod INT
)
BEGIN
	
	INSERT INTO tb_carrinhosprodutos (id_car, id_prod)
    VALUES(pid_car, pid_prod);
    
    CALL sp_carrinhosprodutos_list(pid_car);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhosprodutos_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhosprodutos_list`(
pid_car INT
)
BEGIN

	SELECT 
	a.id_prod,
	a.id_car,
	b.nome_prod_longo,
	b.nome_prod_curto,
	b.preco,
	b.peso,
	b.largura_centimetro,
	b.altura_centimetro,
	b.comprimento_centimetro,
	b.foto_principal,
	COUNT(*) AS qtd_car,
    SUM(preco) AS total
	FROM tb_carrinhosprodutos a
	INNER JOIN tb_produtos b USING(id_prod)
	WHERE id_car = pid_car
	GROUP BY
	a.id_prod,
	a.id_car,
	b.nome_prod_longo,
	b.nome_prod_curto,
	b.preco,
	b.peso,
	b.largura_centimetro,
	b.altura_centimetro,
	b.comprimento_centimetro,
	b.foto_principal;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhosprodutos_rem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhosprodutos_rem`(
pid_car INT,
pid_prod INT
)
BEGIN
	
	DELETE FROM tb_carrinhosprodutos
    WHERE id_car = pid_car AND id_prod = pid_prod
    LIMIT 1;
    
    CALL sp_carrinhosprodutos_list(pid_car);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_carrinhos_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_carrinhos_get`(
psession_car VARCHAR(256)
)
BEGIN
	
    DECLARE pqtd INT;
	DECLARE pid_car INT;
    DECLARE ptotal_car DECIMAL(10,2);
    
	SELECT id_car INTO pid_car
    FROM tb_carrinhos
    WHERE session_car = psession_car;
    
    IF NOT pid_car > 0 OR pid_car IS NULL THEN
    
		INSERT INTO tb_carrinhos (session_car, data_car)
        VALUES(psession_car, NOW());
        
        SET pid_car = LAST_INSERT_ID();
    
    END IF;
    
    SELECT 
    COUNT(*), SUM(b.preco) INTO pqtd, ptotal_car
    FROM tb_carrinhosprodutos a
    INNER JOIN tb_produtos b USING(id_prod)
    WHERE id_car = pid_car;
    
	SELECT 
    a.id_car,
    a.frete_car,
    a.cep_car,
    a.data_car,
    a.session_car,
    a.prazo_car,
    pqtd AS qtd_prod,
    ptotal_car AS subtotal_car,
    IFNULL(ptotal_car,0)+IFNULL(frete_car, 0) AS total_car
    FROM tb_carrinhos a
    WHERE a.id_car = pid_car
    GROUP BY
    a.id_car,
    a.frete_car,
    a.cep_car,
    a.data_car,
    a.session_car,
    a.prazo_car;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-11 17:56:53
