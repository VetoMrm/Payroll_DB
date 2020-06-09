/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.19 : Database - payroll_vt_db
*********************************************************************
Server version : 5.5.19
*/


create database if not exists `payroll_vt_db`;

USE `payroll_vt_db`;

/*Table structure for table `bank_names` */

DROP TABLE IF EXISTS `bank_names`;

CREATE TABLE `bank_names` (
  `BANK_ID` int(11) NOT NULL,
  `BANK_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BANK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_names` */

insert into `bank_names` values 
(1,'Allahabad Bank'),
(2,'Andhra Bank'),
(3,'Bank of Baroda - Corporate Banking'),
(4,'Bank of Baroda - Retail Banking'),
(5,'Bank of India'),
(7,'Bank of Maharashtra'),
(8,'Canara Bank'),
(9,'Central Bank of India'),
(10,'City Union Bank'),
(11,'Corporation Bank'),
(12,'Development Credit Bank'),
(13,'Dhanlaxmi Bank'),
(14,'Federal Bank'),
(15,'HDFC Bank'),
(16,'ICICI Bank'),
(17,'IDBI Bank'),
(18,'Indian Bank'),
(19,'Indian Overseas Bank'),
(20,'IndusInd Bank'),
(21,'ING Vysya Bank'),
(22,'Jammu and Kashmir Bank'),
(23,'Karnataka Bank Ltd'),
(24,'Karur Vysya Bank'),
(25,'Kotak Bank'),
(26,'Laxmi Vilas Bank'),
(27,'Oriental Bank of Commerce'),
(28,'Punjab National Bank - Corporate Banking'),
(29,'Punjab National Bank - Retail Banking'),
(30,'Punjab & Sind Bank'),
(31,'South Indian Bank'),
(32,'State Bank of Bikaner & Jaipur'),
(33,'State Bank of Hyderabad'),
(34,'State Bank of India'),
(35,'State Bank of Mysore'),
(36,'State Bank of Patiala'),
(37,'State Bank of Travancore'),
(38,'Syndicate Bank'),
(39,'Tamilnad Mercantile Bank Ltd.'),
(40,'UCO Bank'),
(41,'Union Bank of India'),
(42,'United Bank of India'),
(43,'Vijaya Bank'),
(44,'Yes Bank Ltd'),
(45,'Others');

/*Table structure for table `contact_us_table` */

DROP TABLE IF EXISTS `contact_us_table`;

CREATE TABLE `contact_us_table` (
  `CONTACT_ID` int(11) NOT NULL,
  `CONTACT_DATE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact_us_table` */

insert into `contact_us_table` values 
(7,'06-05-2020','manju@gmail.com','kjhjhhj','hjhghhj','rrrrrrrrrrrrrrrrrrrr','ughghjy');

/*Table structure for table `department_names` */

DROP TABLE IF EXISTS `department_names`;

CREATE TABLE `department_names` (
  `DEPARTMENT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `department_names` */

insert into `department_names` values 
(1,'Accounts'),
(2,'Audits'),
(3,'Direct Tax'),
(4,'Indirect Tax'),
(5,'MIS'),
(6,'Legal & Complians');

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `DESIGNATION_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` varchar(255) DEFAULT NULL,
  `DESIGNATION_NAME` varchar(255) DEFAULT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DESIGNATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

insert into `designation` values 
(1,'T','Trainee','ROLE_TRAINEE'),
(2,'T','Junior Team Coordinator','ROLE_JUNIOR_TEAM_COORDINATOR'),
(3,'T','Team Coordinator','ROLE_TEAM_COORDINATOR'),
(4,'T','Assistant Team Lead','ROLE_ASSISTANT_TEAM_LEAD'),
(5,'T','Team Lead','ROLE_TEAM_LEAD'),
(6,'T','Sr.Team Lead','ROLE_SR_TEAM_LEAD'),
(7,'T','Manager','ROLE_MANAGER'),
(8,'T','CEO','ROLE_CEO');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` varchar(255) DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(255) DEFAULT NULL,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `ADDHAR_NO` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BRANCH_ADDRESS` varchar(255) DEFAULT NULL,
  `BRANCH_NAME` varchar(255) DEFAULT NULL,
  `BANK_NAME` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(255) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(255) DEFAULT NULL,
  `DATE_OF_LEAVING` varchar(255) DEFAULT NULL,
  `DATE_OF_RESIGNATION` varchar(255) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) NOT NULL,
  `EMAIL_ID` varchar(255) NOT NULL,
  `EMPLOYEE_NAME_AS_PER_AADHAR` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `IFSC_NUMBER` varchar(255) DEFAULT NULL,
  `IMAGE` longblob,
  `MOBILE_NO` varchar(255) NOT NULL,
  `PAN_NO` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SUPERVISOR_NAME` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_STATUS` varchar(255) DEFAULT NULL,
  `USER_TYPE` varchar(255) DEFAULT NULL,
  `EMPLOYEE_NAME` varchar(50) NOT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  `DESIGNATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `UKdnx7ivjdsl8h7q1twaxgr78pj` (`EMPLOYEE_NAME`,`EMAIL_ID`),
  KEY `FK27ny8k7wujbbdw9qddwxyj912` (`DEPARTMENT_ID`),
  KEY `FKe8tk84nl6r570yekcjm3ccs4b` (`DESIGNATION_ID`),
  CONSTRAINT `FK27ny8k7wujbbdw9qddwxyj912` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `department_names` (`DEPARTMENT_ID`),
  CONSTRAINT `FKe8tk84nl6r570yekcjm3ccs4b` FOREIGN KEY (`DESIGNATION_ID`) REFERENCES `designation` (`DESIGNATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert into `employee` values 
(1,'1221','HJDJDJD',1,'HHDHDH','DDDD',112,'HFHFH','DDA','DHDHD','HHSHSH','HAHAH','aass','hshshsh','hdh','SSSS','manju@gmail.com','MMMMM','NAA','DSDSS',NULL,'2222','HFHFH','HHGHGH','JDJJDD',NULL,'hahah','hahah','MAMA',1,1),
(3,'1221','HJDJDJD',1,'HHDHDH','DDDD',112,'HFHFH','DDA','DHDHD','HHSHSH','HAHAH','aass','hshshsh','hdh','SSSS','rmanj@gmail.com','MMMMM','NAA','DSDSS',NULL,'2222','HFHFH','HHGHGH','JDJJDD',NULL,'hahah','hahah','RESS',1,1),
(4,'1221','HJDJDJD',1,'HHDHDH','DDDD',112,'HFHFH','DDA','DHDHD','HHSHSH','HAHAH','aass','hshshsh','hdh','SSSS','rrr@gmail.com','MMMMM','NAA','DSDSS',NULL,'2222','HFHFH','HHGHGH','JDJJDD',NULL,'hahah','hahah','ramesh',1,1),
(5,'1221','HJDJDJD',1,'HHDHDH','DDDD',112,'HFHFH','DDA','DHDHD','HHSHSH','HAHAH','aass','hshshsh','hdh','SSSS','gtanesh@gmail.com','MMMMM','NAA','DSDSS',NULL,'2222','HFHFH','HHGHGH','JDJJDD',NULL,'hahah','hahah','RESS',1,1),
(6,'1212','22222222222',1,'2222-2222-2222-2222','sfsvsddhjks',22,'fdvsdvcv','sdfvs','Dhanlaxmi Bank','hhvkjsh','1996-03-31','2020-04-17','2020-04-18','2020-04-01','SSQSWSQWQW','manjuqw@gmail.com','kjkjvnvkjs',NULL,'sbin2222222',NULL,'8867883796','dqipm3407c',NULL,'fjvfdjv',NULL,NULL,NULL,'ssqswsqwqw',2,3),
(7,'121112121','20229037125',1,'1111-1111-2222-1111','marathahalli ',25,'Maharastra','Doddanekkundi','IDBI Bank','Bangalore','1996-03-31','2020-01-01','2020-05-30','2020-05-28','MANJUNATH R','manjunathramesh4@gmail.com','Manjunath Ramesh Mesta',NULL,'SBIN2222222',NULL,'8867883796','DQIPM3407C','aoL9VQ6K','Jagdeesha',NULL,NULL,NULL,'Manjunath R',3,2);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert into `hibernate_sequence` values 
(20),
(20),
(20),
(20),
(20),
(20),
(20),
(20),
(20),
(20),
(20),
(20);

/*Table structure for table `investment_declaration_actual` */

DROP TABLE IF EXISTS `investment_declaration_actual`;

CREATE TABLE `investment_declaration_actual` (
  `ID` int(11) NOT NULL,
  `CCD_CENTRAL_GOVT_EMPLOYEE_PENSION_PLAN` varchar(255) DEFAULT NULL,
  `80G_80GGA_80GGC_DONATION_TO_APPROVED_FUNDS` varchar(255) DEFAULT NULL,
  `EPF_AND_VPF_CONTRIBUTION` varchar(255) DEFAULT NULL,
  `80_DDB_EXPENDITURE_ON_SELECTED_MEDICAL_TREATMENT` varchar(255) DEFAULT NULL,
  `HOUSING_LOAN` varchar(255) DEFAULT NULL,
  `80_E_INTIAL_PAID_ON_EDUCATION_LOAN` varchar(255) DEFAULT NULL,
  `NSC` varchar(255) DEFAULT NULL,
  `LIFE_INSURANCE_PREMIUMS` varchar(255) DEFAULT NULL,
  `80_D_MEDICAL_INSURANCE_PREMIUMS_FOR_PARENTS` varchar(255) DEFAULT NULL,
  `80_D_MEDICAL_INSURANCE_PREMIUMS_FOR_SELF` varchar(255) DEFAULT NULL,
  `80_DD_MEDICAL_TREATMENT_OF_HANDICAPPED_DEPENDENT` varchar(255) DEFAULT NULL,
  `NEW_PENSION_SCHEME` varchar(255) DEFAULT NULL,
  `MUTUAL_FUNDS` varchar(255) DEFAULT NULL,
  `PUBLIC_PROVIDENR_FUND` varchar(255) DEFAULT NULL,
  `80GD_FOR_RENT_IN_CASE_OF_NO_HRA_COMPONENT_BUDGET_2016` varchar(255) DEFAULT NULL,
  `SENIOR_CITIZEN_SAVING_SCHEME` varchar(255) DEFAULT NULL,
  `STAMP_DUTY_REGISTRATION_CHARGES` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUKANYA_SAMRIDDHI_ACCOUNT` varchar(255) DEFAULT NULL,
  `TAX_SAVING_FIXED_DEPOSIT` varchar(255) DEFAULT NULL,
  `TAX_SAVING_MUTUAL_FUND` varchar(255) DEFAULT NULL,
  `TAX_SAVING_BONDS` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT_FOR_80C` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT_FOR_80D` varchar(255) DEFAULT NULL,
  `TUTION_FEES_FOR_TWO_CHILDREN` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKkdcbxmw758xci6bpwlr86h8st` (`USER_ID`),
  CONSTRAINT `FKkdcbxmw758xci6bpwlr86h8st` FOREIGN KEY (`USER_ID`) REFERENCES `employee` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `investment_declaration_actual` */

/*Table structure for table `investment_declaration_planned` */

DROP TABLE IF EXISTS `investment_declaration_planned`;

CREATE TABLE `investment_declaration_planned` (
  `ID` int(11) NOT NULL,
  `CCD_CENTRAL_GOVT_EMPLOYEE_PENSION_PLAN` varchar(255) DEFAULT NULL,
  `80G_80GGA_80GGC_DONATION_TO_APPROVED_FUNDS` varchar(255) DEFAULT NULL,
  `EPF_AND_VPF_CONTRIBUTION` varchar(255) DEFAULT NULL,
  `80_DDB_EXPENDITURE_ON_SELECTED_MEDICAL_TREATMENT` varchar(255) DEFAULT NULL,
  `HOUSING_LOAN` varchar(255) DEFAULT NULL,
  `80_E_INTIAL_PAID_ON_EDUCATION_LOAN` varchar(255) DEFAULT NULL,
  `NSC` varchar(255) DEFAULT NULL,
  `LIFE_INSURANCE_PREMIUMS` varchar(255) DEFAULT NULL,
  `80_D_MEDICAL_INSURANCE_PREMIUMS_FOR_PARENTS` varchar(255) DEFAULT NULL,
  `80_D_MEDICAL_INSURANCE_PREMIUMS_FOR_SELF` varchar(255) DEFAULT NULL,
  `80_DD_MEDICAL_TREATMENT_OF_HANDICAPPED_DEPENDENT` varchar(255) DEFAULT NULL,
  `NEW_PENSION_SCHEME` varchar(255) DEFAULT NULL,
  `MUTUAL_FUNDS` varchar(255) DEFAULT NULL,
  `PUBLIC_PROVIDENR_FUND` varchar(255) DEFAULT NULL,
  `80GD_FOR_RENT_IN_CASE_OF_NO_HRA_COMPONENT_BUDGET_2016` varchar(255) DEFAULT NULL,
  `SENIOR_CITIZEN_SAVING_SCHEME` varchar(255) DEFAULT NULL,
  `STAMP_DUTY_REGISTRATION_CHARGES` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUKANYA_SAMRIDDHI_ACCOUNT` varchar(255) DEFAULT NULL,
  `TAX_SAVING_FIXED_DEPOSIT` varchar(255) DEFAULT NULL,
  `TAX_SAVING_MUTUAL_FUND` varchar(255) DEFAULT NULL,
  `TAX_SAVING_BONDS` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT_FOR_80C` varchar(255) DEFAULT NULL,
  `TOTAL_AMOUNT_FOR_80D` varchar(255) DEFAULT NULL,
  `TUTION_FEES_FOR_TWO_CHILDREN` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK75x4jwyerwgrensbbv4v88qpq` (`USER_ID`),
  CONSTRAINT `FK75x4jwyerwgrensbbv4v88qpq` FOREIGN KEY (`USER_ID`) REFERENCES `employee` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `investment_declaration_planned` */

/*Table structure for table `leave_apply_for_employee` */

DROP TABLE IF EXISTS `leave_apply_for_employee`;

CREATE TABLE `leave_apply_for_employee` (
  `LEAVE_APPLY_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `END_DATE` varchar(255) DEFAULT NULL,
  `LEAVE_STATUS` varchar(255) DEFAULT NULL,
  `NO_OF_LEAVES_APPLIED` varchar(255) DEFAULT NULL,
  `REASON_FOR_LEAVE` varchar(255) DEFAULT NULL,
  `REASON_FOR_LEAVE_Rejection` varchar(255) DEFAULT NULL,
  `START_DATE` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_AVAILABLE` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_TAKEN` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_THERE` varchar(255) DEFAULT NULL,
  `LEAVE_MANAGEMENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LEAVE_APPLY_ID`),
  KEY `FKmp1jyt7pq2jra5qegnli7p6u1` (`LEAVE_MANAGEMENT_ID`),
  CONSTRAINT `FKmp1jyt7pq2jra5qegnli7p6u1` FOREIGN KEY (`LEAVE_MANAGEMENT_ID`) REFERENCES `leave_management` (`LEAVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leave_apply_for_employee` */

/*Table structure for table `leave_management` */

DROP TABLE IF EXISTS `leave_management`;

CREATE TABLE `leave_management` (
  `LEAVE_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `END_DATE` varchar(255) DEFAULT NULL,
  `LEAVE_STATUS` varchar(255) DEFAULT NULL,
  `NO_OF_LEAVES_APPLIED` varchar(255) DEFAULT NULL,
  `REASON_FOR_LEAVE` varchar(255) DEFAULT NULL,
  `START_DATE` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_AVAILABLE` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_TAKEN` varchar(255) DEFAULT NULL,
  `TOTAL_NO_OF_LEAVES_THERE` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `LEAVE_TYPE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LEAVE_ID`),
  KEY `FKo72fp3wxjsa7o2w16lfdpd2no` (`USER_ID`),
  KEY `FKt3djg0g2b0qm6rsxeeup6of09` (`LEAVE_TYPE_ID`),
  CONSTRAINT `FKo72fp3wxjsa7o2w16lfdpd2no` FOREIGN KEY (`USER_ID`) REFERENCES `employee` (`USER_ID`),
  CONSTRAINT `FKt3djg0g2b0qm6rsxeeup6of09` FOREIGN KEY (`LEAVE_TYPE_ID`) REFERENCES `leave_type_master` (`LEAVE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leave_management` */

/*Table structure for table `leave_type_master` */

DROP TABLE IF EXISTS `leave_type_master`;

CREATE TABLE `leave_type_master` (
  `LEAVE_TYPE_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `LEAVE_TYPE_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LEAVE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leave_type_master` */

insert into `leave_type_master` values 
(1,1,'Casual Leave'),
(2,1,'Sick Leave'),
(3,1,'Annual Leave'),
(4,1,'Maternity Leave'),
(5,1,'Paternity Leave');

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `SALARY_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `ADVANCE_SALARY` varchar(255) DEFAULT NULL,
  `BASIC_SALARY` varchar(255) DEFAULT NULL,
  `BONUS_OR_INCENTIVE` varchar(255) DEFAULT NULL,
  `CONVEYANCE_ALLOWANCE` varchar(255) DEFAULT NULL,
  `DEARNESS_ALLOWANCE` varchar(255) DEFAULT NULL,
  `ESIC` varchar(255) DEFAULT NULL,
  `GROSS_SALARY` varchar(255) DEFAULT NULL,
  `HRA_SALARY` varchar(255) DEFAULT NULL,
  `MEDICAL_ALLOWANCE` varchar(255) DEFAULT NULL,
  `NET_SALARY` varchar(255) DEFAULT NULL,
  `OTHERS_SALARY` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `PT` varchar(255) DEFAULT NULL,
  `REASON_FOR_SALARY_REJECTION` varchar(255) DEFAULT NULL,
  `SALARY_STATUS` varchar(255) DEFAULT NULL,
  `SPECIAL_ALLOWANCE` varchar(255) DEFAULT NULL,
  `TDS` varchar(255) DEFAULT NULL,
  `TOTAL_DEDUCTION` varchar(255) DEFAULT NULL,
  `TOTAL_EARNINGS` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SALARY_ID`),
  KEY `FK7ufr2p7pkxgrr8t0lmeegrrrh` (`USER_ID`),
  CONSTRAINT `FK7ufr2p7pkxgrr8t0lmeegrrrh` FOREIGN KEY (`USER_ID`) REFERENCES `employee` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

insert into `salary` values 
(11,1,'2','1','1','1','1','2','4','1','1','4','1','2','1','hello','accepted','1','9','6','200',7),
(12,0,'12','2','2','2','2','11','264','2','2','264','2','22','2','hello','accepted','2','18','45','200',4),
(13,1,'21','3','3','3','3','121','231','3','3','231','3','11','3','hello','accepted','3','27','153',NULL,7),
(14,1,'999','9','9','9','9','999','98901','9','9','98901','9','99','9','hello','accepted','9','81','2097',NULL,7),
(15,1,'99','12','9','9','9','99','9801','121','9','9801','9','99','9','hello','accepted','121','308','297',NULL,7),
(16,1,'88','8','8','88','8','88','7744','8','8','7744','8','88','8','hello','accepted','88','232','264',NULL,7),
(17,1,'12','11','1','1','1','12','144','1','1','144','1','12','1','hello','accepted','1',NULL,'36',NULL,7),
(18,1,'12','5','5','5','5','12','144','5','5','144','5','12','5','hello','accepted','5','45','36',NULL,7),
(19,1,'12','4','4','4','4','111','1476','4','4','1476','44','123','4','hello','accepted','4','76','246',NULL,7);

/*Table structure for table `tax_rate` */

DROP TABLE IF EXISTS `tax_rate`;

CREATE TABLE `tax_rate` (
  `TAX_ID` int(11) NOT NULL,
  `ENDING_AMOUNT` varchar(255) DEFAULT NULL,
  `STARTING_AMOUNT` varchar(255) DEFAULT NULL,
  `TAX_RATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TAX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tax_rate` */

insert into `tax_rate` values 
(1,'660000','30000','11%'),
(2,'1000','250000','5%'),
(3,'1000000','500000','20%'),
(4,'2000000','1000000','25%');
