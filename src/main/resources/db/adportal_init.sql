CREATE DATABASE  IF NOT EXISTS `ad` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ad`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: ad
-- ------------------------------------------------------
-- Server version	5.7.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `principal` varchar(255) NOT NULL,
  `landline` varchar(15) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `street` text NOT NULL,
  `city` varchar(90) NOT NULL,
  `zip` varchar(8) NOT NULL,
  `mandal` varchar(90) NOT NULL,
  `district` varchar(90) NOT NULL,
  `state` varchar(90) NOT NULL,
  `isgovt` varchar(5) NOT NULL,
  `educationMode` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `school_profile`
--

DROP TABLE IF EXISTS `school_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `internet_facility` tinyint(4) DEFAULT NULL,
  `sanitation_facility` tinyint(4) DEFAULT NULL,
  `electricity` tinyint(4) DEFAULT NULL,
  `powerbackup` tinyint(4) DEFAULT NULL,
  `drinkingwater_facility` tinyint(4) DEFAULT NULL,
  `distance_from_main_road` tinyint(4) DEFAULT NULL,
  `board` tinyint(4) DEFAULT NULL,
  `environment` tinyint(4) DEFAULT NULL,
  `ratio` tinyint(4) DEFAULT NULL,
  `health_check_freq` tinyint(4) DEFAULT NULL,
  `misc` text,
  PRIMARY KEY (`id`),
  KEY `fk_school_profile_school_idx` (`school_id`),
  CONSTRAINT `fk_school_profile_school` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'ad'
--

--
-- Dumping routines for database 'ad'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_school_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_delete`(
IN p_id INT)
BEGIN

  DELETE d FROM school d WHERE id = p_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_school_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_insert`(
  IN p_name varchar(100), 
  IN p_principal varchar(255) ,
  IN p_landline varchar(15), 
  IN p_mobile varchar(15) ,
  IN p_website varchar(255),
  IN p_skype varchar(255) ,
  IN p_email varchar(255) ,
  IN p_street text ,
  IN p_city varchar(90) ,
  IN p_zip varchar(8) ,
  IN p_mandal varchar(90) ,
  IN p_district varchar(90) ,
  IN p_state varchar(90) ,
  IN p_isgovt tinyint(4) ,
  IN p_educationMode tinyint(4) ,
  IN p_internet_facility tinyint(4) ,
  IN p_sanitation_facility tinyint(4) ,
  IN p_electricity tinyint(4) ,
  IN p_powerbackup tinyint(4) ,
  IN p_drinkingwater_facility tinyint(4) ,
  IN p_distance_from_main_road tinyint(11) ,
  IN p_board tinyint(4) ,
  IN p_environment tinyint(4) ,
  IN p_ratio tinyint(4) ,
  IN p_health_check_freq tinyint(4) ,
  IN p_misc text  
)
BEGIN




DECLARE msg TEXT;
DECLARE v_school_id INT;

IF EXISTS (SELECT (1) FROM school s WHERE s.name = p_name AND s.mandal = p_mandal AND s.city = p_city) THEN
	SET msg = 'This school is already registered';
    signal sqlstate '45000' set message_text = msg;
END IF;



INSERT INTO `ad`.`school`(
`name`,
`principal`,
`landline`,
`mobile`,
`website`,
`skype`,
`email`,
`street`,
`city`,
`zip`,
`mandal`,
`district`,
`state`,
`isgovt`,
`educationMode`)
VALUES
(
   p_name, 
   p_principal ,
   p_landline , 
   p_mobile  ,
   p_website ,
   p_skype  ,
   p_email  ,
   p_street ,
   p_city  ,
   p_zip  ,
   p_mandal  ,
   p_district ,
   p_state ,
   p_isgovt  ,
   p_educationMode  );
   
   
   SELECT last_insert_id() INTO v_school_id;
   
   INSERT INTO `ad`.`school_profile`
(
`school_id`,
`internet_facility`,
`sanitation_facility`,
`electricity`,
`powerbackup`,
`drinkingwater_facility`,
`distance_from_main_road`,
`board`,
`environment`,
`ratio`,
`health_check_freq`,
`misc`)
VALUES
(
v_school_id,
p_internet_facility,
p_sanitation_facility,
p_electricity,
p_powerbackup,
p_drinkingwater_facility,
p_distance_from_main_road,
p_board,
p_environment,
p_ratio,
p_health_check_freq,
p_misc
);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_school_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_list`()
BEGIN

SELECT s.id,
    s.name,
    s.principal,
    s.landline,
    s.mobile,
    s.website,
    s.skype,
    s.email,
    s.street,
    s.city,
    s.zip,
    s.mandal,
    s.district,
    s.state,
    s.isgovt,
    s.educationMode,
    sp.internet_facility,
    sp.sanitation_facility,
    sp.electricity,
    sp.powerbackup,
    sp.drinkingwater_facility,
    sp.distance_from_main_road,
    sp.board,
    sp.environment,
    sp.ratio,
    sp.health_check_freq,
    sp.misc
FROM ad.school s JOIN school_profile sp ON s.id = sp.school_id;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_school_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_profile`(
IN p_id INT,
IN p_name VARCHAR(255))
BEGIN

DECLARE v_id INT DEFAULT p_id;

IF v_id IS NULL THEN 
	SELECT id INTO v_id FROM school WHERE name = p_name;
END IF;



SELECT s.id,
    s.name,
    s.principal,
    s.landline,
    s.mobile,
    s.website,
    s.skype,
    s.email,
    s.street,
    s.city,
    s.zip,
    s.mandal,
    s.district,
    s.state,
    s.isgovt,
    s.educationMode,
    sp.internet_facility,
    sp.sanitation_facility,
    sp.electricity,
    sp.powerbackup,
    sp.drinkingwater_facility,
    sp.distance_from_main_road,
    sp.board,
    sp.environment,
    sp.ratio,
    sp.health_check_freq,
    sp.misc
FROM ad.school s  JOIN school_profile sp ON s.id = sp.school_id
WHERE s.id = v_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_school_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_school_update`(
  IN p_school_id int(11),
  IN p_name varchar(100), 
  IN p_principal varchar(255) ,
  IN p_landline varchar(15), 
  IN p_mobile varchar(15) ,
  IN p_website varchar(255),
  IN p_skype varchar(255) ,
  IN p_email varchar(255) ,
  IN p_street text ,
  IN p_city varchar(90) ,
  IN p_zip varchar(8) ,
  IN p_mandal varchar(90) ,
  IN p_district varchar(90) ,
  IN p_state varchar(90) ,
  IN p_isgovt tinyint(4) ,
  IN p_educationMode tinyint(4) ,
  IN p_internet_facility tinyint(4) ,
  IN p_sanitation_facility tinyint(4) ,
  IN p_electricity tinyint(4) ,
  IN p_powerbackup tinyint(4) ,
  IN p_drinkingwater_facility tinyint(4) ,
  IN p_distance_from_main_road tinyint(4) ,
  IN p_board tinyint(4) ,
  IN p_environment tinyint(4) ,
  IN p_ratio tinyint(4) ,
  IN p_health_check_freq tinyint(4) ,
  IN p_misc text  )
BEGIN


UPDATE ad.school
SET
name = IFNULL(p_name,name),
principal = IFNULL(p_principal,principal),
landline = IFNULL(p_landline,landline),
mobile = IFNULL(p_mobile,mobile),
website = IFNULL(p_website,website),
skype = IFNULL(p_skype,skype),
email = IFNULL(p_email,email),
street = IFNULL(p_street,street),
city = IFNULL(p_city,city),
zip = IFNULL(p_zip,zip),
mandal = IFNULL(p_mandal,mandal),
district = IFNULL(p_district,district),
state = IFNULL(p_state,state),
isgovt = IFNULL(p_isgovt,isgovt),
educationMode = IFNULL(p_educationMode,educationMode)
WHERE id = p_school_id;


UPDATE ad.school_profile
SET
internet_facility = IFNULL(p_internet_facility,internet_facility),
sanitation_facility = IFNULL(p_sanitation_facility,sanitation_facility),
electricity = IFNULL(p_electricity,electricity),
powerbackup = IFNULL(p_powerbackup,powerbackup),
drinkingwater_facility = IFNULL(p_drinkingwater_facility,drinkingwater_facility),
distance_from_main_road = IFNULL(p_distance_from_main_road,distance_from_main_road),
board = IFNULL(p_board,board),
environment = IFNULL(p_environment,environment),
ratio = IFNULL(p_ratio,ratio),
health_check_freq = IFNULL(p_health_check_freq,health_check_freq),
misc = IFNULL(p_misc,misc)
WHERE school_id = p_school_id;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_s_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_s_list`()
BEGIN

SELECT s.id,
    s.name,
    s.principal,
    s.landline,
    s.mobile,
    s.website,
    s.skype,
    s.email,
    s.street,
    s.city,
    s.zip,
    s.mandal,
    s.district,
    s.state,
    s.isgovt,
    s.educationMode,
    sp.internet_facility,
    sp.sanitation_facility,
    sp.electricity,
    sp.powerbackup,
    sp.drinkingwater_facility,
    sp.distance_from_main_road,
    sp.board,
    sp.environment,
    sp.ratio,
    sp.health_check_freq,
    sp.misc
FROM ad.school s JOIN school_profile sp ON s.id = sp.school_id;




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

-- Dump completed on 2017-11-08 13:56:04
