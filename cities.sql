-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cities
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add continent',7,'add_continent'),(26,'Can change continent',7,'change_continent'),(27,'Can delete continent',7,'delete_continent'),(28,'Can view continent',7,'view_continent'),(29,'Can add country',8,'add_country'),(30,'Can change country',8,'change_country'),(31,'Can delete country',8,'delete_country'),(32,'Can view country',8,'view_country'),(33,'Can add city',9,'add_city'),(34,'Can change city',9,'change_city'),(35,'Can delete city',9,'delete_city'),(36,'Can view city',9,'view_city');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$320000$ftfpTOyWokaT7tXqYxTsmt$4lxpXsgAHueyEAKCFkyyk7OZuR0aR7dsEO3KDuw9emM=','2022-05-06 15:32:46.227591',1,'admin','','','',1,1,'2022-05-05 10:36:50.350005');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_city`
--

DROP TABLE IF EXISTS `cities_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `population` int NOT NULL,
  `country_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_city_country_id_779ae117_fk_cities_country_id` (`country_id`),
  CONSTRAINT `cities_city_country_id_779ae117_fk_cities_country_id` FOREIGN KEY (`country_id`) REFERENCES `cities_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_city`
--

LOCK TABLES `cities_city` WRITE;
/*!40000 ALTER TABLE `cities_city` DISABLE KEYS */;
INSERT INTO `cities_city` VALUES (1,'Токио',38500,5),(2,'Джакарта',32275,2),(3,'Дели',27280,1),(4,'Манила',24650,4),(5,'Шанхай',24115,3),(6,'Мумбаи',23265,1),(7,'Пекин',21200,3),(8,'Гуанчжоу',20060,3),(9,'Осака',17165,5),(10,'Нью-Йорк',21757,10),(11,'Сан-Пауло',21100,7),(12,'Мехико',20500,8),(13,'Лос-Анджелес',15620,10),(14,'Буэнос-Айрес',15520,6),(15,'Лима',11300,9),(16,'Чикаго',9100,10),(17,'Даллас',6600,10),(18,'Сан-Хосе',6500,10),(19,'Каир',16545,12),(20,'Лагос',13900,15),(21,'Киншасса',12500,14),(22,'Йоханнесбург',9115,17),(23,'Луанда',7560,11),(24,'Найроби',5700,13),(25,'Дар-эс-Салам',4980,16),(26,'Александрия',4960,12),(27,'Гиза',3300,12),(28,'Москва',16855,21),(29,'Стамбул',13995,22),(30,'Париж',10900,23),(31,'Лондон',10500,18),(32,'Мадрид',6385,19),(33,'Милан',5200,20),(34,'Санкт-Петербург',5175,21),(35,'Анкара',4850,22),(36,'Барселона',4840,19);
/*!40000 ALTER TABLE `cities_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_continent`
--

DROP TABLE IF EXISTS `cities_continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_continent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `continent` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_continent`
--

LOCK TABLES `cities_continent` WRITE;
/*!40000 ALTER TABLE `cities_continent` DISABLE KEYS */;
INSERT INTO `cities_continent` VALUES (1,'Азия'),(2,'Америка'),(3,'Африка'),(4,'Европа');
/*!40000 ALTER TABLE `cities_continent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_country`
--

DROP TABLE IF EXISTS `cities_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(20) NOT NULL,
  `continent_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_country_continent_id_94626ba7_fk_cities_continent_id` (`continent_id`),
  CONSTRAINT `cities_country_continent_id_94626ba7_fk_cities_continent_id` FOREIGN KEY (`continent_id`) REFERENCES `cities_continent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_country`
--

LOCK TABLES `cities_country` WRITE;
/*!40000 ALTER TABLE `cities_country` DISABLE KEYS */;
INSERT INTO `cities_country` VALUES (1,'Индия',1),(2,'Индонезия',1),(3,'Китай',1),(4,'Филиппины',1),(5,'Япония',1),(6,'Аргентина',2),(7,'Бразилия',2),(8,'Мексика',2),(9,'Перу',2),(10,'США',2),(11,'Ангола',3),(12,'Египед',3),(13,'Кения',3),(14,'Конго',3),(15,'Нигерия',3),(16,'Танзания',3),(17,'ЮАР',3),(18,'Великобритания',4),(19,'Испания',4),(20,'Италия',4),(21,'Россия',4),(22,'Турция',4),(23,'Франция',4);
/*!40000 ALTER TABLE `cities_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-05 10:40:09.269108','1','Continent object (1)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(2,'2022-05-05 10:40:18.889150','2','Continent object (2)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(3,'2022-05-05 10:40:25.674696','3','Continent object (3)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(4,'2022-05-05 10:40:29.986318','4','Continent object (4)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(5,'2022-05-05 10:43:13.268544','1','Continent object (1)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(6,'2022-05-05 10:43:34.829293','2','Continent object (2)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(7,'2022-05-05 10:43:38.251942','3','Continent object (3)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2),(8,'2022-05-05 10:43:41.994696','4','Continent object (4)',2,'[{\"changed\": {\"fields\": [\"Continent\"]}}]',7,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'cities','city'),(7,'cities','continent'),(8,'cities','country'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-04 14:36:54.066473'),(2,'auth','0001_initial','2022-05-04 14:36:54.600119'),(3,'admin','0001_initial','2022-05-04 14:36:54.741138'),(4,'admin','0002_logentry_remove_auto_add','2022-05-04 14:36:54.756762'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-04 14:36:54.772386'),(6,'contenttypes','0002_remove_content_type_name','2022-05-04 14:36:54.884180'),(7,'auth','0002_alter_permission_name_max_length','2022-05-04 14:36:54.945091'),(8,'auth','0003_alter_user_email_max_length','2022-05-04 14:36:54.992398'),(9,'auth','0004_alter_user_username_opts','2022-05-04 14:36:55.008027'),(10,'auth','0005_alter_user_last_login_null','2022-05-04 14:36:55.070539'),(11,'auth','0006_require_contenttypes_0002','2022-05-04 14:36:55.070539'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-04 14:36:55.086551'),(13,'auth','0008_alter_user_username_max_length','2022-05-04 14:36:55.149051'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-04 14:36:55.211978'),(15,'auth','0010_alter_group_name_max_length','2022-05-04 14:36:55.243223'),(16,'auth','0011_update_proxy_permissions','2022-05-04 14:36:55.243223'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-04 14:36:55.321762'),(18,'cities','0001_initial','2022-05-04 14:36:55.478404'),(19,'sessions','0001_initial','2022-05-04 14:36:55.510044');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('16ee2iw3txti3s26ay0poidiauyi2yvp','.eJxVjEEOgjAQRe_StWnoTGdKXbrnDGSgo0VNSSisjHdXEha6_e-9_zK9bGvut6pLPyVzNmxOv9sg40PLDtJdym2241zWZRrsrtiDVtvNSZ-Xw_07yFLzt8aIRIPHxnmEgNx6CBFAOCgheHKuJZGrTyGSUkRIrMQNaGB2DQTz_gCGADVw:1nmuKx:u1d3CoooEA5YSAm_i39TRslc7bDXE9-InA3IBaILM-w','2022-05-06 09:35:03.705799'),('38jofg30legcqhkc4h4oy71uoc7yipvh','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmzMo:sxb4hlKaneR1RpIoGYGeEUsn7Ek42o_WNBxXZY3A_uw','2022-05-06 15:12:18.825514'),('4uxfc6ny4en8lhmk760hwq3t3itnkryx','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmucm:GycTfMc7u_yH3pChslvg0vC0kYzABWVCbZ_c83QukNI','2022-05-06 09:53:28.376553'),('9z2tgk03f02rhgrhvojc3l5vdw2us0tq','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmZ08:JVDJKLyDd4SWmVp3UJHWQ7M8rvegOLRKnBYZrXlr2gc','2022-05-05 10:48:08.881258'),('ccg5stwy6rxovtja3hwvyyoj53aqzwjw','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmukK:3PWk4SBPX70w_zUt6VzRK6gtuAcEsrI-zCcISKerEA0','2022-05-06 10:01:16.546803'),('ch16cr260k5itrsb0eopw4ggnbh8c3fr','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmZ25:u9-ZXV-5FIHXDNP9jg9tC251slyH5kIhCl4m9TdFtt8','2022-05-05 10:50:09.245782'),('i1jp9m6dpssbamxeojjw6dxjhfkj12m6','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmv3w:CWjb8snBkmBo__tF04HUA8PXoDT3y1dGr2ISgzQNguo','2022-05-06 10:36:32.192441'),('iehztzixu07o3repbwct0krp0ashmo0a','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmYEf:KIBVsycRTgtzvte8u1NGYgKld-bVtnHh-4hOn8VWUS0','2022-05-05 09:57:35.062338'),('ijg22fhrzbg0m828338btbely8gctspp','.eJxVjEEOgjAQRe_StWnoTGdKXbrnDGSgo0VNSSisjHdXEha6_e-9_zK9bGvut6pLPyVzNmxOv9sg40PLDtJdym2241zWZRrsrtiDVtvNSZ-Xw_07yFLzt8aIRIPHxnmEgNx6CBFAOCgheHKuJZGrTyGSUkRIrMQNaGB2DQTz_gCGADVw:1nmuTZ:RYuVEIrK2f3n1mNtNL4nwmMbqz8Vll1IdLb_ERb_xmQ','2022-05-06 09:43:57.863528'),('jj9i8vewex8x5i9hsx13ot57v3r1oqqc','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmYuy:l49yuumm6LSOHTKaWibLFJrrRPWaZQF8QBICO60CZc0','2022-05-05 10:42:48.604981'),('k94mf1spzyzdltzgizd84j8fm25f4aji','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmzwk:VICPPVCW4sziBGkLFNrC-ZYfoaU_kSrXb1uuteCoTiw','2022-05-06 15:49:26.241085'),('kniep3dhgmn9qu866i6k617av9gbngo8','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmYwq:yR80B_5B2jYRxyuaGNH0z8oorAHK640tGOPP6d9Yilk','2022-05-05 10:44:44.773828'),('ldib2gvxbrpk7h8yscr40gi3d7n8bhmw','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmYNM:unGwRYFKPuWyeozxKaNac5yS6Uo2HHRLodn5w-EsqvY','2022-05-19 10:06:24.175573'),('oyx0bzhffs44ufsmitp7d9sg3u041g19','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmvVw:X3f5aOIKdIBuP8ItAShNmjfWX0i9kiR0bNlDoN5aGto','2022-05-06 11:05:28.343426'),('s121x9wqoy8jrbb4bpzfihsnm2jv61fo','.eJxVjEEOwiAQRe_C2pBSGBhcuvcMZOhMpWpoUtqV8e7apAvd_vfef6lE21rS1mRJE6uzAnX63TIND6k74DvV26yHua7LlPWu6IM2fZ1ZnpfD_Tso1Mq3jtwhgpFgPSFHh-wCSswmkrejzR16tMEYBu49ghOAyNllcKYnGb16fwDAdTcL:1nmu9I:FeEye1JeE4BDt8QZzWWR31_sxvC1U0xLWF5zCVnpij0','2022-05-06 09:23:00.457405'),('t2nljpjzw1j553m2zpf2wa1670eljift','.eJxVjEEOgjAQRe_StWnoTGdKXbrnDGSgo0VNSSisjHdXEha6_e-9_zK9bGvut6pLPyVzNmxOv9sg40PLDtJdym2241zWZRrsrtiDVtvNSZ-Xw_07yFLzt8aIRIPHxnmEgNx6CBFAOCgheHKuJZGrTyGSUkRIrMQNaGB2DQTz_gCGADVw:1nmuOq:I276I6mMb6u8ncoNYOzBdVT9zOtCk_tr5fIR36HUSFk','2022-05-06 09:39:04.514877'),('wo7k9i22ecom0uheybd37nlyntiybltw','.eJxVjMEOwiAQRP-FsyGlpcvi0bvf0OyyYKsGktKejP-uJD3obTLvzbzURPs2T3uN67SIOqtenX47pvCIuQG5U74VHUre1oV1U_RBq74Wic_L4f4dzFTn7xrREXv2A408kOnQJmGKniVAJwYAISUESsAwMg_OOGg5ou17i6N6fwD8NDgb:1nmYrD:Fff73zlEqiE8JOcy5sV_Az21nlrFjjU6TNWkh6AFqDM','2022-05-05 10:38:55.313369'),('y9x5e4aq5t3c9v75ji2tvdmcxn3iv49p','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmYJU:JmHuSyxNzJA3n5_CKsVrNN-kujopsCK_beRMGSIHgAQ','2022-05-05 10:02:34.301672'),('yiqs9widr31je8020twb0aorr7s0tpqf','.eJxVjEEOwiAQRe_C2pAZKC24dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWKE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aR4cTMNJk2GXMATCyJhiNdZyZB-20dTaMajAR0RqTwYJVJioAl0i8P9QVNxM:1nmuet:KPInBfn_f-yyDZhcv_9SB-MJqKYiKUWFonieIVo_jwY','2022-05-06 09:55:39.466312');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 22:35:06
