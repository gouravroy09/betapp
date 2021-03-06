-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: itemlistdb
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `employee_reimbursement_history`
--

DROP TABLE IF EXISTS `employee_reimbursement_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_reimbursement_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `reimbursement_type` int(11) NOT NULL,
  `reimbursement_amount` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_reimbursement_history`
--

LOCK TABLES `employee_reimbursement_history` WRITE;
/*!40000 ALTER TABLE `employee_reimbursement_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_reimbursement_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'Regular'),(2,'FT/Contract'),(3,'Consultant'),(4,'Mas'),(5,'UPL');
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reimbursement`
--

DROP TABLE IF EXISTS `reimbursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reimbursement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_type_id` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reimbursement`
--

LOCK TABLES `reimbursement` WRITE;
/*!40000 ALTER TABLE `reimbursement` DISABLE KEYS */;
INSERT INTO `reimbursement` VALUES (1,2,'et',1231,2),(2,1,'zsfdsa',543,4),(3,3,'ewrew',45,4),(4,1,'gjf',345432,345),(5,4,'ewrtwtewterwter',34434343,4);
/*!40000 ALTER TABLE `reimbursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `Id` varchar(50) NOT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES ('1','Go to Market tomorrow','done'),('2','Email to manager','pending'),('3','Push code to GitHub','done'),('4','Go For Running','done'),('5','Go to Movie','pending');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (8,'User creation success','200');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(56) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `emp_no` varchar(50) DEFAULT NULL,
  `doj` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-09 16:46:13


alter table reimbursement add column emp_grade_code varchar(250);
alter table reimbursement add constraint table_constraint unique(emp_type_id,emp_grade_code);
alter table users add column emp_grade_code varchar(250);
alter table users add column emp_type_id int;
alter table reimbursement drop index table_constraint;

/*22nd May'17 at Office*/
alter table employee_reimbursement_history add column filepath varchar(2000);

alter table employee_reimbursement_history add column status enum('pending','hr-approved','fin-approved','processed') default 'pending';

/*29th May'17 at Office*/
alter table reimbursement add column gl_account_number varchar(255);


alter table employee_reimbursement_history change column status status enum('pending','hr-approved','fin-approved','processed','hr-reject-amnt/freq-exceed','hr-reject-doc-nomatch') default 'pending';

/*1st June 2017*/
alter table employee_reimbursement_history add column bill_generated enum('yes','no');

alter table employee_reimbursement_history change column bill_generated bill_generated enum('yes','no') default 'no';

create table miscellaneous (
param varchar(2000),
value varchar(2000)
);
/* 6th June 2-17 */
create table project_code_employee_mapping(project_code varchar(200), employee_id varchar(200));

  drop table  project_code_employee_mapping;

/* 7th June 2-17 */
create table project_code_employee_mapping(project_code varchar(200));

  alter  table employee_reimbursement_history add column project_code varchar(200);

create table miscellaneous (
param varchar(2000),
value varchar(2000)
);


/*30th june 2017*/
CREATE TABLE `employee_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

alter table users add column emp_grade_id int(11);

/*6th july 2017*/
alter table employee_reimbursement_history add column multiplier int(11) default 0;
/*19th july 2017*/
alter table users add column role varchar(300);

/*10th august 2017*/

create table tour_details(
  tour_id int(11) ,
current_advance int(11),

primary key tour_id 
);


alter table employee_reimbursement_history add column tour_id int(11) default 0;
alter table employee_reimbursement_history add column reject_reason varchar(500);

alter table employee_reimbursement_history change column status status enum('pending','hr-approved','fin-approved','processed','hr-reject-amnt/freq-exceed','hr-reject-doc-nomatch','approve_ro') default 'approve_ro';

alter table employee_reimbursement_history add column approver_email varchar(500);

alter table employee_reimbursement_history change column bill_generated bill_generated enum('yes','no') default 'no';


alter table employee_reimbursement_history drop column time;

alter table employee_reimbursement_history ADD `time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;




CREATE TABLE `employee_reimbursement_history_with_rejects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `reimbursement_type` int(11) NOT NULL,
  `reimbursement_amount` int(11) DEFAULT NULL,
  `filepath` varchar(2000) DEFAULT NULL,
  `status` enum('pending','hr-approved','fin-approved','processed','hr-reject-amnt/freq-exceed','hr-reject-doc-nomatch','approve_ro') DEFAULT 'approve_ro',
  `bill_generated` enum('yes','no') DEFAULT 'no',
  `project_code` varchar(200) DEFAULT NULL,
  `multiplier` int(11) DEFAULT '0',
  `tour_id` int(11) DEFAULT '0',
  `reject_reason` varchar(500) DEFAULT NULL,
  `approver_email` varchar(500) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);


drop trigger create_reimbursement_history_copy;
drop trigger update_reimbursement_history_copy;

CREATE TRIGGER create_reimbursement_history_copy AFTER INSERT ON employee_reimbursement_history 
FOR EACH ROW
  insert into employee_reimbursement_history_with_rejects(emp_id,tour_id,reimbursement_type,reimbursement_amount,time,filepath,project_code,multiplier,approver_email,reject_reason)
  select emp_id,tour_id,reimbursement_type,reimbursement_amount,time,filepath,project_code,multiplier,approver_email,reject_reason from employee_reimbursement_history where id=NEW.id;


CREATE TRIGGER update_reimbursement_history_copy AFTER update ON employee_reimbursement_history 
FOR EACH ROW
  insert into employee_reimbursement_history_with_rejects(emp_id,tour_id,reimbursement_type,reimbursement_amount,time,filepath,project_code,multiplier,approver_email,reject_reason,status)
  select emp_id,tour_id,reimbursement_type,reimbursement_amount,time,filepath,project_code,multiplier,approver_email,reject_reason,status from employee_reimbursement_history where id=NEW.id;



alter table employee_reimbursement_history change column status status enum('pending','hr-approved','fin-approved','processed','hr-reject-amnt/freq-exceed','hr-reject-doc-nomatch','approve_ro','reject') default 'approve_ro';




CREATE TABLE `employee_reimbursement_history_with_rejects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `reimbursement_type` int(11) NOT NULL,
  `reimbursement_amount` int(11) DEFAULT NULL,
  `filepath` varchar(2000) DEFAULT NULL,
  `status` enum('pending','hr-approved','fin-approved','processed','hr-reject-amnt/freq-exceed','hr-reject-doc-nomatch','approve_ro','reject') DEFAULT 'approve_ro',
  `bill_generated` enum('yes','no') DEFAULT 'no',
  `project_code` varchar(200) DEFAULT NULL,
  `multiplier` int(11) DEFAULT '0',
  `tour_id` int(11) DEFAULT '0',
  `reject_reason` varchar(500) DEFAULT NULL,
  `approver_email` varchar(500) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);






CREATE TABLE `miscellaneous2` (
  `param` varchar(2000) DEFAULT NULL,
  `value` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



ALTER TABLE miscellaneous MODIFY value datetime default now();






/*5th october 2017*/
CREATE TABLE `employee_code` (   `code` varchar(200) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1;









select u.FullName,u.EmpNo,u.ReportingTo,u.Post,u.PostedAt,t.ToAddress,t.PeriodFrom,t.PeriodTo,t.Purpose,(DATEDIFF(day,CONVERT(DATE, PeriodFrom, 105),CONVERT(DATE, PeriodTo, 105))+1) as no_of_days from TourDetails t inner join Users u on t.UserId = u.Id where TourId=4559 order by t.TourId ;


select u.FullName,u.EmpNo,u.ReportingTo,u.Post,u.PostedAt,t.ToAddress,t.PeriodFrom,t.PeriodTo,t.Purpose,(DATEDIFF(day,CONVERT(DATE, PeriodFrom, 105),CONVERT(DATE, PeriodTo, 105))+1) as no_of_days from TourDetails t inner join Users u on t.UserId = u.Id where u.EmpNo like 'NC%' order by t.TourId desc;
