CREATE DATABASE  IF NOT EXISTS `academia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `academia`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academia
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.6-MariaDB

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
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (0,'HTML y CSS','HTML and CSS','HTML和CSS','10€/h',1,NULL,'41°26\'35.4\"N','2°09\'44.6\"E','Empezaremos con la estructura más básica, empleando el lenguaje HTML. Después, vamos a darle vida y color a nuestras páginas mediante CSS. Aprenderas a crear webs desde cero con HTML y CSS','We will start with the most basic structure, using the HTML language. Then, we will give life and color to our pages using CSS. You will learn to create websites from scratch with HTML and CSS','我们将从最基本的结构开始，使用HTML语言。然后，我们将使用CSS为我们的页面赋予生命和色彩。您将学习如何使用HTML和CSS从头开始创建网站',NULL),(1,'React JS','React JS','React JS','20€/h',1,'','41°25\'06.4\"N','2°11\'08.7\"E','En este curso aprenderás desde cero los conceptos más básicos de React hasta llegar a cubrir conocimientos avanzados. Tanto si ya conoces esta librería o es tu primera toma de contacto, tendrás la posibilidad de conocer a fondo como funciona mediante aplicaciones prácticas, ejercicios y autoevaluaciones.','In this course you will learn from scratch the most basic concepts of React to cover advanced knowledge. Whether you already know this library or it is your first contact, you will have the possibility to know in depth how it works through practical applications, exercises and self-assessments.\n','在本课程中，您将从头学习React的最基本概念，以涵盖高级知识。无论您是否已经知道这个图书馆，或者它是您的第一个联系人，您都可以通过实际应用，练习和自我评估深入了解它的工作原理。',NULL),(2,'JavaScript','JavaScript','JavaScript','80€',1,NULL,'41°26\'26.4\"N','2°14\'42.9\"E','Curso completo, las horas y los dias lo decides tu. Este curso te hará comprender profundamente esta tecnología de programación, brindándote la base sólida que necesitas para entrar con paso firme a cualquier herramienta basada en JavaScript.','Full course, hours and days you decide. This course will make you deeply understand this programming technology, giving you the solid foundation you need to enter any JavaScript-based tool with firm step.','完整课程，您决定的时间和日期。本课程将使您深入理解这种编程技术，为您提供进入任何基于JavaScript的工具所需的坚实基础。',NULL),(3,'Matemáticas','Maths','数学','Sin precio',1,NULL,'41°28\'04.0\"N ','2°16\'30.0\"E','Somos el Instituto Público Thalassa. Damos clases para reforzar matemáticas de Bachillerato y para la ESO. Para más información contactanos.','We are the Thalassa Public Institute. We teach to reinforce high school mathematics and for ESO. For more information contact us.','我们是Thalassa公共研究所。我们教授加强高中数学和ESO。有关更多信息，请联系我们',NULL),(4,'Clases de Bachillerato','High school lessons','高中班','15€/1:30h',1,NULL,'41°28\'31.1\"N','2°14\'58.7\"E','Doy clases de refuerzos para bachillerato, toco todas las asignaturas. Precio negociable, diponibilidad solo fines de semana.','I teach reinforcement for high school, I play all subjects. Price negotiable, available only on weekends.','我教高中加强，我发挥所有科目。价格面议，仅在周末提供。',NULL),(5,'Clases de Guitarra','Guitarlessons','吉他课程','25€/1h',1,NULL,'41°24\'10.7\"N','2°09\'22.8\"E','Empezaremos desde lo más básico hasta un nivel avanzado. Los horarios son flexibles.','We will start from the most basic to an advanced level. The schedules are flexible.','我们将从最基本到最高级别开始。时间表很灵活。',NULL),(6,'Clases de canto','Singing lessons','唱歌课','10€/1h',1,NULL,'41°24\'08.4\"N ','2°09\'16.1\"E','Somos un centro de música. El primer día es gratuito, te introduciré a poder cantar tus primeras notas, las siguientes clases se evaluarán. Horarios consultar en pagina web. ','We are a music center. The first day is free, I will introduce you to be able to sing your first notes, the following classes will be evaluated. Schedules consult on website.','我们是一个音乐中心。第一天是免费的，我将向您介绍能够唱出您的第一个音符，以下课程将进行评估。时间表在网站上咨询。',NULL),(7,'Curso intensico .Net','.Net lessons','.Net课程','Gratuito',1,NULL,'41°32\'00.6\"N','2°26\'27.0\"E','Ofrecemos formación como programador/a junior en tecnología .Net para la posterior inseción en el mercado laboral en el sector TIC.','We offer training as a junior programmer in .Net technology for the subsequent insertion in the labor market in the ICT sector','我们作为.Net技术的初级程序员提供培训，以便随后进入ICT行业的劳动力市场',NULL);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-18  9:20:33
