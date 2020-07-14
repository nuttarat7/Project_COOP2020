-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `tb_adviser`;
CREATE TABLE `tb_adviser` (
  `adviser_id` varchar(11) NOT NULL,
  `adviser_fullname` varchar(1000) DEFAULT NULL,
  `adviser_is_officer` int(11) DEFAULT '0',
  PRIMARY KEY (`adviser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_adviser` (`adviser_id`, `adviser_fullname`, `adviser_is_officer`) VALUES
('aekapop',	'อาจารย์ เอกภพ บุญเพ็ง',	0),
('athitha',	'อาจารย์ อธิตา อ่อนเอื้อน',	0),
('benchapo',	'อาจารย์ เบญจภรณ์ จันทรกองกุล',	0),
('jakkarin',	'ผู้ช่วยศาสตราจารย์ ดร. จักริน สุขสวัสดิ์ชน',	0),
('janya',	'อาจารย์ จรรยา อ้นปันส์',	0),
('komate',	'อาจารย์ โกเมศ อัมพวัน',	0),
('krisana',	'ผู้ช่วยศาสตราจารย์ ดร. กฤษณะ ชินสาร',	0),
('kubola',	'อาจารย์ ดร. คนึงนิจ กุโบลา',	0),
('nuansri',	'ผู้ช่วยศาสตราจารย์ นวลศรี เด่นวัฒนา',	0),
('nutthanon',	'ผู้ช่วยศาสตราจารย์ ดร. ณัฐนนท์ ลีลาตระกูล',	0),
('peerasak',	'อาจารย์ พีระศักดิ์ เพียรประสิทธิ์',	0),
('prawit',	'อาจารย์ ประวิทย์ บุญมี',	0),
('pusit',	'อาจารย์ ภูสิต กุลเกษม',	0),
('rsunisa',	'ผู้ช่วยศาสตราจารย์ ดร. สุนิสา ริมเจริญ',	0),
('rsuwanna',	'ผู้ช่วยศาสตราจารย์ ดร. สุวรรณา รัศมีขวัญ',	0),
('ureerat',	'ผู้ช่วยศาสตราจารย์ ดร. อุรีรัฐ สุขสวัสดิ์ชน',	0),
('wittawas',	'อาจารย์ วิทวัส พันธุมจินดา',	0);

DROP TABLE IF EXISTS `tb_company`;
CREATE TABLE `tb_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name_th` varchar(500) NOT NULL,
  `company_name_en` varchar(500) DEFAULT NULL,
  `company_total_employee` varchar(200) DEFAULT NULL,
  `company_type` varchar(500) DEFAULT NULL,
  `company_start_time` varchar(10) DEFAULT NULL,
  `company_end_time` varchar(10) DEFAULT NULL,
  `company_work_day` varchar(10) DEFAULT NULL,
  `company_agreement` text,
  `headoffice_person_id` int(11) DEFAULT NULL,
  `contact_person_id` int(11) DEFAULT NULL,
  `company_start_month_work` varchar(200) DEFAULT NULL,
  `company_end_month_work` varchar(200) DEFAULT NULL,
  `company_website` varchar(200) NOT NULL,
  `company_created` datetime NOT NULL,
  `company_creator` varchar(100) DEFAULT NULL,
  `company_changed` datetime DEFAULT NULL,
  `company_changer` varchar(100) DEFAULT NULL,
  `company_status` varchar(10) NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `fk_company_company_person1_idx` (`headoffice_person_id`),
  KEY `fk_company_company_person2_idx` (`contact_person_id`),
  CONSTRAINT `tb_company_ibfk_1` FOREIGN KEY (`headoffice_person_id`) REFERENCES `tb_company_person` (`person_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tb_company_ibfk_3` FOREIGN KEY (`contact_person_id`) REFERENCES `tb_company_person` (`person_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company` (`company_id`, `company_name_th`, `company_name_en`, `company_total_employee`, `company_type`, `company_start_time`, `company_end_time`, `company_work_day`, `company_agreement`, `headoffice_person_id`, `contact_person_id`, `company_start_month_work`, `company_end_month_work`, `company_website`, `company_created`, `company_creator`, `company_changed`, `company_changer`, `company_status`) VALUES
(1,	'ซี.เอส.ไอ. กรุ๊ป (C.S.I. Group)',	'CSI',	'10',	'Programmer',	'08:30',	'16:30',	'5',	'-',	117,	119,	'',	'',	'',	'2018-05-01 00:00:00',	NULL,	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(4,	'บริษัท คลิกเน็กซ์ จํากัด',	'Clicknext',	'10',	'Programmer / Analyst',	'08:30',	'18:00',	'5',	'-',	126,	126,	'8,1',	'12,5',	'',	'2018-05-03 20:32:52',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(7,	'บริษัท ล็อซบิก พีเอ จำกัด (มหาชน)',	'PA',	'5',	'Programmer',	'09:00',	'17:00',	'5',	'-',	NULL,	NULL,	'8,1',	'12,5',	'',	'2018-06-08 08:07:22',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(8,	'บริษัท ซอฟต์สแควร์ อินเตอร์เนชั่นแนล จำกัด',	'SoftSquare',	'5',	'Programmer',	'09:30',	'16:30',	'5',	'-',	NULL,	NULL,	'1',	'5',	'',	'2018-06-08 08:15:43',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(9,	'บริษัท GoFive (พริซึ่มโซลูชั่นส์) จำกัด ประจำไซต์ ทีเคเอส',	'GoFive',	'10',	'Programmer / Tester / Web Design',	'08:30',	'18:00',	'5',	'-',	128,	128,	'8,1',	'12,5',	'',	'2018-11-26 06:16:11',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(13,	'บริษัท ไอโคเน็กซ์ จํากัด',	'iCONEXT',	'10',	'Java Platform lmplementation',	'08:30',	'17:30',	'5',	'-',	NULL,	NULL,	'1',	'5',	'',	'2019-01-22 06:23:24',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(18,	'บริษัท เทคสเปซ จำกัด',	'TechSpace',	'2',	'Programmer / Technical Support ',	'08:00',	'17:00',	'5',	'-',	NULL,	NULL,	'1',	'5',	'',	'2019-02-01 07:21:02',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(26,	'บริษัท เอ - โฮสต์ จำกัด',	'AHOST',	'200',	'พัฒนาโปรแกรม',	'08:30',	'17:30',	'5',	'',	130,	130,	'8,1',	'12,5',	'',	'2019-03-18 03:15:49',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(27,	'บริษัท อัฟวาแลนท์ จำกัด',	'Avalant',	'150',	'พัฒนาระบบและโปรแกรม',	'08:30',	'17:30',	'5',	'',	131,	131,	'8,1',	'12,5',	'',	'2019-03-18 03:35:32',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(28,	'บริษัท บิทคับ บล็อคเชน เทคโนโลยี จำกัด',	'Bitkub Blockchain Technology',	'40',	'พัฒนาระบบและโปรแกรม',	'10:00',	'19:00',	'5',	'',	132,	132,	'4,8,1',	'7,12,5',	'',	'2019-03-18 03:44:22',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(29,	'บริษัท ทีบีเคเค (ประเทศไทย) จำกัด',	'TBKK',	'1000',	'ผลิตชิ้นส่วนสำหรับเครื่องยนต์ ชิ้นส่วนอุปกรณ์ และอะไหล่ของระบบเบรค และชุดระบบเบรค',	'08:00',	'17:00',	'5',	'',	133,	133,	'8,1',	'12,5',	'',	'2019-03-18 04:10:47',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(30,	'บริษัท วอล์คเกอร์ เอ็กซอสท์ (ประเทศไทย) จำกัด',	'Walker Exhaust',	'200',	'ประกอบกิจการประเภทการผลิตชิ้นส่วนและอุปกรณ์เสริมอื่นๆสำหรับยานยนต์',	'08:00',	'17:00',	'5',	'',	134,	134,	'8,1',	'12,5',	'',	'2019-03-18 04:31:07',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(31,	'บริษัท สยาม เด็น โซ่ แมนูแฟคเจอริ่ง จำกัด',	'DENSO',	'3197',	'ผลิตระบบคอมมอนเรลและผลิตหัวฉีดน้ำมันแก๊สโซลีน',	'08:00',	'17:00',	'5',	'',	135,	135,	'8,1',	'12,5',	'',	'2019-03-18 04:50:42',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(32,	'บริษัท 5 แล็บ กรุ๊ป จำกัด',	'5Lab',	'10',	'พัฒนาระบบและโปรแกรม',	'10:00',	'18:00',	'5',	'',	136,	136,	'8,1',	'12,5',	'',	'2019-03-18 05:00:12',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(33,	'บริษัท สยามคอมเพรสเซอร์อุตสาหกรรม จำกัด',	'Siamcompressor',	'1500',	'ผู้ผลิตคอมเพรสเซอร์ระบบ ROTARY และระบบ Scroll สำหรับเครื่องปรับอากาศ และเครื่องทำความร้อน',	'08:00',	'17:00',	'5',	'',	137,	137,	'8,1',	'12,5',	'',	'2019-03-18 06:02:12',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(34,	'บริษัท ไอวี ซอฟต์ จำกัด',	'IV Soft',	'3',	'พัฒนาระบบและโปรแกรม',	'09:00',	'17:00',	'5',	'',	139,	139,	'8,1',	'12,5',	'',	'2019-03-18 06:14:05',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(35,	'บริษัท เว็ลธ์ แมเนจเม้นท์ ซิสเท็ม จ ำกัด',	'Wealth Management System Limited',	'50',	'จัดทำโปรแกรมคอมพิวเตอร์ตามวัตถุประสงค์ของผู้ใช้ (ยกเว้นโปรแกรมเว็บเพจและเครือข่าย)',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'2019-03-18 06:37:41',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(37,	'บริษัทซีดีจีและกลุ่มบริษัทจีเอเบิล/บริษัท อ๊อฟติมัส ซอฟต์ จำกัด/',	'CDG',	'300',	'พัฒนาระบบและโปรแกรม',	'08:30',	'17:00',	'5',	'',	140,	140,	'8,1',	'12,5',	'',	'2019-03-18 07:47:17',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(38,	'บริษัท เอ็ม เอฟ อี ซี จำกัด (มหาชน)',	'MFEC',	'1000',	'พัฒนาระบบและโปรแกรม',	'08:30',	'18:00',	'5',	'',	141,	141,	'8,1',	'12,5',	'',	'2019-03-18 08:06:47',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(39,	'ศูนย์เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์แห่งชาติ',	'National Electronics and Computer Technology Center  NECTEC',	'1000',	'วิจัยแลพัฒนา',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'2019-03-19 04:36:25',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(40,	'บริษัท กรีน ฮับ จำกัด',	'Green Hub',	'5',	'ประกอบกิจการประเภทกิจกรรมการบริการเทคโนโลยีสารสนเทศและคอมพิวเตอร์อื่นๆ',	'09:00',	'18:00',	'5',	'',	147,	147,	'8',	'12',	'',	'2019-03-19 06:29:27',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(42,	'เทสเทส',	'Test',	'1',	'000',	'20:02',	'22:02',	'1',	'00255',	159,	159,	'8',	'12',	'',	'2019-05-02 06:54:55',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(47,	'บริษัท เต้ จำกัด',	NULL,	NULL,	NULL,	'08:00',	'21:00',	'7',	'Do not bring your pet to work.',	207,	209,	'8',	'12',	'',	'2019-05-16 06:36:50',	'kamonwans',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(81,	'ทดสอบ',	'test',	'',	'Programmer',	'15:00',	'08:00',	'6',	'ss',	222,	222,	'',	'',	'',	'2019-05-21 09:34:49',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(82,	'test 22-05-62',	'',	'',	'',	'',	'',	'',	'',	223,	223,	'',	'',	'',	'2019-05-22 11:25:02',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(83,	'test1',	'',	'',	'',	'',	'',	'',	'',	224,	224,	'',	'',	'',	'2019-05-22 12:42:21',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(84,	'ทดสอบerror',	'',	'',	'',	'',	'',	'',	'',	225,	225,	'',	'',	'',	'2019-05-22 12:53:53',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(85,	'ทดสอบerror1',	'test',	'',	'qq',	'',	'',	'',	'qqqqq',	226,	226,	'8',	'12',	'',	'2019-05-22 12:56:47',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(86,	'test09',	'',	'',	'',	'',	'',	'',	'',	227,	227,	'',	'',	'',	'2019-05-22 13:42:13',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(87,	'A',	'',	'',	'',	'',	'',	'',	'',	229,	229,	'',	'',	'',	'2019-05-22 13:48:46',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(88,	'test10',	'',	'',	'',	'',	'',	'',	'',	228,	228,	'',	'',	'',	'2019-05-22 13:49:02',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(89,	'test11',	'',	'',	'',	'',	'',	'',	'',	230,	230,	'',	'',	'',	'2019-05-22 13:59:06',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(90,	'test200',	'',	'',	'',	'',	'',	'',	'',	232,	232,	'',	'',	'',	'2019-05-22 14:35:49',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(91,	'test 24-05-62',	'test',	'2',	'ddd',	'',	'',	'',	'',	240,	240,	'',	'',	'',	'2019-05-24 07:15:59',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(92,	'ทดสอบบบบ',	'',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'2019-05-24 07:18:12',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(93,	'ทดดดดด',	'',	'',	'',	'',	'',	'',	'',	241,	241,	'',	'',	'',	'2019-05-24 08:32:29',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(94,	'test111',	'test',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'2019-05-24 11:05:11',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(95,	'test1110',	'test',	'6',	'Programmer',	'',	'',	'',	'',	242,	242,	'',	'',	'',	'2019-05-24 11:07:26',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(96,	'ทททดดดสอออบบบ',	'',	'',	'',	'',	'',	'',	'',	243,	243,	'',	'',	'',	'2019-05-24 11:16:47',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(97,	'test 27-05-62',	'Test',	'1',	'000',	'01:00',	'02:00',	'2',	'-',	244,	244,	'',	'',	'',	'2019-05-27 07:06:21',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(98,	'test1000',	'Test',	'10',	'Programmer',	'10:00',	'16:00',	'5',	'-',	245,	245,	'',	'',	'',	'2019-05-29 07:28:26',	'Kamonwan Sangrawee',	'2019-06-01 11:03:08',	'Kamonwan Sangrawee',	'deactive'),
(99,	'ทดสอบ 29-05-62',	'test',	'5',	'Programmer',	'',	'',	'',	'',	246,	246,	'',	'',	'',	'2019-05-29 12:11:59',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(100,	'test100000',	'iCONEXT',	'10',	'Programmer',	'10:00',	'16:00',	'5',	'-',	247,	247,	'',	'',	'',	'2019-05-29 12:24:34',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(101,	'test tainer',	'',	'',	'',	'',	'',	'',	'',	248,	249,	'',	'',	'',	'2019-05-29 12:51:30',	'Kamonwan Sangrawee',	'2019-06-01 11:01:53',	'Kamonwan Sangrawee',	'deactive'),
(102,	'test 3-6-62',	'test',	'',	'',	'',	'',	'',	'',	255,	255,	'',	'',	'',	'2019-06-03 10:33:15',	'Kamonwan Sangrawee',	'2019-06-03 10:38:56',	'Kamonwan Sangrawee',	'deactive'),
(103,	'test 4-6-62',	'test',	'',	'',	'',	'',	'',	'',	256,	256,	'',	'',	'',	'2019-06-04 05:51:17',	'Kamonwan Sangrawee',	'2019-06-04 05:53:28',	'Kamonwan Sangrawee',	'active');

DELIMITER ;;

CREATE TRIGGER `InsertCompanyLog` BEFORE INSERT ON `tb_company` FOR EACH ROW
BEGIN
		SET New.company_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.company_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCompanyLog` BEFORE UPDATE ON `tb_company` FOR EACH ROW
BEGIN
		SET New.company_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.company_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_company_address`;
CREATE TABLE `tb_company_address` (
  `company_id` int(11) NOT NULL,
  `company_address_latitude` varchar(200) DEFAULT NULL,
  `company_address_longitude` varchar(200) DEFAULT NULL,
  `company_address_number` varchar(200) DEFAULT NULL,
  `company_address_building` varchar(200) DEFAULT NULL,
  `company_address_alley` varchar(200) DEFAULT NULL,
  `company_address_road` varchar(200) DEFAULT NULL,
  `company_address_district` varchar(200) DEFAULT NULL,
  `company_address_area` varchar(200) DEFAULT NULL,
  `company_address_province` varchar(200) DEFAULT NULL,
  `company_address_postal_code` varchar(200) DEFAULT NULL,
  `company_address_created` datetime NOT NULL,
  `company_address_creator` varchar(100) DEFAULT NULL,
  `company_address_changed` datetime DEFAULT NULL,
  `company_address_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  CONSTRAINT `fk_company_address_company1` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_address` (`company_id`, `company_address_latitude`, `company_address_longitude`, `company_address_number`, `company_address_building`, `company_address_alley`, `company_address_road`, `company_address_district`, `company_address_area`, `company_address_province`, `company_address_postal_code`, `company_address_created`, `company_address_creator`, `company_address_changed`, `company_address_changer`) VALUES
(1,	'13.728296',	'100.535269',	'191',	'สีลมคอมเพล็กซ์ ชั้น 28',	'-',	'สีลม',	'ทุ่งพญาไท',	'บางรัก',	'กรุงเทพมหานคร',	'10500',	'2019-02-01 06:58:33',	'Kamonwan Sangrawee',	'2019-06-01 07:57:11',	'Kamonwan Sangrawee'),
(4,	'13.780328',	'100.522713',	'128/21/1',	'พญาไทพลาซ่า ชั้น 3',	'-',	'พญาไท',	'ทุ่งพญาไท',	'ราชเทวี',	'กรุงเทพมหานคร',	'10400',	'2019-02-01 07:04:37',	'Kamonwan Sangrawee',	'2019-06-01 07:56:08',	'Admin'),
(7,	'13.716754',	'100.558884',	'-',	'-',	'-',	'พหลโยธิน',	'จตุจักร',	'คลองเตย',	'กรุงเทพมหานคร',	'10260',	'2019-02-01 07:08:59',	'Kamonwan Sangrawee',	'2019-05-29 12:41:20',	'นาย วริทธ์ พุ่มไม้'),
(8,	NULL,	NULL,	'51/599',	'-',	'-',	'พหลโยธิน',	'หลักหก',	'เมืองปทุมธานี',	'ปทุมธานี',	'12000',	'2019-02-01 07:10:39',	'Kamonwan Sangrawee',	'2019-02-12 04:48:07',	'Kamonwan Sangrawee'),
(9,	NULL,	NULL,	'30/88',	'-',	'-',	'-',	'โคกขาม',	'เมือง',	'สมุทรสาคร',	'74000',	'2019-02-01 07:11:36',	'Kamonwan Sangrawee',	'2019-03-19 06:06:08',	'kamonwans'),
(13,	NULL,	NULL,	'121/30',	'อาร์เอสทาวเวอร์ ชั้น 7',	'-',	'รัชดาภิเษก',	'ดินแดง',	'ดินแดง',	'กรุงเทพมหานคร',	'10400',	'2019-02-01 07:16:49',	'Kamonwan Sangrawee',	'2019-02-01 12:11:28',	'Kamonwan Sangrawee'),
(18,	NULL,	NULL,	'1112/110-111',	'-',	'-',	'สุขุมวิท',	'พระโขนง',	'คลองเตย',	'กรุงเทพมหานคร',	'10110',	'2019-02-01 07:22:08',	'Kamonwan Sangrawee',	'2019-02-01 11:51:26',	'Kamonwan Sangrawee'),
(26,	'13.775959',	'100.540824',	'979/52-55',	'อส เอ็ม ทาวเวอร์ ชั้น 21',	'-',	'พหลโยธิน',	'สามเสนใน',	'พญาไท',	'กรุงเทพฯ',	'10400',	'2019-03-18 03:18:09',	'kamonwans',	'2019-05-16 04:53:10',	NULL),
(27,	NULL,	NULL,	'20',	'อาคารบุปผจิต ชั้น 15',	'-',	'สาทรเหนือ',	'สีลม',	'บางรัก',	'กรุงเทพมหานคร',	'10500',	'2019-03-18 03:37:04',	'kamonwans',	'2019-03-18 03:41:08',	'kamonwans'),
(28,	NULL,	NULL,	'29/1',	'อาคารปิยะเพลสหลังสวน',	'-',	'หลังสวน',	'ลุมพินี',	'ปทุมวัน',	'กรุงเทพมหานคร',	'10330',	'2019-03-18 03:46:12',	'kamonwans',	'2019-03-18 04:29:29',	'kamonwans'),
(29,	NULL,	NULL,	'700/1017',	'-',	'-',	'-',	'มาบโป่ง',	'พานทอง',	'ชลบุรี',	'20160',	'2019-03-18 04:13:21',	'kamonwans',	'2019-03-18 04:36:15',	'ช่อผกา มาลีบุตร'),
(30,	NULL,	NULL,	'700/701-702,700/757',	'ม.1 นิคมอุตสาหกรรมอมตะนคร',	'-',	'-',	'พานทอง',	'พานทอง',	'ชลบุรี',	'20160',	'2019-03-18 04:43:17',	'kamonwans',	'2019-03-20 02:14:23',	'นพรัตน์ ฉิมบ้านไร่'),
(31,	NULL,	NULL,	'700/618 หมู่ 4',	'อมตะ ซิตี้ ชลบุรี',	'-',	'ถ.บางนา-ตราด กม.57',	'บ้านเก่า',	'พานทอง',	'ชลบุรี',	'20160',	'2019-03-18 04:53:58',	'kamonwans',	'2019-03-18 04:58:20',	'kamonwans'),
(32,	NULL,	NULL,	'101',	'-',	'พระพินิจ',	'นราธิวาสฯ',	'ทุ่งมหาเมฆ',	'สาทร',	'กรุงเทพมหานคร',	'10120',	'2019-03-18 05:02:39',	'kamonwans',	NULL,	NULL),
(33,	NULL,	NULL,	'87/10 หมู่ 2',	'-',	'-',	'สุขุมวิท',	'ทุ่งสุขลา',	'ศรีราชา',	'ชลบุรี',	'20230',	'2019-03-18 06:05:04',	'kamonwans',	'2019-03-18 07:46:26',	'ก้องภพ นาคปาน'),
(34,	NULL,	NULL,	'148/92 หมู่ที่ 4',	'-',	'-',	'-',	'ห้วยกะปิ',	'เมือง',	'ชลบุรี',	'20130',	'2019-03-18 06:15:54',	'kamonwans',	NULL,	NULL),
(35,	NULL,	NULL,	'383',	'อาคารชินพงษ์',	'-',	'ลาดหญ้า',	'สมเด็จจ้าพระยา',	'คลองสาน',	'กรุงเทพมหานคร',	'10600',	'2019-03-18 07:45:03',	'kamonwans',	NULL,	NULL),
(37,	NULL,	NULL,	'202',	'อาคารซีดีจีเฮาส์',	'-',	'นางลิ้นจี่',	'ช่องนนทรี',	'ยานนาวา',	'กรุงเทพมหานคร',	'10120',	'2019-03-18 07:50:02',	'kamonwans',	NULL,	NULL),
(38,	NULL,	NULL,	'333',	'Lao Peng Nguan',	'Choeipuang',	'Vibhavadi Rangsit',	'-',	'Chompol',	'Bangkok',	'10900',	'2019-03-18 08:08:34',	'kamonwans',	NULL,	NULL),
(39,	NULL,	NULL,	'112',	'-',	'-',	'ถนนพหลโยธิน',	'คลองหนึ่ง',	'คลองหลวง',	'ปทุมธานี',	'12120',	'2019-03-19 04:38:25',	'kamonwans',	NULL,	NULL),
(40,	NULL,	NULL,	'18/8',	'-',	'-',	'บางแสนสายสี่เหนือ',	'แสนสุข',	'เมือง',	'ชลบุรี',	'20130',	'2019-03-19 06:32:40',	'kamonwans',	'2019-05-30 13:12:03',	'ธชยวัฒน์ ผสมทรัพย์'),
(47,	'13.675274',	'100.514882',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2019-05-16 06:37:47',	'kamonwans',	'2019-05-21 09:34:24',	'Kamonwan Sangrawee'),
(81,	NULL,	NULL,	'',	'อาร์เอสทาวเวอร์ ชั้น 7',	'',	'-',	'ดินแดง',	'',	'',	'',	'2019-05-21 09:34:54',	'Kamonwan Sangrawee',	'2019-05-21 10:05:53',	'Kamonwan Sangrawee'),
(82,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 11:29:40',	'Kamonwan Sangrawee',	NULL,	NULL),
(83,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 12:42:24',	'Kamonwan Sangrawee',	'2019-05-22 12:45:29',	'Kamonwan Sangrawee'),
(84,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 12:53:55',	'Kamonwan Sangrawee',	NULL,	NULL),
(85,	NULL,	NULL,	'',	'qq',	'',	'',	'qq',	'',	'',	'',	'2019-05-22 12:56:58',	'Kamonwan Sangrawee',	'2019-05-22 13:39:36',	'Kamonwan Sangrawee'),
(86,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 13:42:22',	'Kamonwan Sangrawee',	NULL,	NULL),
(87,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 13:48:49',	'Kamonwan Sangrawee',	NULL,	NULL),
(88,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 13:49:06',	'Kamonwan Sangrawee',	NULL,	NULL),
(89,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 13:59:10',	'Kamonwan Sangrawee',	NULL,	NULL),
(90,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-22 14:35:51',	'Kamonwan Sangrawee',	NULL,	NULL),
(91,	NULL,	NULL,	'11222',	'-',	'-',	'รัชดาภิเษก',	'ดินแดง',	'คลองเตย',	'กรุงเทพมหานคร',	'10110',	'2019-05-24 07:16:02',	'Kamonwan Sangrawee',	'2019-05-24 07:21:38',	'Kamonwan Sangrawee'),
(92,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-24 07:18:15',	'Kamonwan Sangrawee',	NULL,	NULL),
(93,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-24 08:32:31',	'Kamonwan Sangrawee',	NULL,	NULL),
(94,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-24 11:05:13',	'Kamonwan Sangrawee',	'2019-05-24 11:05:30',	'Kamonwan Sangrawee'),
(95,	NULL,	NULL,	'121/30',	'อาร์เอสทาวเวอร์ ชั้น 7',	'4',	'รัชดาภิเษก',	'ทุ่งพญาไท',	'คลองเตย',	'กรุงเทพมหานคร',	'10110',	'2019-05-24 11:07:44',	'Kamonwan Sangrawee',	'2019-05-24 11:07:54',	'Kamonwan Sangrawee'),
(96,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-24 11:16:49',	'Kamonwan Sangrawee',	NULL,	NULL),
(97,	NULL,	NULL,	'123/45',	'buu',	'buu',	'buu',	'buu',	'buu',	'buu',	'00000',	'2019-05-27 07:06:24',	'Kamonwan Sangrawee',	'2019-05-27 16:38:05',	'Kamonwan Sangrawee'),
(98,	NULL,	NULL,	'123/45',	'อาร์เอสทาวเวอร์ ชั้น 7',	'buu',	'buu',	'buu',	'buu',	'buu',	'00000',	'2019-05-29 07:30:35',	'Kamonwan Sangrawee',	'2019-06-01 11:02:18',	'Kamonwan Sangrawee'),
(99,	NULL,	NULL,	'121/30',	'อาร์เอสทาวเวอร์ ชั้น 7',	'4',	'รัชดาภิเษก',	'ทุ่งพญาไท',	'คลองเตย',	'กรุงเทพมหานคร',	'12000',	'2019-05-29 12:14:50',	'Kamonwan Sangrawee',	'2019-05-29 12:14:57',	'Kamonwan Sangrawee'),
(100,	NULL,	NULL,	'121/30',	'อาร์เอสทาวเวอร์ ชั้น 7',	'-',	'รัชดาภิเษก',	'ทุ่งพญาไท',	'คลองเตย',	'กรุงเทพมหานคร',	'20000',	'2019-05-29 12:25:01',	'Kamonwan Sangrawee',	'2019-05-29 16:04:22',	'Kamonwan Sangrawee'),
(101,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-05-29 12:51:35',	'Kamonwan Sangrawee',	'2019-05-29 16:04:55',	'Kamonwan Sangrawee'),
(102,	NULL,	NULL,	'121/30',	'',	'',	'',	'',	'',	'',	'',	'2019-06-03 10:33:27',	'Kamonwan Sangrawee',	'2019-06-03 10:34:34',	'Kamonwan Sangrawee'),
(103,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	'2019-06-04 05:51:35',	'Kamonwan Sangrawee',	'2019-06-04 05:51:41',	'Kamonwan Sangrawee');

DELIMITER ;;

CREATE TRIGGER `InsertCompanyAddressLog` BEFORE INSERT ON `tb_company_address` FOR EACH ROW
BEGIN
		SET New.company_address_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.company_address_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCompanyAddressLog` BEFORE UPDATE ON `tb_company_address` FOR EACH ROW
BEGIN
		SET New.company_address_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.company_address_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_company_benefit`;
CREATE TABLE `tb_company_benefit` (
  `company_id` int(11) NOT NULL,
  `benefit_wage` varchar(200) DEFAULT NULL,
  `benefit_wage_period` varchar(200) DEFAULT NULL,
  `benefit_dorm` varchar(200) DEFAULT NULL,
  `benefit_dorm_period` varchar(200) DEFAULT NULL,
  `benefit_shuttlebus` varchar(200) DEFAULT NULL,
  `benefit_shuttlebus_period` varchar(200) DEFAULT NULL,
  `benefit_other` text,
  PRIMARY KEY (`company_id`),
  CONSTRAINT `fk_company_benefit_company1` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_benefit` (`company_id`, `benefit_wage`, `benefit_wage_period`, `benefit_dorm`, `benefit_dorm_period`, `benefit_shuttlebus`, `benefit_shuttlebus_period`, `benefit_other`) VALUES
(1,	'0',	'10000/เดือน',	'0',	'10000/เดือน',	'0',	'10000/เดือน',	'ไม่มี'),
(4,	'0',	'',	'0',	'',	'0',	'',	'ไม่มี'),
(7,	'1',	'120',	'0',	'',	'0',	'',	'ไม่มี'),
(8,	'0',	'',	'0',	'',	'0',	'',	'ไม่มี'),
(9,	'1',	'150/วัน',	'0',	'',	'1',	'',	'ไม่มี'),
(13,	'1',	'',	'0',	'',	'0',	'',	'ไม่มี'),
(18,	'1',	'200/วัน',	'0',	'',	'0',	'',	'ไม่มี'),
(26,	'1',	'3500/เดือน',	'0',	'',	'0',	'',	'-เงินรางวัลพิเศษ\r\n-กรณีต้องเดินทางไปสถานที่ลูกค้าอยู่ ตจว. มีค่าพาหนะ + เบี้ยเลี้ยงต่อวัน'),
(27,	'1',	'250/วัน',	'0',	'',	'0',	'',	''),
(28,	'0',	'',	'0',	'',	'0',	'',	'ค่าอาหารกลางวัน วันละ 50 บาท'),
(29,	'1',	'300/วัน',	'0',	'',	'1',	'',	'คูปองอาหาร 500/เดือน คอมพิวเตอร์สำหรับการทำงาน'),
(30,	'1',	'150/วัน',	'0',	'',	'1',	'',	''),
(31,	'1',	'250/วัน',	'0',	'',	'1',	'',	'ชุดพนักงาน'),
(32,	'1',	'200/วัน',	'0',	'',	'0',	'',	''),
(33,	'1',	'250/วัน',	'0',	'',	'0',	'',	''),
(34,	'0',	'',	'0',	'',	'0',	'',	'ชุดทำงาน ค่าอาหารกลางวัน คอมพิวเตอร์'),
(37,	'1',	'',	'0',	'',	'0',	'',	''),
(38,	'1',	'150/วัน',	'0',	'',	'0',	'',	''),
(40,	'1',	'3000/เดือน',	'0',	'',	'0',	'',	''),
(47,	'0',	'',	'0',	'',	'0',	'',	''),
(81,	'0',	'',	'0',	'',	'0',	'',	''),
(82,	'0',	'',	'0',	'',	'0',	'',	''),
(83,	'0',	'',	'0',	'',	'0',	'',	''),
(84,	'0',	'',	'0',	'',	'0',	'',	''),
(85,	'0',	'',	'0',	'',	'0',	'',	''),
(86,	'0',	'',	'0',	'',	'0',	'',	''),
(87,	'0',	'',	'0',	'',	'0',	'',	''),
(88,	'0',	'',	'0',	'',	'0',	'',	''),
(89,	'0',	'',	'0',	'',	'0',	'',	''),
(90,	'0',	'',	'0',	'',	'0',	'',	''),
(91,	'0',	'',	'0',	'',	'0',	'',	''),
(93,	'0',	'',	'0',	'',	'0',	'',	''),
(95,	'0',	'',	'0',	'',	'0',	'',	''),
(96,	'0',	'',	'0',	'',	'0',	'',	''),
(97,	'0',	'',	'0',	'',	'0',	'',	'-'),
(98,	'0',	'',	'0',	'',	'0',	'',	'-'),
(99,	'0',	'',	'0',	'',	'0',	'',	''),
(100,	'0',	'',	'0',	'',	'0',	'',	'-'),
(101,	'0',	'',	'0',	'',	'0',	'',	''),
(102,	'0',	'',	'0',	'',	'0',	'',	''),
(103,	'0',	'',	'0',	'',	'0',	'',	'');

DROP TABLE IF EXISTS `tb_company_has_coop_company_questionnaire_comment`;
CREATE TABLE `tb_company_has_coop_company_questionnaire_comment` (
  `student_id` int(11) DEFAULT NULL,
  `trainer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `company_has_coop_company_questionnaire_item_datetime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `company_has_coop_company_questionnaire_comment_no4` varchar(200) NOT NULL,
  `company_has_coop_company_questionnaire_comment_no5` varchar(200) NOT NULL,
  `company_has_coop_company_questionnaire_comment_no6` varchar(200) NOT NULL,
  `company_has_coop_company_questionnaire_comment_no7` varchar(200) NOT NULL,
  KEY `tb_company_has_coop_company_questionnaire_datetime` (`company_has_coop_company_questionnaire_item_datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_has_coop_company_questionnaire_comment` (`student_id`, `trainer_id`, `company_id`, `term_id`, `company_has_coop_company_questionnaire_item_datetime`, `company_has_coop_company_questionnaire_comment_no4`, `company_has_coop_company_questionnaire_comment_no5`, `company_has_coop_company_questionnaire_comment_no6`, `company_has_coop_company_questionnaire_comment_no7`) VALUES
(58160386,	153,	7,	14,	'2019-05-15 10:08:43',	'ไม่มี',	'ไม่มี',	'1',	'ไม่มี'),
(58160386,	153,	7,	14,	'2019-05-15 10:42:01',	'nn',	'nnn',	'0',	'nnnn'),
(58160386,	153,	7,	14,	'2019-05-16 01:30:50',	'ดีมาก',	'ดีมาก',	'0',	'ไม่มี'),
(59160061,	207,	47,	14,	'2019-05-16 15:09:07',	'เด้เ',	'เ้ะั',	'1',	'ะัะัะ');

DROP TABLE IF EXISTS `tb_company_has_coop_company_questionnaire_item`;
CREATE TABLE `tb_company_has_coop_company_questionnaire_item` (
  `student_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_has_coop_company_questionnaire_item_datetime` datetime DEFAULT NULL,
  `company_has_coop_company_questionnaire_item_score` varchar(200) DEFAULT NULL,
  `company_has_coop_company_questionnaire_item_comment` varchar(200) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`trainer_id`,`company_id`,`term_id`,`item_id`),
  KEY `fk_student_has_coop_questionnaire_item_student1_idx` (`student_id`),
  KEY `fk_student_has_coop_questionnaire_item_company_person1_idx` (`trainer_id`,`company_id`),
  KEY `fk_student_has_coop_questionnaire_item_term1_idx` (`term_id`),
  KEY `fk_company_has_coop_company_questionnaire_item_coop_company_idx1` (`item_id`),
  KEY `fk_company` (`company_id`,`trainer_id`),
  CONSTRAINT `fk_company` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_has_coop_company_questionnaire_item_coop_company_q2` FOREIGN KEY (`item_id`) REFERENCES `tb_coop_company_questionnaire_item` (`coop_company_questionnaire_item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_student10` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_term10` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainer` FOREIGN KEY (`trainer_id`) REFERENCES `tb_company_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_has_coop_company_questionnaire_item` (`student_id`, `trainer_id`, `company_id`, `company_has_coop_company_questionnaire_item_datetime`, `company_has_coop_company_questionnaire_item_score`, `company_has_coop_company_questionnaire_item_comment`, `term_id`, `item_id`) VALUES
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	7),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	8),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	9),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	10),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	11),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	12),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	13),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	14),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	15),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	16),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	17),
(58160386,	153,	7,	'2019-05-16 01:30:50',	'4',	NULL,	14,	18),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	7),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	8),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	9),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	10),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	11),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	12),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	13),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	14),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	15),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	16),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	17),
(59160061,	207,	47,	'2019-05-16 15:09:07',	'5',	NULL,	14,	18);

DROP TABLE IF EXISTS `tb_company_has_department`;
CREATE TABLE `tb_company_has_department` (
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`,`department_id`,`term_id`),
  KEY `fk_company_has_student_field_student_field1_idx` (`department_id`),
  KEY `fk_company_has_student_field_company1_idx` (`company_id`),
  KEY `fk_company_has_student_field_term1_idx` (`term_id`),
  CONSTRAINT `fk_company_has_student_field_company1` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_has_student_field_student_field1` FOREIGN KEY (`department_id`) REFERENCES `tb_department` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_has_student_field_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_has_department` (`company_id`, `department_id`, `term_id`) VALUES
(1,	1,	14),
(4,	1,	14),
(7,	1,	14),
(8,	1,	14),
(9,	1,	14),
(26,	1,	14),
(27,	1,	14),
(30,	1,	14),
(31,	1,	14),
(32,	1,	14),
(33,	1,	14),
(34,	1,	14),
(37,	1,	14),
(38,	1,	14),
(47,	1,	14),
(1,	2,	14),
(4,	2,	14),
(7,	2,	14),
(9,	2,	14),
(26,	2,	14),
(27,	2,	14),
(28,	2,	14),
(29,	2,	14),
(30,	2,	14),
(31,	2,	14),
(32,	2,	14),
(33,	2,	14),
(34,	2,	14),
(37,	2,	14),
(38,	2,	14),
(47,	2,	14),
(85,	2,	14),
(97,	2,	14),
(98,	2,	14),
(1,	3,	14),
(4,	3,	14),
(7,	3,	14),
(8,	3,	14),
(26,	3,	14),
(27,	3,	14),
(28,	3,	14),
(29,	3,	14),
(30,	3,	14),
(31,	3,	14),
(32,	3,	14),
(33,	3,	14),
(34,	3,	14),
(37,	3,	14),
(38,	3,	14),
(40,	3,	14);

DROP TABLE IF EXISTS `tb_company_job_has_skill`;
CREATE TABLE `tb_company_job_has_skill` (
  `job_id` int(11) NOT NULL,
  `skill_category_id` int(11) NOT NULL,
  PRIMARY KEY (`job_id`,`skill_category_id`),
  KEY `job_id` (`job_id`),
  KEY `skill_category_id` (`skill_category_id`),
  CONSTRAINT `tb_company_job_has_skill_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `tb_company_job_position` (`job_id`),
  CONSTRAINT `tb_company_job_has_skill_ibfk_2` FOREIGN KEY (`skill_category_id`) REFERENCES `tb_skill_category` (`skill_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_company_job_position`;
CREATE TABLE `tb_company_job_position` (
  `job_changer` varchar(100) DEFAULT NULL,
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `job_number_employee` int(11) NOT NULL,
  `job_description` varchar(5000) DEFAULT NULL,
  `job_skill` varchar(5000) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `job_active` int(11) DEFAULT NULL,
  `job_created` datetime NOT NULL,
  `job_creator` varchar(100) DEFAULT NULL,
  `job_changed` datetime DEFAULT NULL,
  PRIMARY KEY (`job_id`,`company_id`,`job_title_id`,`term_id`),
  KEY `fk_company_job_position_company1_idx` (`company_id`),
  KEY `fk_company_job_position_term1_idx` (`term_id`),
  KEY `fk_company_job_position_company_job_title1_idx` (`job_title_id`),
  CONSTRAINT `fk_company_job_position_company_job_title1` FOREIGN KEY (`job_title_id`) REFERENCES `tb_company_job_title` (`job_title_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_job_position_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_company_job_position_ibfk_6` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_job_position` (`job_changer`, `job_id`, `company_id`, `job_title_id`, `job_title`, `job_number_employee`, `job_description`, `job_skill`, `term_id`, `job_active`, `job_created`, `job_creator`, `job_changed`) VALUES
('Kamonwan Sangrawee',	33,	1,	2,	'-',	3,	'fdsfsd',	NULL,	14,	0,	'2019-02-01 08:28:04',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	34,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'\"ลักษณะงาน\r\n• พัฒนาและเขียนโปรแกรมด้วยภาษาและรูปแบบที่กำหนดให้\r\n• ทำการปรับปรุง แก้ไขโปรแกรมที่ได้รับมอบหมาย\r\n• ตรวจสอบและแก้ไขข้อผิดพลาดของโปรแกรม\r\nคุณสมบัติ\r\n• มีคุณสมบัติเบื้องต้นครบถ้วนตามที่กำหนดไว้ ***\r\n• มีความรู้ในภาษา JAVA และ/หรือ .NET\r\n• มีความรู้เรื่อง Database และ Store Procedure\"\r\n',	NULL,	14,	0,	'2019-02-01 08:39:22',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Admin',	36,	4,	4,	'Programmer',	10,	'\"•กำลังศึกษาปริญญาตรี สาขาวิศวกรรมคอมพิวเตอร์, วิทยาการคอมพิวเตอร์ เทคโนโลยีสารสนเทศ หรือสาขาที่เกี่ยวข้อง \r\n• มีทักษะในการพัฒนาWeb-based Application  โดยใช้ ASP.NET, C#, PHP. iOS, Android\r\n•มีทักษะในการสื่อสารที่ดี ทำงานเป็นทีมได้ \r\n•มีความรับผิดชอบสูง ซื่อสัตย์ มีวินัย\r\n•ชอบศึกษาหาความรู้ใหม่ๆ \"',	'ERP,MS Windows,',	14,	1,	'2019-02-01 08:51:11',	'Kamonwan Sangrawee',	'2019-06-01 07:52:30'),
('นาย วริทธ์ พุ่มไม้',	39,	7,	4,	'Programmer',	5,	'พัฒนาและทดสอบโปรแกรม',	NULL,	14,	0,	'2019-02-01 08:56:40',	'Kamonwan Sangrawee',	'2019-05-29 10:00:53'),
('Kamonwan Sangrawee',	40,	8,	4,	'Programmer',	5,	'\"เขียนโปรแกรม Form, Report มาตราฐานที่จะใช้ในงานจริง\r\nพัฒนาApplication ด้วยเครื่องมือภาษาต่างๆ เช่น JAVA, .NET, Oracle ภาษาใด ภาษาหนึ่ง โปรดระบุ\"',	NULL,	14,	1,	'2019-02-01 08:58:32',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	41,	9,	4,	'Programmer',	4,	'พัฒนาได้ทั้ง Win App, Web App, Mobile App(Android,IOS) สามารถเขียนโปรแกรมและฐานข้อมูลอย่าง C#.NET,Java,SQL,มีความรู้พื้นฐานของ Database',	NULL,	14,	0,	'2019-02-01 09:01:32',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	42,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	2,	'• แก้ปัญหาให้กับผู้ใช้งานผ่านทางโทรศัพท์ / Remote Support\r\n/ Onsite Support\r\n• วิเคราะห์และแก้ไขปัญหาความล้มเหลวของระบบฮาร์ดแวร์,\r\nเครือข่ายโครงสร้างพื้นฐาน\r\n• งานอื่นๆ ที่ได้รับมอบหมาย',	'Assembly,',	14,	1,	'2019-02-08 06:23:02',	'Kamonwan Sangrawee',	'2019-06-01 10:54:27'),
('Kamonwan Sangrawee',	43,	4,	6,	'Business Analyst /Project Coordinator',	6,	'ภาษา C/C++, ภาษา JAVA, ภาษา C#, ASP.NET, JAVASCRIPT, XML, ความรู้ด้าน Database, ความรู้ด้าน Network, iOS Android',	NULL,	14,	0,	'2019-02-08 08:10:58',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	44,	4,	8,	'System Admistrator',	4,	'ภาษา C/C++, ภาษา JAVA, ภาษา C#, ASP.NET, JAVASCRIPT, XML, ความรู้ด้าน Database, ความรู้ด้าน Network, iOS Android',	NULL,	14,	0,	'2019-02-08 08:11:38',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	45,	9,	4,	'Programmer',	4,	'พัฒนาได้ทั้ง Win App, Web App, Mobile App(Android,IOS) สามารถเขียนโปรแกรมและฐานข้อมูลอย่าง C#.NET,Java,SQL,มีความรู้พื้นฐานของ Database',	NULL,	14,	1,	'2019-02-08 08:13:14',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	46,	9,	3,	'Software tester',	1,	'สามารถคิดและออกแบบทดสอบ สร้าง Test Case และ Test Scenarios เตรียม Dataเพื่อทำการทำการทดสอบ และบันทึก Bug ที่พบเจอ',	NULL,	14,	0,	'2019-02-08 08:13:29',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	47,	9,	5,	'Web Design',	1,	'ใช้โปรแกรม Adobe ในการออกแบบระบบ\r\nมีทักษะในการเขียน Front -end และสามารถใช้ภาษา HTML,CSS,JavaScript ได้เป็นอย่างดี\r\nมีทักษะในการออกแบบ UX และUI เพื่อสร้างสรรค์ผลงานให้ตรงตามเป้าหมาย',	NULL,	14,	0,	'2019-02-08 08:13:49',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	48,	13,	4,	'Programmer',	6,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-02-08 08:14:18',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	49,	13,	12,	'Java Platform lmplementation',	1,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-02-08 08:14:32',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	50,	13,	13,	'Data Science ',	2,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-02-08 08:14:45',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	51,	13,	7,	'R & D',	1,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-02-08 08:14:58',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	52,	13,	9,	'Rapid',	3,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-02-08 08:15:09',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	53,	18,	4,	'Programmer',	2,	'Writing clean, elegant, accessible, and performant HTML, CSS and JavaScript code, Working closely with other storefront technology team, Understanding and employing engineering and optimization best practices with regard to frontend web standard',	NULL,	14,	1,	'2019-02-08 08:15:42',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	54,	18,	8,	'System Admistrator',	3,	'Assist SI team in inplementing scale server and network infrastructure Technical for projects involving server, Pcs, firewall and VPN installations',	NULL,	14,	1,	'2019-02-08 08:15:56',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	56,	1,	4,	'Programmer',	2,	'Testppp',	NULL,	14,	0,	'2019-03-17 07:17:12',	'Admin_NT',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	62,	26,	4,	'Programmer',	5,	'1.ช่วยงานพัฒนาระบบ E-Commerce /web site on line โดยใช้พวก Framework + Tool \r\n2.พัฒนาระบบให้ลูกค้า/ธุรกิจขายของ ผ่านเว็บ\r\n3.พัฒนา Digital Marketing\r\n4. Moblie IOS Android',	NULL,	14,	1,	'2019-03-18 03:33:28',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	63,	26,	14,	'ERP -Programmer',	10,	'1.ช่วยดูแลงานระบบคอมฯ ที่อยู่ในศูยน์คอมพิวเตอร์ฯของลูกค้าหรือระบบ Cloud Amagon Web Servics \r\n2.งาน outsource  + งาน Help Dark \r\n3.แอพพลิเคชั่นที่ใช้งานในศูนย์เป็นระบบ E-Commerce และ ERP',	NULL,	14,	1,	'2019-03-18 03:34:35',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	64,	26,	11,	'System Engineer',	3,	'1. ช่วยทดสอบระบบที่กล่าวมาข้างต้น มีโครงการที่กำลังพัฒนาให้ลูกค้า งาน S/W Engineering-Testing',	NULL,	14,	1,	'2019-03-18 03:35:07',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	65,	27,	15,	'Java Developer',	10,	'พัฒนาโปรแกรม JAVA บน Framwork ของบริษัทมี Product เป็นของตนเอง คือ oneweb และ base พื้นฐานในการพัฒนา Program',	NULL,	14,	1,	'2019-03-18 03:40:49',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	66,	27,	17,	'Tester',	2,	'ตรวจสอบระบบ ทำ test เขียนสรุปผลการ test',	NULL,	14,	1,	'2019-03-18 03:41:58',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	67,	27,	16,	'Mobile Developer',	2,	'เขียนหน้า Front end ด้วย HTML CSS ตามที่ Graphic Design ออกแบบ และเขียน Logic javascript เรียกข้อมูลจาก sever ด้วย Ajax รับและส่งข้อมูลด้วย json object บน ionic framwork',	NULL,	14,	1,	'2019-03-18 03:42:16',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	68,	28,	18,	'Quality Assurance',	4,	'-ศึกษาวิเคราะห์ความเข้าใจใน\r\nกระบวนการและความคาดหวังจาก ลูกค้า\r\n-วิเคราะห์และออกแบบแผนงาน\r\n-ทำเอกสารทดสอบ (Testcare) และทดสอบระบบพร้อมสรุปผล',	NULL,	14,	1,	'2019-03-18 03:54:13',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	69,	28,	19,	'Software Developer',	4,	'-พัฒนา web application\r\n- ดูแล แก้ไข ปรับปรุง web application',	NULL,	14,	1,	'2019-03-18 03:54:52',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	70,	28,	20,	'Block chain Engineer',	2,	'ศึกษา และพัฒนา เทคโนโลยี Block chain และร่วมพัฒนา',	NULL,	14,	1,	'2019-03-18 03:55:07',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	71,	29,	21,	'System Engineer/Programmer',	2,	'\'พัฒนาระบบเพื่อปรับปรุงกระบวนการทำงานภายในบริษัท โดยจะมอบหมายให้พัฒนาระบบด้วยตนเองคนละ 1 โปรเจค และงานอื่นๆ ที่ได้รับมอบหมายจาก System Engineer',	NULL,	14,	1,	'2019-03-18 04:21:52',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	72,	30,	22,	'เจ้าหน้าที่ IT',	3,	'ความรู้ด้านการเขียน หรือพัฒนา Software  มีความรู้ทางด้านคอมพิวเตอร์ PC หรือความรู้ทางด้าน network อย่างใดอย่างหนึ่ง',	NULL,	14,	1,	'2019-03-18 04:46:52',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	73,	31,	4,	'Programmer',	2,	'Programing System analysis and design',	NULL,	14,	1,	'2019-03-18 04:56:59',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	74,	32,	4,	'Programmer',	2,	'เขียนโปรแกรมในภาษาคอมพิวเตอร์ต่างๆ เช่น JAVA, C++ หรืออื่นๆ ตรวจสอบโปรแกรมที่เขียนขึ้น ออกแบบโปรแกรมหรือ Sotware พัฒนาและแก้ไขปรับปรุงที่มีของบริษัท',	NULL,	14,	1,	'2019-03-18 05:05:39',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	75,	32,	3,	'Software tester',	1,	'คอยสำรวจหาความต้องการหรือปัญหาของ software ทำการตรวจสอบโปรแกรม,รายงานปัญหาที่เกิดขึ้น',	NULL,	14,	1,	'2019-03-18 05:05:57',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	76,	33,	4,	'Programmer',	5,	'งานปรับปรุงและพัฒนา Software ของบริษัทให้ทันสมัยและนำใช้งานมากขึ้น',	NULL,	14,	1,	'2019-03-18 06:13:10',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	77,	34,	23,	'Web developer',	3,	'ออกแบบ พัฒนา โปรแกรมระบบคอมพิวเตอร์ ทดสอบระบบ แก้ไขปัญหาที่เกิดขึ้นกับระบบ',	NULL,	14,	1,	'2019-03-18 06:25:01',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	78,	35,	17,	'Tester',	2,	'ทดสอบโปรแกรมที่ได้รับมอบหมาย',	NULL,	14,	1,	'2019-03-18 07:45:57',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	79,	35,	4,	'Programmer',	1,	'พัฒนาโปรแกรมที่ได้รับมอบหมาย',	NULL,	14,	0,	'2019-03-18 07:46:31',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	80,	37,	17,	'Tester',	3,	'ทดสอบระบบ',	NULL,	14,	1,	'2019-03-18 08:03:38',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	81,	35,	4,	'Programmer',	5,	'พัฒนาโปรแกรมที่ได้รับมอบหมำย',	NULL,	14,	1,	'2019-03-18 08:05:01',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	82,	38,	24,	'UX/UI Designer - System Analysis - Tester - Mobile Developer iOS/Android - IT Support - Financial of',	10,	'พิจารณาจากใบสมัคร+การสัมภาษณ์งาน',	NULL,	14,	1,	'2019-03-18 08:12:44',	'kamonwans',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	83,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	1,	'55555555',	NULL,	14,	0,	'2019-03-18 16:09:07',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	84,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	1,	'0000',	NULL,	14,	0,	'2019-03-18 16:13:50',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	85,	39,	25,	'Developer',	2,	'พัฒนาระบบ',	NULL,	14,	1,	'2019-03-19 06:28:58',	'kamonwans',	'2019-05-15 02:30:51'),
('ธชยวัฒน์ ผสมทรัพย์',	86,	40,	26,	'Fullstack-Developer',	2,	'ออกแบบ พัฒนา ปรับปรุง ระบบสารสนเทศ',	'Mobile Programming,PHP,SQL Command,HTML,JAVA Script,MySQL,MS SQL Server,MariaDB,Linux,Web Service,Design Pattern,AJAX,',	14,	1,	'2019-03-19 06:37:56',	'kamonwans',	'2019-05-30 13:13:42'),
('Kamonwan Sangrawee',	87,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	1,	'00',	NULL,	14,	0,	'2019-03-19 13:34:54',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	96,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'sfd',	NULL,	14,	0,	'2019-05-03 06:55:21',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	97,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'ds',	NULL,	14,	0,	'2019-05-03 06:55:57',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	98,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'w',	NULL,	14,	0,	'2019-05-03 06:56:35',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	99,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'wsxdwd',	NULL,	14,	0,	'2019-05-03 06:56:54',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	100,	1,	4,	'Programmer',	0,	'wdawfef',	NULL,	14,	0,	'2019-05-03 07:01:19',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	101,	1,	3,	'Software tester',	0,	'qqq',	NULL,	14,	0,	'2019-05-03 07:47:28',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	102,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'ws',	NULL,	14,	0,	'2019-05-03 07:48:47',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	103,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'ws',	NULL,	14,	0,	'2019-05-03 07:48:54',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	104,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'q',	NULL,	14,	0,	'2019-05-03 08:34:42',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	105,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'q',	NULL,	14,	0,	'2019-05-03 08:43:01',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	106,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'5555',	NULL,	14,	0,	'2019-05-07 05:33:28',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	107,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	0,	'jkkl',	NULL,	14,	0,	'2019-05-07 05:34:05',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	108,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	1,	's',	NULL,	14,	0,	'2019-05-07 05:45:03',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	109,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'wsz',	NULL,	14,	0,	'2019-05-07 05:46:13',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('Kamonwan Sangrawee',	110,	1,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'sdfv',	NULL,	14,	0,	'2019-05-07 05:48:31',	'Kamonwan Sangrawee',	'2019-05-15 02:30:51'),
('เต้จัง',	114,	47,	4,	'Programmer',	5,	'Python / Data Analytic',	NULL,	14,	1,	'2019-05-16 06:39:33',	'kamonwans',	'2019-05-16 06:49:52'),
(NULL,	115,	47,	7,	'R & D',	30,	'Research and Development',	NULL,	14,	1,	'2019-05-16 07:24:09',	'เต้จัง',	NULL),
('Kamonwan Sangrawee',	117,	97,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'qq',	NULL,	14,	0,	'2019-05-27 16:38:21',	'Kamonwan Sangrawee',	'2019-05-27 16:38:29'),
('นาย วริทธ์ พุ่มไม้',	118,	7,	3,	'Software tester',	5,	'eieieu',	'JSP,CORBA,XML,',	14,	1,	'2019-05-29 09:48:03',	'นาย วริทธ์ พุ่มไม้',	'2019-05-29 10:01:03'),
('admin',	119,	98,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	3,	'ทดสอบ-0001',	'.NET CORE,MS VB.NET, MS ASP.NET,PHP,Visual Basic,Golang,MS Access,CORBA,Apache,Data Warehouse,',	14,	0,	'2019-05-29 09:52:26',	'admin',	'2019-05-29 10:04:49'),
('Kamonwan Sangrawee',	120,	1,	4,	'Programmer',	5,	'test',	'Golang,',	14,	1,	'2019-05-29 10:06:49',	'Kamonwan Sangrawee',	'2019-06-01 07:58:06'),
('admin',	121,	98,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	6,	'ทดสอบ03',	'Assembly,',	14,	1,	'2019-05-29 10:13:30',	'Kamonwan Sangrawee',	'2019-05-29 12:51:34'),
('Kamonwan Sangrawee',	122,	99,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	5,	'ทดสอบ-02',	'PHP,ASP,',	14,	1,	'2019-05-29 12:19:30',	'Kamonwan Sangrawee',	'2019-05-29 12:21:24'),
('admin',	123,	98,	2,	'Technical Engineer',	2,	'เก่งๆ',	'Golang,',	14,	1,	'2019-05-29 12:51:05',	'admin',	'2019-05-29 12:51:48'),
('admin',	124,	98,	4,	'Programmer',	2,	'-',	'MySQL,',	14,	0,	'2019-05-29 12:52:03',	'admin',	'2019-05-29 12:52:08'),
(NULL,	125,	100,	3,	'Software tester',	10,	'gg',	'PHP,ASP,',	14,	1,	'2019-05-29 16:04:43',	'Kamonwan Sangrawee',	NULL),
(NULL,	126,	101,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	10,	'qq',	'MySQL,MS SQL Server,',	14,	1,	'2019-05-29 16:05:29',	'Kamonwan Sangrawee',	NULL),
('admin',	127,	98,	3,	'Software tester',	2,	'test1',	'Golang,',	14,	0,	'2019-06-01 10:56:04',	'admin',	'2019-06-01 10:56:15'),
('Kamonwan Sangrawee',	128,	98,	1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	2,	'test',	'Pascal,Assembly,',	14,	0,	'2019-06-01 11:03:26',	'Kamonwan Sangrawee',	'2019-06-01 11:03:46'),
(NULL,	129,	102,	2,	'Technical Engineer',	3,	'ทดสอบระบบ',	'PHP,Pascal,Assembly,Golang,',	14,	1,	'2019-06-03 10:39:41',	'Kamonwan Sangrawee',	NULL),
(NULL,	130,	103,	2,	'Technical Engineer',	2,	'test',	'Mobile Programming,WebSphere,Eclipse,',	14,	1,	'2019-06-04 05:52:53',	'Kamonwan Sangrawee',	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertCompanyJobPositionLog` BEFORE INSERT ON `tb_company_job_position` FOR EACH ROW
BEGIN
		SET New.job_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.job_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCompanyJobPositionLog` BEFORE UPDATE ON `tb_company_job_position` FOR EACH ROW
BEGIN
		SET New.job_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.job_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_company_job_position_has_skill`;
CREATE TABLE `tb_company_job_position_has_skill` (
  `job_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`job_id`,`skill_id`),
  KEY `fk_company_job_position_has_skill_skill1_idx` (`skill_id`),
  KEY `fk_company_job_position_has_skill_company_job_position1_idx` (`job_id`),
  CONSTRAINT `fk_company_job_position_has_skill_company_job_position1` FOREIGN KEY (`job_id`) REFERENCES `tb_company_job_position` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_company_job_position_has_skill_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `tb_skill` (`skill_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_company_job_title`;
CREATE TABLE `tb_company_job_title` (
  `job_title_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(200) DEFAULT NULL,
  `job_active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`job_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_job_title` (`job_title_id`, `job_title`, `job_active`) VALUES
(1,	'SYSTEM PROGRAMMER / SOFTWARE DEVELOPER',	1),
(2,	'Technical Engineer',	1),
(3,	'Software tester',	1),
(4,	'Programmer',	1),
(5,	'Web Design',	1),
(6,	'Business Analyst /Project Coordinator',	1),
(7,	'R & D',	1),
(8,	'System Admistrator',	1),
(9,	'Rapid',	1),
(10,	'Technical Support',	1),
(11,	'System Engineer',	1),
(12,	'Java Platform lmplementation',	1),
(13,	'Data Science ',	1),
(14,	'ERP -Programmer',	1),
(15,	'Java Developer',	1),
(16,	'Mobile Developer',	1),
(17,	'Tester',	1),
(18,	'Quality Assurance',	1),
(19,	'Software Developer',	1),
(20,	'Block chain Engineer',	1),
(21,	'System Engineer/Programmer',	1),
(22,	'เจ้าหน้าที่ IT',	1),
(23,	'Web developer',	1),
(24,	'UX/UI Designer - System Analysis - Tester - Mobile Developer iOS/Android - IT Support - Financial office - UX researcher - Business consult/ Business Development - Creative and graphic Designer (Peopl',	1),
(25,	'Developer',	1),
(26,	'Fullstack-Developer',	1);

DROP TABLE IF EXISTS `tb_company_person`;
CREATE TABLE `tb_company_person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_fullname` varchar(500) NOT NULL,
  `person_position` varchar(1000) NOT NULL,
  `person_department` varchar(1000) NOT NULL,
  `person_telephone` varchar(12) NOT NULL,
  `person_fax_number` varchar(15) DEFAULT NULL,
  `person_email` varchar(150) NOT NULL,
  `person_profile_picture` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `person_username` varchar(250) NOT NULL,
  `person_password` varchar(500) NOT NULL,
  `person_active` int(11) DEFAULT '1',
  `person_created` datetime NOT NULL,
  `person_creator` varchar(100) DEFAULT NULL,
  `person_changed` datetime DEFAULT NULL,
  `person_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`person_id`,`company_id`),
  KEY `fk_company_person_company1_idx` (`company_id`),
  CONSTRAINT `tb_company_person_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_person` (`person_id`, `person_fullname`, `person_position`, `person_department`, `person_telephone`, `person_fax_number`, `person_email`, `person_profile_picture`, `company_id`, `person_username`, `person_password`, `person_active`, `person_created`, `person_creator`, `person_changed`, `person_changer`) VALUES
(111,	'qqqqq',	'Manager',	'Administrator',	'0614242964',	'',	'mixmaajix@gmail.com',	NULL,	1,	'58660033@go.buu.ac.th',	'$2y$10$4.lQG.P/WiWq5B1.SCcX5OUp9HPd7qpzxWNynUEgHHXVUR7lCUB4S',	0,	'2019-03-15 09:25:25',	'Kamonwan Sangrawee',	'2019-04-28 10:32:06',	'Kamonwan Sangrawee'),
(116,	'Admin_NT',	'Adminsitrator',	'Administrator',	'06142429645',	'',	'58160386@go.buu.ac.th',	NULL,	1,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	0,	'2019-03-15 11:10:33',	'Kamonwan Sangrawee',	'2019-05-15 18:04:27',	'Kamonwan Sangrawee'),
(117,	'Admin_NT1',	'Adminsitrator-1',	'Administrator',	'0925989952',	'',	'58160386@go.buu.ac.th',	NULL,	1,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	1,	'2019-03-15 11:48:50',	'Kamonwan Sangrawee',	'2019-06-04 05:41:00',	'Kamonwan Sangrawee'),
(118,	'Admin test case',	'admin',	'admin',	'0925989952',	'',	'Nattiya.anukulthong@gmail.com',	NULL,	1,	'Nattiya.anukulthong@gmail.com',	'$2y$10$D4queT8HqQ8N24XI31I8RufuFifMUxKY6ZxNxKSEfj5q03kZb9cFy',	0,	'2019-03-15 16:26:57',	'Kamonwan Sangrawee',	'2019-05-12 08:40:56',	'Kamonwan Sangrawee'),
(119,	'Zomzom',	'Admin',	'Admin',	'0925989966',	'',	'58660124@go.buu.ac.th',	NULL,	1,	'58660124@go.buu.ac.th',	'$2y$10$uNRP.ufGp12HV30EPlop6e2e3k/6GQEXddCmu5lkar8O6/ttnYLkS',	1,	'2019-03-17 07:10:48',	'Admin_NT',	NULL,	NULL),
(120,	'Nattiya. Numtarn',	'Admin',	'Admin',	'0925989952',	'',	'58160386@gmail.com',	NULL,	1,	'58160386@gmail.com',	'$2y$10$Pqj61s4RB9R8ARodHJ1O.OF0mKbacDO/xhkMnTLuHoMIDJ1poP6FG',	0,	'2019-03-17 07:13:18',	'Admin_NT',	'2019-03-17 17:07:25',	'Kamonwan Sangrawee'),
(125,	' Parinya Kornjuntuek',	'HR',	'HR',	'0614155838',	'',	'parinya.k@clicknext.com',	NULL,	4,	'parinya.k@clicknext.com',	'$2y$10$Egpuhe47lFbomsm.S9cRveYS7OGZdixrdoQnsJEjUv6yd08i.YPl6',	1,	'2019-03-18 03:03:33',	'kamonwans',	NULL,	NULL),
(126,	' Parinya Kornjuntuek',	'HR',	'HR',	'0614155838',	'',	'parinya.k@clicknext.com',	NULL,	4,	'parinya.k@clicknext.com',	'$2y$10$NNmWxtSaA3fHrBx9zX.Gn.6Hua2M4NWKozQ1Bv6POwyTgB7QmTTqG',	1,	'2019-03-18 03:03:38',	'kamonwans',	NULL,	NULL),
(127,	'คุณณัฐชานันท์ พานิช',	'HR',	'HR',	'0629565542',	'',	'natchanan.p@prism.co.th',	NULL,	9,	'natchanan.p@prism.co.th',	'$2y$10$9uR0DMBV1JhrgnT0402TKuCw8T5Krqh2lYd/cdd576iQeshvmj/B2',	1,	'2019-03-18 03:13:15',	'kamonwans',	'2019-04-28 11:08:48',	'Kamonwan Sangrawee'),
(128,	'คุณณัฐชานันท์ พานิช',	'HR',	'HR',	'0629565542',	'',	'natchanan.p@prism.co.th',	NULL,	9,	'natchanan.p@prism.co.th',	'$2y$10$9uR0DMBV1JhrgnT0402TKuCw8T5Krqh2lYd/cdd576iQeshvmj/B2',	1,	'2019-03-18 03:13:20',	'kamonwans',	'2019-04-28 11:08:48',	'Kamonwan Sangrawee'),
(129,	'Montakan Senanan ',	'Programmer',	'Programmer',	'0882064399',	'',	'montakan@ahead.co.th',	NULL,	26,	'montakan@ahead.co.th',	'$2y$10$a.3DaiIUGDHp.FjJSHup5.3Hfiq7MIeo9VOmZbjE3pgYMF/eHiKqu',	1,	'2019-03-18 03:22:35',	'kamonwans',	'2019-04-28 11:09:36',	'Kamonwan Sangrawee'),
(130,	'Montakan Senanan ',	'Programmer',	'Programmer',	'0882064399',	'',	'montakan@ahead.co.th',	NULL,	26,	'montakan@ahead.co.th',	'$2y$10$a.3DaiIUGDHp.FjJSHup5.3Hfiq7MIeo9VOmZbjE3pgYMF/eHiKqu',	1,	'2019-03-18 03:22:38',	'kamonwans',	'2019-04-28 11:09:36',	'Kamonwan Sangrawee'),
(131,	'พรวิภา',	'HR Manager',	'HR',	'0968622414',	'',	'pornvipa.s@avalant.co.th',	NULL,	27,	'pornvipa.s@avalant.co.th',	'$2y$10$6Uy27hHCvvJ8aeFFEZ1oeOsoKN73yee/7/KqOcVYNRs3p2MVZ/oMa',	1,	'2019-03-18 03:38:48',	'kamonwans',	NULL,	NULL),
(132,	'สุทธานัต์ ไทยานันท์',	'HR',	'HR',	'021266969',	'',	'HR@bitkub.com',	NULL,	28,	'HR@bitkub.com',	'$2y$10$gK5E7qNOgSjL6LEWgoE/sefwCZxDSrxrC8J/z0tuVzXQzs/EhfcLS',	1,	'2019-03-18 03:50:10',	'kamonwans',	NULL,	NULL),
(133,	'ช่อผกา มาลีบุตร',	'System Engineer',	'วางแผนการผลิตและโลจิสต์ติก',	'0841315186',	'',	'chorpaka_m@tbkk.co.th',	NULL,	29,	'chorpaka_m@tbkk.co.th',	'$2y$10$VbxHM6Yxh.VCMd.dV1S5ZO1K6hgJrtm4tayXbuat/iDyR/njX67lS',	1,	'2019-03-18 04:16:55',	'kamonwans',	NULL,	NULL),
(134,	'นพรัตน์ ฉิมบ้านไร่',	'HR',	'HR',	'0928189984',	'',	'nchimbanrai@tenneco.com',	NULL,	30,	'nchimbanrai@tenneco.com',	'$2y$10$mPWNeAQMQckEP7LpPgcLNepHUMjrBXOfGPo.d2oalxWEO/JWxWr3e',	1,	'2019-03-18 04:44:43',	'kamonwans',	NULL,	NULL),
(135,	'สมศรี',	'HR Manager',	'HR',	'0820320556',	'',	'somsri_s@sdm.denso.co.th',	NULL,	31,	'somsri_s@sdm.denso.co.th',	'$2y$10$NEnGIIF4iA3853owitXuQOMPJ2J0.gVBYG8ExI77UXk4GHGInWRqe',	1,	'2019-03-18 04:55:13',	'kamonwans',	NULL,	NULL),
(136,	'นิธิ ประสานพานิช',	'กรรมการบริษัท',	'กรรมการบริษัท',	'0924942545',	'',	'9nithi@gmail.com',	NULL,	32,	'9nithi@gmail.com',	'$2y$10$8po9MH1Eq0ga23pUeq/Ku.gY.oq3MxYQONPwv//TrqNBeYNxwJHam',	1,	'2019-03-18 05:04:10',	'kamonwans',	NULL,	NULL),
(137,	'ก้องภพ นาคปาน',	'HR',	'Human Resource Officer',	'038490900',	'',	'kongpopn@siamcompressor.com',	NULL,	33,	'kongpopn@siamcompressor.com',	'$2y$10$oI3YxeMEijN4kejI2IzvZ.xElKQGD3eJt/crPfBcM0qplL37hIhk6',	1,	'2019-03-18 06:09:56',	'kamonwans',	NULL,	NULL),
(138,	'ก้องภพ นาคปาน',	'HR',	'Human Resource Officer',	'038490900',	'',	'kongpopn@siamcompressor.com',	NULL,	33,	'kongpopn@siamcompressor.com',	'$2y$10$eePaw/4893CdiCmE.W3hxO/1912Ms.at0B9yz06bcHwNTZkOKxU0y',	1,	'2019-03-18 06:10:01',	'kamonwans',	NULL,	NULL),
(139,	'เสกสรร แป้นนาค',	'กรรมการผู้จัดการ',	'กรรมการผู้จัดการ',	'0861133360',	'',	'panseksan@gmail.com',	NULL,	34,	'panseksan@gmail.com',	'$2y$10$U2C5eEN/Qsssz0YMWOsUH.k8AtE8qcfnnbU6gaxkgTHibVDMQy/sG',	1,	'2019-03-18 06:22:29',	'kamonwans',	NULL,	NULL),
(140,	'คุณสุจิตรา จินดาศรี',	'HR',	'HR',	'0946699328',	'',	'sujitra.j@cdg.co.th',	NULL,	37,	'sujitra.j@cdg.co.th',	'$2y$10$bQzmoyHQjV/W0YqRMg1AR.njxbjLZJ19cUD8d3Jjgnlvd.8jCoFeO',	1,	'2019-03-18 08:02:32',	'kamonwans',	NULL,	NULL),
(141,	'Angkana  Pingwang',	'HR',	'HR',	'0818292593',	'',	'Angkana@mfec.co.th',	NULL,	38,	'Angkana@mfec.co.th',	'$2y$10$ikp5o2LNuE6U7qa3Ievdqu7NC8sbmAUZW9UvXFfL2ApbajBcuwKgq',	1,	'2019-03-18 08:10:33',	'kamonwans',	NULL,	NULL),
(142,	'qqqqq',	'-',	'-',	'0614242964',	'',	'58160386@go.buu.ac.th',	NULL,	1,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	0,	'2019-03-18 15:52:41',	'Kamonwan Sangrawee',	'2019-05-15 18:04:27',	'Kamonwan Sangrawee'),
(143,	'qqqqq',	'-',	'-',	'00',	'',	'58160386@go.buu.ac.th',	NULL,	1,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	0,	'2019-03-18 15:55:58',	'Kamonwan Sangrawee',	'2019-05-15 18:04:27',	'Kamonwan Sangrawee'),
(144,	'qqqqq',	'Manager',	'Manager',	'0614242964',	'',	'58160386@go.buu.ac.th',	NULL,	1,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	0,	'2019-03-18 16:01:51',	'Kamonwan Sangrawee',	'2019-05-15 18:04:27',	'Kamonwan Sangrawee'),
(145,	'ธชยวัฒน์ ผสมทรัพย์',	'ผู้จัดการ',	'ผู้จัดการ',	'0805620806',	'',	'dhachayawat@gmail.com',	NULL,	40,	'dhachayawat@gmail.com',	'$2y$10$/4FgBbjFaztnMRKkzhbCQeJipMuhsOTI9.kP1F7ccifT5es6IDMlC',	1,	'2019-03-19 06:34:28',	'kamonwans',	NULL,	NULL),
(146,	'ธชยวัฒน์ ผสมทรัพย์',	'ผู้จัดการ',	'HR',	'0805620806',	'',	'greenhub.thailand@gmail.com',	NULL,	40,	'greenhub.thailand@gmail.com',	'$2y$10$R2iJYK0eIkZd1JLy79141uIwOVojZ./xx/N/.ZXNaVw14qSeJHE9m',	1,	'2019-03-19 06:35:54',	'kamonwans',	NULL,	NULL),
(147,	'ธชยวัฒน์ ผสมทรัพย์',	'ผู้จัดการ',	'HR',	'0805620806',	'',	'greenhub.thailand@gmail.com',	NULL,	40,	'greenhub.thailand@gmail.com',	'$2y$10$zDyqlmK60zb8xdHa2u4cPeAlg5JoPTZEAeM.GbPTDrakCJYcZ29Oq',	1,	'2019-03-19 06:35:59',	'kamonwans',	NULL,	NULL),
(148,	'Administrator',	'Coop_Administrator',	'Coop_Administrator',	'0614242964',	'',	'bankzxii@gmail.com',	NULL,	4,	'bankzxii@gmail.com',	'$2y$10$zBzM9sEhXr5bejyv6zN8x.6y9ixlbT7RRrsfryyqs/ZEBx0U.In9y',	1,	'2019-04-01 07:38:16',	'Kamonwan Sangrawee',	'2019-05-06 08:29:53',	NULL),
(149,	'Admin_2',	'Admin_22',	'Admin_2',	'0614242964',	'',	'bankzxiistyle@gmail.com',	NULL,	1,	'bankzxiistyle@gmail.com',	'$2y$10$v6.ZbTv6.022iozHQ3KOBe9k/z0gMmA3nejqpELsHWxl2JoDXuSJC',	1,	'2019-04-01 07:47:14',	'Kamonwan Sangrawee',	'2019-06-04 05:41:19',	'Kamonwan Sangrawee'),
(150,	'Admin',	'test',	'test',	'0614242964',	'',	'mixmaajix@gmail.com',	NULL,	4,	'mixmaajix@gmail.com',	'$2y$10$5ndVpfh3.KwqrJhwCIg7qu/BIvpW9uTfMBl3kP/0tqJeVfM8cPVPG',	1,	'2019-04-02 09:10:58',	'Kamonwan Sangrawee',	'2019-05-16 04:18:18',	'Kamonwan Sangrawee'),
(151,	'Admin',	'admin',	'admin',	'0925989952',	'',	'Nattiya.anukulthong@gmail.com',	NULL,	1,	'Nattiya.anukulthong@gmail.com',	'$2y$10$D4queT8HqQ8N24XI31I8RufuFifMUxKY6ZxNxKSEfj5q03kZb9cFy',	0,	'2019-04-03 06:58:58',	'Kamonwan Sangrawee',	'2019-05-12 08:40:56',	'Kamonwan Sangrawee'),
(152,	'qqqqq',	'Manager',	'admin',	'00',	'',	'mix_maajix@hotmail.com',	NULL,	1,	'mix_maajix@hotmail.com',	'$2y$10$941azJRaaS5BQWkeJIBPwu7uLZ8GUp5ZvfPhYw55q5wCHSRbsYRpy',	0,	'2019-04-06 13:38:12',	'Kamonwan Sangrawee',	'2019-05-14 15:49:56',	'Kamonwan Sangrawee'),
(153,	'นาย วริทธ์ พุ่มไม้',	'fadsfdas',	'fdsafdasf',	'0614242964',	'',	'bank2@gmail.com',	NULL,	7,	'bank2@gmail.com',	'$2y$10$N5NtdQsYCXNn.GdWsU2PIO3Uy.vgMYsUrpGBb1hbuPDJ6R2oTP.DS',	1,	'2019-04-22 10:30:00',	'Kamonwan Sangrawee',	'2019-05-15 18:37:58',	'Kamonwan Sangrawee'),
(154,	'gdasdgdasg',	'gdasgdas',	'gdas',	'0614242964',	'',	'bank3@gmail.com',	NULL,	8,	'bank3@gmail.com',	'$2y$10$wf21q1H1j.5vnU/oUA7V/.mnje4DP0KyQq8eGCbnnPEnX/2qU.Xpy',	1,	'2019-04-22 10:31:10',	'Kamonwan Sangrawee',	'2019-04-28 11:07:54',	'Kamonwan Sangrawee'),
(155,	'gdasdgdasg',	'gdasgdas',	'gdas',	'0614242964',	'',	'bank3@gmail.com',	NULL,	8,	'bank3@gmail.com',	'$2y$10$wf21q1H1j.5vnU/oUA7V/.mnje4DP0KyQq8eGCbnnPEnX/2qU.Xpy',	1,	'2019-04-22 10:31:13',	'Kamonwan Sangrawee',	'2019-04-28 11:07:54',	'Kamonwan Sangrawee'),
(156,	'asdfdas',	'fdasfads',	'fdasfdas',	'0614242964',	'',	'bank3@gmail.com',	NULL,	9,	'bank3@gmail.com',	'$2y$10$wf21q1H1j.5vnU/oUA7V/.mnje4DP0KyQq8eGCbnnPEnX/2qU.Xpy',	1,	'2019-04-22 12:14:41',	'Kamonwan Sangrawee',	'2019-04-28 11:07:54',	'Kamonwan Sangrawee'),
(157,	'Admin',	'Manager',	'Manager',	'0614242964',	'',	'qqqqqqqq@gmail.com',	NULL,	13,	'qqqqqqqq@gmail.com',	'$2y$10$pQpLImL32Xuu/2gNp0kmQeVrgya1eClIZKwc3WGCgg42XZIhSUeoS',	1,	'2019-04-28 11:10:49',	'Kamonwan Sangrawee',	'2019-04-28 11:11:06',	'Kamonwan Sangrawee'),
(158,	'Admin',	'admin',	'Manager',	'0614242964',	'',	'123456789@gmail.com',	NULL,	26,	'123456789@gmail.com',	'$2y$10$PXk65srprm..gb5mWUFtYOqt3Rgcn9vlcFiq8cfGUQtbkPxLKBFum',	1,	'2019-04-29 09:03:28',	'Kamonwan Sangrawee',	'2019-05-10 13:58:02',	'Kamonwan Sangrawee'),
(159,	'admin',	'admin',	'admin',	'092589952',	'',	'58160386@go.buu.ac.th',	NULL,	42,	'58160386@go.buu.ac.th',	'$2y$10$qwuLZPF5M.KCp6K9rZn35OUbR8oAi1mKe3TEG3rPMXnFBit9soj8S',	1,	'2019-05-02 06:57:28',	'Kamonwan Sangrawee',	'2019-05-15 18:04:27',	'Kamonwan Sangrawee'),
(166,	'Admin test case',	'admin',	'admin',	'0925989952',	'',	'Nattiya.anukulthong@gmail.com',	NULL,	4,	'Nattiya.anukulthong@gmail.com',	'$2y$10$D4queT8HqQ8N24XI31I8RufuFifMUxKY6ZxNxKSEfj5q03kZb9cFy',	1,	'2019-05-06 15:32:16',	'Kamonwan Sangrawee',	'2019-05-12 08:40:56',	'Kamonwan Sangrawee'),
(167,	'XXX YYY',	'oeoe',	'oeoe',	'034034934',	'09349340',	'buf2005@gmail.com',	NULL,	1,	'buf2005@gmail.com',	'$2y$10$gCN8l9Ws3bVzAkXvOFHzruhG9Bciksl/wO4p4V7bGJUu0blelZVW6',	0,	'2019-05-06 15:34:43',	'Kamonwan Sangrawee',	'2019-05-14 15:49:53',	'Kamonwan Sangrawee'),
(168,	'YTIO',	'odfi',	'dso',	'0548408',	'50050',	'buf2005.1@gmail.com',	NULL,	4,	'buf2005.1@gmail.com',	'$2y$10$3.Jbj1WOXcwm5BFFNFedRezW3YsMd4HiUlCq3HcCqXEOTuLiSfXvm',	1,	'2019-05-06 15:36:54',	'Kamonwan Sangrawee',	NULL,	NULL),
(206,	'TestA',	'Test',	'Test',	'Test',	'',	'mix_maajix@gmail.com',	NULL,	1,	'mix_maajix@gmail.com',	'$2y$10$Fe350BGDWxxxkfX7YFj.zOVyf5PWa.DhHgzn5dlDhhbI97teCPPe6',	0,	'2019-05-15 18:14:16',	'Kamonwan Sangrawee',	'2019-06-01 10:59:05',	'Kamonwan Sangrawee'),
(207,	'เต้จัง',	'MD',	'-',	'038-103096',	'',	'w.yookwan@gmail.com',	NULL,	47,	'w.yookwan@gmail.com',	'$2y$10$xwYVdQK2bwIkmBQGVZhy7uxPXSIQ8AjUMk8u5pMAtJ5T0CNP4wV8O',	1,	'2019-05-16 06:38:57',	'kamonwans',	'2019-05-18 16:08:48',	'Kamonwan Sangrawee'),
(209,	'นิลรัตน์ ก้านหยั่นทอง',	'CTO',	'R&D',	'0863578425',	'',	'parin.kan16@gmail.com',	NULL,	47,	'parin.kan16@gmail.com',	'$2y$10$Z6yf6SxlwWgR5fcWQYpEJuv299/xemx.9JlDjqJgRJDSCush8fuf.',	1,	'2019-05-16 06:47:08',	'เต้จัง',	NULL,	NULL),
(213,	'dasf',	'fdasfas',	'fdasfsa',	'fdsafasd',	'fdsadfsa',	'bank2@gmail.com',	NULL,	1,	'bank2@gmail.com',	'$2y$10$s4TZBJNAGrK9ypkDyV6WBuIpO8KCPIxuGvpgbEviWqz7VjZ/rTZsy',	0,	'2019-05-18 16:39:59',	'Kamonwan Sangrawee',	'2019-06-01 10:58:38',	'Kamonwan Sangrawee'),
(215,	'fasdf',	'fdsa',	'fdas',	'fdasf',	'fdsa',	'bank2@gmail.com',	NULL,	1,	'bank2@gmail.com',	'$2y$10$xiluMUKqPk6gQ3eeTqlgOOBvtA.KWsBEcVZ7ne.u9YE9rKATA4dJ.',	0,	'2019-05-18 16:44:18',	'Kamonwan Sangrawee',	'2019-05-21 16:08:32',	'Kamonwan Sangrawee'),
(216,	'bank',	'adfs',	'fdsa',	'fdas',	'fdas',	'bank2@gmail.com',	NULL,	1,	'bank2@gmail.com',	'$2y$10$xk3LMksp0lsJL8cOkbL8KuhMRUj44vnY7J5FWwrFs3YRnh2GTUAba',	0,	'2019-05-18 16:57:07',	'Kamonwan Sangrawee',	'2019-05-21 16:08:36',	'Kamonwan Sangrawee'),
(217,	'Admin test case',	'Manager',	'Manager',	'0614242964',	'',	'58160427@gmail.com',	NULL,	47,	'58160427@gmail.com',	'$2y$10$ArquSFdlX6iKMv7M9yxVhuJGDRMhI1UAMmod2CNTMtcw3RcaTx8wm',	1,	'2019-05-19 10:12:16',	'Kamonwan Sangrawee',	'2019-05-19 10:12:31',	'Kamonwan Sangrawee'),
(222,	'นาย วริทธ์ พุ่มไม้',	'admin',	'Manager',	'0614242964',	'',	'fortess@gmail.com',	NULL,	81,	'fortess@gmail.com',	'$2y$10$T1qpHGcPAosrsadb0BwpW.iL.b63eMij/WukrrEX9rFr0b3w1Vd4m',	1,	'2019-05-21 09:52:56',	'Kamonwan Sangrawee',	NULL,	NULL),
(223,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Numtarn-test01@gmail.com',	NULL,	82,	'Numtarn-test01@gmail.com',	'$2y$10$yds4lp8nK.cazdJ4VralW.QZexGPmU9qCQ9FZp3mAlJHHWtvzNaAm',	1,	'2019-05-22 11:30:37',	'Kamonwan Sangrawee',	'2019-05-22 13:59:49',	'Kamonwan Sangrawee'),
(224,	'Tester',	'admin',	'Manager',	'0614242964',	'',	'Numtarn-test02@gmail.com',	NULL,	83,	'Numtarn-test02@gmail.com',	'$2y$10$oxoI65ypHjbrl97gCNwd2OEtc3XIXoE604Im2twGLgJq59U8aa6RS',	1,	'2019-05-22 12:42:45',	'Kamonwan Sangrawee',	NULL,	NULL),
(225,	'qwer',	'test',	'test',	'0802222',	'',	'testttt@gmail.com',	NULL,	84,	'testttt@gmail.com',	'$2y$10$RafmzDj5R//GH64ShO7Pru9k3r3B891FyHf4Z.Ij0ENWJRVbaVZF6',	1,	'2019-05-22 12:54:27',	'Kamonwan Sangrawee',	NULL,	NULL),
(226,	'test',	'tesdt',	'test',	'test',	'',	'testter@testmail.com',	NULL,	85,	'testter@testmail.com',	'$2y$10$.5Pd64KeRdf2TzJ2ssUny.UMFIx1dnB9HTQD36B8ejPONuUgDdNRS',	0,	'2019-05-22 12:57:26',	'Kamonwan Sangrawee',	'2019-05-22 13:43:14',	'Kamonwan Sangrawee'),
(227,	'zom',	'admin',	'admin',	'0851225925',	'-',	'zomtam-m001@hotmail.com',	NULL,	86,	'zomtam-m001@hotmail.com',	'$2y$10$NNe4WyrEyt4aE7AtxQYyn.egb/Q6IMEB/8TZS5gA2JUC1wV/J/2Ly',	1,	'2019-05-22 13:44:04',	'Kamonwan Sangrawee',	NULL,	NULL),
(228,	'zom',	'admin',	'admin',	'0851225925',	'-',	'zomzom-m005@gmail.com',	NULL,	88,	'zomzom-m005@gmail.com',	'$2y$10$L0oNZWlwJFC0kbgy7hOI2eWM/IIqge.w6VF31xmg9KXqGRZOrJWPC',	1,	'2019-05-22 13:49:36',	'Kamonwan Sangrawee',	NULL,	NULL),
(229,	'bank',	'fdas',	'fdsa',	'fdas',	'fdsa',	'bank911@gmail.com',	NULL,	87,	'bank911@gmail.com',	'$2y$10$.XAWpjIQNdmklZSYCNOoB.gvABiYI3M1lrOZObNi8CuQtZWJ1EvBC',	1,	'2019-05-22 13:49:43',	'Kamonwan Sangrawee',	NULL,	NULL),
(230,	'zom',	'admin',	'admin',	'0851225925',	'-',	'zomzom-m0124@gmail.com',	NULL,	89,	'zomzom-m0124@gmail.com',	'$2y$10$cSa220bXQ4/un731Icq7SuZmDSpdmFN8ZcfXIHFfXPXkwQaSfdZDG',	1,	'2019-05-22 14:00:00',	'Kamonwan Sangrawee',	NULL,	NULL),
(231,	'Admin test case',	'admin',	'admin',	'0925989952',	'',	'Numtarn-test03@gmail.com',	NULL,	47,	'Numtarn-test03@gmail.com',	'$2y$10$oLN2jXAHi94N1.CXtIjp4uIqSc8vXWSRWOCmruc00Oi6icKxtY4Pe',	1,	'2019-05-22 14:01:04',	'Kamonwan Sangrawee',	'2019-05-22 14:03:55',	'Kamonwan Sangrawee'),
(232,	'Admin test case',	'admin',	'admin',	'0925989952',	'',	'Numtarn-test04@gmail.com',	NULL,	90,	'Numtarn-test04@gmail.com',	'$2y$10$yoGTwfR50XQEQ8aIdXwACOD8unrGrLRmvYCqS8da5zxYAu/0EZf9m',	1,	'2019-05-22 14:36:15',	'Kamonwan Sangrawee',	NULL,	NULL),
(233,	'qq',	'qq',	'qq',	'qq',	'',	'qq@go.buu.ac.th',	NULL,	90,	'qq@go.buu.ac.th',	'$2y$10$Q7VRA/mdY1AaGZrUB2DHueFAvVlmII2F5HPw0mwoHVvI7cdPA8T4S',	0,	'2019-05-23 06:21:26',	'Kamonwan Sangrawee',	'2019-05-23 06:21:59',	'Kamonwan Sangrawee'),
(234,	'qq',	'qq',	'qq',	'qq',	'',	'tesssss@go.buu.ac.th',	NULL,	90,	'tesssss@go.buu.ac.th',	'$2y$10$S2NQxxDdq2YrUqg73VjQJerClSyzRt.WNDPeFPe0dpMoTZpL/8l9m',	0,	'2019-05-23 06:21:46',	'Kamonwan Sangrawee',	'2019-05-23 06:22:01',	'Kamonwan Sangrawee'),
(235,	'qq',	'qq',	'qq',	'qq',	'',	'tesssss@gmail.com',	NULL,	90,	'tesssss@gmail.com',	'$2y$10$Wh6b7S1SFIR/Ox6uwKR6H./kL8DUXmTNI2SYhwUjnZ00v.DBscGo6',	0,	'2019-05-23 06:22:18',	'Kamonwan Sangrawee',	'2019-05-23 06:22:28',	'Kamonwan Sangrawee'),
(236,	'qq',	'qq',	'qqq',	'q',	'',	'fortesss@gmail.com',	NULL,	90,	'fortesss@gmail.com',	'$2y$10$24WafsFwVw.UBtyvEqo0s.Qae1IIO5sVHE2/F8AnUP5trV4QLKxG2',	0,	'2019-05-23 06:23:11',	'Kamonwan Sangrawee',	'2019-05-23 06:23:53',	'Kamonwan Sangrawee'),
(237,	'ทดสอบ',	'qq',	'qq',	'qq',	'',	'mqwerty@email.com',	NULL,	1,	'mqwerty@email.com',	'$2y$10$3AJHico/M99BiDmf/okJBujSaZWrjj6POydwj2NJ/tfHx3eIShhmW',	0,	'2019-05-23 06:26:09',	'Kamonwan Sangrawee',	'2019-05-23 06:28:06',	'Kamonwan Sangrawee'),
(238,	'qq',	'qq',	'qq',	'qq',	'',	'qwerty@gmail.vom',	NULL,	1,	'qwerty@gmail.vom',	'$2y$10$2udiYIKwsV04.eezhappreVFYZvSV9l18pIS/GutihGme0m.BDc7C',	0,	'2019-05-23 06:29:07',	'Kamonwan Sangrawee',	'2019-05-23 06:29:19',	'Kamonwan Sangrawee'),
(239,	'qq',	'qq',	'qq',	'qq',	'',	'qwerty@gail.com',	NULL,	1,	'qwerty@gail.com',	'$2y$10$vSoMhJxCXGZMdjsNF5LKeeOK/qcCY9ivcRaIYu7QocDfLM/OEwNea',	0,	'2019-05-23 06:30:23',	'Kamonwan Sangrawee',	'2019-06-01 10:57:21',	'Kamonwan Sangrawee'),
(240,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Numtarn-test05@gmail.com',	NULL,	91,	'Numtarn-test05@gmail.com',	'$2y$10$nVT1KmMYWNTiv2aBB1y4h.u1gurdE1JiCDeiUzZW7ziaZhUi2YE06',	1,	'2019-05-24 07:22:31',	'Kamonwan Sangrawee',	NULL,	NULL),
(241,	'qq',	'qq',	'qq',	'qq',	'',	'qqqqqqqqqqqq@qmail.com',	NULL,	93,	'qqqqqqqqqqqq@qmail.com',	'$2y$10$NTAlvwoFZKExE1y8AXGDIusv1dXOsGmAdCxPEhhcp43xsVVtCbtGC',	1,	'2019-05-24 08:33:16',	'Kamonwan Sangrawee',	NULL,	NULL),
(242,	'Admin test case',	'admin',	'admin',	'0925989952',	'',	'mixmaajix_1@gmail.com',	NULL,	95,	'mixmaajix_1@gmail.com',	'$2y$10$OaT/oE0d40ZxE9PqQ1sA7.08tWPjhU4izIj.mTpTQJgTunTowF4Cq',	1,	'2019-05-24 11:08:40',	'Kamonwan Sangrawee',	NULL,	NULL),
(243,	'ๆๆ',	'qq',	'qq',	'qq',	'',	'tessssssssq@gg.com',	NULL,	96,	'tessssssssq@gg.com',	'$2y$10$NF6Yoq.ZptA06gLXXbRf5.NLywO6BNasGKOJZvBKpAUyxNyCyMVS.',	1,	'2019-05-24 11:17:08',	'Kamonwan Sangrawee',	NULL,	NULL),
(244,	'admin',	'admin',	'admin',	'0851225925',	'',	'zomtam-m0010@hotmail.com',	NULL,	97,	'zomtam-m0010@hotmail.com',	'$2y$10$FIDzNNSZurE9EqW1jprwSeGf8H4Hs1CKOCH1DOPPyMSffNAAAZy4W',	1,	'2019-05-27 07:07:31',	'Kamonwan Sangrawee',	'2019-05-27 07:08:43',	'Kamonwan Sangrawee'),
(245,	'admin',	'admin',	'admin',	'0851225925',	'',	'Numtarn-123456@gmail.com',	NULL,	98,	'Numtarn-123456@gmail.com',	'$2y$10$JOEwZ4yrYoDa4GOGH1kgCelFWVZmzD0soVIhn.bVKgT24QgYpZH1C',	1,	'2019-05-29 07:31:10',	'Kamonwan Sangrawee',	'2019-05-29 09:50:46',	'Kamonwan Sangrawee'),
(246,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Numtarn-test06@gmail.com',	NULL,	99,	'Numtarn-test06@gmail.com',	'$2y$10$rzD.2X9Zz6VDvKx.vVyPyesqrwBMwg6Y.70bLYfvm9hg.QOjg1fyO',	1,	'2019-05-29 12:15:47',	'Kamonwan Sangrawee',	'2019-05-29 13:11:11',	'Kamonwan Sangrawee'),
(247,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Numtarn-test07@gmail.com',	NULL,	100,	'Numtarn-test07@gmail.com',	'$2y$10$65yEEVKa5A3P1TaSEGxH6eVD5E/JKDjlI/U9F0xkGJMaGaDf2U6ru',	1,	'2019-05-29 12:25:33',	'Kamonwan Sangrawee',	NULL,	NULL),
(248,	'mmm',	'm',	'm',	'0802484075',	'',	'mmmmm@mail.com',	NULL,	101,	'mmmmm@mail.com',	'$2y$10$BcHc/a2GmE3AB8pcZm6JB..eXNBSJSdigAvX3EbfLgl6/QUCLriRW',	1,	'2019-05-29 12:52:11',	'Kamonwan Sangrawee',	NULL,	NULL),
(249,	'nnnnnnn',	'n',	'n',	'0200000',	'',	'nnnnn@mail.com',	NULL,	101,	'nnnnn@mail.com',	'$2y$10$jITMYu0OJItSl6VDmfby6uqJDXncHEyg.NKIN8A12ZGyA2/FsoLl2',	1,	'2019-05-29 12:53:15',	'Kamonwan Sangrawee',	NULL,	NULL),
(250,	'q',	'qq',	'qq',	'020202',	'',	'qqqqqqqq@qqqq.com',	NULL,	1,	'qqqqqqqq@qqqq.com',	'$2y$10$SJ2UjoguWKx7SAfhS5TmBuXxUIZkbXbQ2RNURbLa50CoAj3rncm9.',	0,	'2019-06-01 10:55:23',	'Kamonwan Sangrawee',	'2019-06-01 10:55:32',	'Kamonwan Sangrawee'),
(251,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Nattiya.anukulthong01@gmail.com',	NULL,	1,	'Nattiya.anukulthong01@gmail.com',	'$2y$10$fsetQGZuZtXJpXBq5c2dJ.T308jpE7GE1ftr0SWOq0tcBqpAvtE5W',	0,	'2019-06-01 10:57:38',	'Kamonwan Sangrawee',	'2019-06-01 10:58:35',	'Kamonwan Sangrawee'),
(252,	'Admin test case01',	'admin',	'Manager',	'0925989952',	'',	'Nattiya.anukulthong0001@gmail.com',	NULL,	1,	'Nattiya.anukulthong0001@gmail.com',	'$2y$10$r418Pa4slqlDSZcXNv6XpeFTWeek/ukBaJEiG2UNvr/XXH.fSt4oK',	0,	'2019-06-01 10:58:55',	'Kamonwan Sangrawee',	'2019-06-01 10:59:16',	'Kamonwan Sangrawee'),
(253,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'mixmaajix-001@gmail.com',	NULL,	1,	'mixmaajix-001@gmail.com',	'$2y$10$ow3SB64/cRMKcK8uKdeUr.lZzChFQRfaTGttDtjvHIKvkzsU6BlNW',	1,	'2019-06-01 11:00:02',	'Kamonwan Sangrawee',	NULL,	NULL),
(254,	'Admin test case-01',	'Manager',	'Manager',	'0925989952',	'',	'Nattiya.anukulthong-01@gmail.com',	NULL,	98,	'Nattiya.anukulthong-01@gmail.com',	'$2y$10$NshtiIu500DU9YvdUMXFruob.IEIyyo/yPs3mPHBVsjVJAqh3XUpu',	1,	'2019-06-01 11:02:54',	'Kamonwan Sangrawee',	NULL,	NULL),
(255,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'Nattiya.anukulthong001@gmail.com',	NULL,	102,	'Nattiya.anukulthong001@gmail.com',	'$2y$10$NpLOFVK7q6RRE7M6SMzuDuM4LCAlxQf4yqVfpUFk213V.Nq8mgjiu',	1,	'2019-06-03 10:36:54',	'Kamonwan Sangrawee',	'2019-06-03 10:40:42',	'Kamonwan Sangrawee'),
(256,	'Admin test case',	'Manager',	'Manager',	'0925989952',	'',	'58160386-01@go.buu.ac.th',	NULL,	103,	'58160386-01@go.buu.ac.th',	'$2y$10$ozmebKKvLlzWzbhpG570Qu2t9hs6SbzoD1ltx08Ff4QiKulASFyT.',	1,	'2019-06-04 05:52:12',	'Kamonwan Sangrawee',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertCompanyPersonLog` BEFORE INSERT ON `tb_company_person` FOR EACH ROW
BEGIN
		SET New.person_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.person_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCompanyPersonLog` BEFORE UPDATE ON `tb_company_person` FOR EACH ROW
BEGIN
		SET New.person_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.person_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_company_status`;
CREATE TABLE `tb_company_status` (
  `company_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_status_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`company_status_id`),
  KEY `company_status_id` (`company_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_company_status` (`company_status_id`, `company_status_name`) VALUES
(1,	'รอเรียกสัมภาษณ์'),
(2,	'รอสถานประกอบการเรียกสัมภาษณ์'),
(3,	'รอผลสอบสัมภาษณ์'),
(4,	'ผ่านการสัมภาษณ์'),
(5,	'รับเข้าเป็นนิสิตสหกิจ');

DROP TABLE IF EXISTS `tb_coop_company_questionnaire_item`;
CREATE TABLE `tb_coop_company_questionnaire_item` (
  `coop_company_questionnaire_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `coop_company_questionnaire_item_title` varchar(2000) DEFAULT NULL,
  `coop_company_questionnaire_item_type` enum('score','comment') DEFAULT NULL,
  `coop_company_questionnaire_item_number` double DEFAULT NULL,
  `coop_company_questionnaire_item_description` varchar(1000) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`coop_company_questionnaire_item_id`,`subject_id`,`term_id`),
  KEY `fk_tb_coop_company_questionnaire_item_tb_term1_idx` (`term_id`),
  KEY `fk_table1_coop_company_questionnaire_subject1` (`subject_id`),
  CONSTRAINT `fk_table1_coop_company_questionnaire_subject1` FOREIGN KEY (`subject_id`) REFERENCES `tb_coop_company_questionnaire_subject` (`coop_company_questionnaire_subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_coop_company_questionnaire_item_tb_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_company_questionnaire_item` (`coop_company_questionnaire_item_id`, `subject_id`, `coop_company_questionnaire_item_title`, `coop_company_questionnaire_item_type`, `coop_company_questionnaire_item_number`, `coop_company_questionnaire_item_description`, `term_id`) VALUES
(7,	2,	'มีการประสานงานระหว่างสถานประกอบการกับคณะฯ เป็นอย่างดี',	'score',	1.1,	'xx',	14),
(8,	2,	'มีความพร้อมด้านสิ่งอำนวยความสะดวกในการปฏิบัติงาน(ความพร้อม ด้านสถานที่ เครื่องมือ อุปกรณ์)',	'score',	1.2,	'',	14),
(9,	2,	'ให้การสนับสนุนด้านสวัสดิการ (ที่พัก เบี้ยเลี้ยง ค่าตอบแทน รถรับส่ง ยูนิ ฟอร์ม)',	'score',	1.3,	'',	14),
(10,	2,	'การมอบหมายพนักงานที่ปรึกษาที่ชัดเจนในการดูแลนักศึกษา',	'score',	1.4,	'-',	14),
(11,	2,	'มีความปลอดภัยในการปฏิบัติงาน',	'score',	1.5,	'',	14),
(12,	2,	'ผู้บริหารให้ความสนใจและสนับสนุนโครงการสหกิจศึกษา/ฝึกงาน',	'score',	1.6,	'',	14),
(13,	3,	'คุณลักษณะงานตรงตามสาขาวิชา',	'score',	2.1,	'',	14),
(14,	3,	'คุณลักษณะงานตรงตามความต้องการของสถานประกอบการ',	'score',	2.2,	'',	14),
(15,	3,	'ปริมาณงานหรือขอบเขตงานที่ได้รับมีความเหมาะสมกับระยะเวลาและ ระดับการศึกษา',	'score',	2.3,	'',	14),
(16,	4,	'มีความรู้และประสบการณ์ในวิชาชีพ',	'score',	3.1,	'',	14),
(17,	4,	'มีเวลาให้ค าปรึกษาแก่นักศึกษาในการปฏิบัติงาน',	'score',	3.2,	'',	14),
(18,	4,	'ให้ความสนใจและใส่ใจในการสอนงานและสั่งงาน',	'score',	3.3,	'',	14);

DROP TABLE IF EXISTS `tb_coop_company_questionnaire_subject`;
CREATE TABLE `tb_coop_company_questionnaire_subject` (
  `coop_company_questionnaire_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `coop_company_questionnaire_subject_title` varchar(2000) DEFAULT NULL,
  `coop_company_questionnaire_subject_type` enum('subject','score','comment') DEFAULT NULL COMMENT 'score / comment\n',
  `term_id` int(11) NOT NULL,
  `coop_company_questionnaire_subject_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`coop_company_questionnaire_subject_id`,`term_id`),
  KEY `fk_coop_questionnaire_item_term1_idx` (`term_id`),
  CONSTRAINT `fk_coop_questionnaire_item_term10` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_company_questionnaire_subject` (`coop_company_questionnaire_subject_id`, `coop_company_questionnaire_subject_title`, `coop_company_questionnaire_subject_type`, `term_id`, `coop_company_questionnaire_subject_number`) VALUES
(2,	'ความพร้อมและความร่วมมือของสถานประกอบการ',	NULL,	14,	1),
(3,	'หัวข้อโครงงานสหกิจศึกษา/ฝึกงาน/ปัญหาพิเศษ',	NULL,	14,	2),
(4,	'พนักงานที่ปรึกษา',	NULL,	14,	3);

DROP TABLE IF EXISTS `tb_coop_document`;
CREATE TABLE `tb_coop_document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_code` varchar(200) NOT NULL COMMENT 'IN-S***',
  `document_name` varchar(200) NOT NULL,
  `document_deadline` datetime DEFAULT NULL,
  `document_active` int(11) NOT NULL,
  `document_template` varchar(200) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `document_created` datetime NOT NULL,
  `document_creator` varchar(100) DEFAULT NULL,
  `document_changed` datetime DEFAULT NULL,
  `document_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`document_id`,`document_code`,`term_id`),
  KEY `fk_coop_document_term1_idx` (`term_id`),
  KEY `document_id` (`document_id`,`document_code`),
  CONSTRAINT `fk_coop_document_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_document` (`document_id`, `document_code`, `document_name`, `document_deadline`, `document_active`, `document_template`, `term_id`, `document_created`, `document_creator`, `document_changed`, `document_changer`) VALUES
(1,	'IN-S001',	'ใบสมัครเป็นนิสิตสหกิจ',	'2019-05-17 14:09:00',	1,	'in-s001.docx',	14,	'2018-05-01 00:00:00',	'',	'2019-05-29 13:17:07',	'Kamonwan Sangrawee'),
(2,	'IN-S002',	'ใบสมัครงาน',	'2019-05-14 15:44:00',	1,	'in-s002.docx',	14,	'2018-05-01 00:00:00',	'',	'2019-05-19 17:15:28',	'Kamonwan Sangrawee'),
(3,	'IN-S003',	'แบบอนุญาตให้นิสิตไปปฏิบัติงานสหกิจศึกษา',	'2019-05-12 07:10:00',	0,	'template/in-s001.docx',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-19 17:15:21',	'Kamonwan Sangrawee'),
(4,	'IN-S004',	'แบบแจ้งรายละเอียดการปฏิบัติงาน และแผนที่ตั้งสถานประกอบการ ',	'2019-05-12 22:00:00',	0,	'template/in-s001.docx',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-19 17:15:31',	'Kamonwan Sangrawee'),
(5,	'IN-S005',	'แบบแจ้งแผนปฏิบัติงานสหกิจศึกษา',	'2019-05-12 22:00:00',	1,	'template/in-s001.docx',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-16 07:55:27',	'kamonwans'),
(6,	'IN-S006',	'แบบแจ้งโครงร่างรายงานการปฏิบัติงาน (Work Term Report) ',	'2019-05-12 22:00:00',	1,	'template/in-s001.docx',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-16 07:55:27',	'kamonwans'),
(7,	'IN-S007',	'แบบคำร้องทั่วไป',	'2019-05-12 22:00:00',	1,	'template/in-s001.docx',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-19 17:56:23',	'Kamonwan Sangrawee'),
(8,	'IN-S008',	'แบบประเมินนิสิต',	'2019-08-12 22:00:00',	1,	'',	14,	'2018-04-14 14:56:29',	'system',	'2019-05-16 07:55:28',	'kamonwans');

DELIMITER ;;

CREATE TRIGGER `InsertCoopDocumentLog` BEFORE INSERT ON `tb_coop_document` FOR EACH ROW
BEGIN
		SET New.document_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.document_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCoopDocumentLog` BEFORE UPDATE ON `tb_coop_document` FOR EACH ROW
BEGIN
		SET New.document_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.document_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_coop_status`;
CREATE TABLE `tb_coop_status` (
  `coop_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `coop_status_name` varchar(200) DEFAULT NULL,
  `coop_status_change_coop_student` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`coop_status_id`),
  KEY `coop_status_id` (`coop_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_status` (`coop_status_id`, `coop_status_name`, `coop_status_change_coop_student`) VALUES
(1,	'รอสมัครงาน',	0),
(2,	'รอสัมภาษณ์',	0),
(3,	'รอผลสอบสัมภาษณ์',	0),
(7,	'เป็นนิสิตสหกิจ',	1);

DROP TABLE IF EXISTS `tb_coop_student`;
CREATE TABLE `tb_coop_student` (
  `student_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL DEFAULT '0',
  `term_id` int(11) NOT NULL,
  `adviser_id` varchar(11) NOT NULL DEFAULT '',
  `job_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `coop_student_active` int(11) NOT NULL,
  `coop_student_newsletter_receive` int(11) DEFAULT NULL COMMENT '0 no/1 yes:dorm/2 yes:company\n',
  `coop_student_latitude` varchar(200) DEFAULT NULL,
  `coop_student_longitude` varchar(200) DEFAULT NULL,
  `coop_student_oral_exam_date` datetime NOT NULL,
  `coop_student_company_score` decimal(4,2) NOT NULL,
  `coop_student_adviser_score` decimal(4,2) NOT NULL,
  `coop_student_created` datetime NOT NULL,
  `coop_student_creator` varchar(100) DEFAULT NULL,
  `coop_student_changed` datetime DEFAULT NULL,
  `coop_student_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`company_id`,`trainer_id`,`term_id`,`adviser_id`,`job_id`),
  KEY `fk_company_has_student_student1_idx` (`student_id`),
  KEY `fk_company_has_student_company1_idx` (`company_id`),
  KEY `fk_company_has_student_company_person1_idx` (`trainer_id`),
  KEY `fk_company_has_student_term1_idx` (`term_id`),
  KEY `fk_coop_student_teacher1_idx` (`adviser_id`),
  KEY `fk_coop_student_company_job_position1_idx` (`job_id`),
  KEY `fk_department_id` (`department_id`),
  CONSTRAINT `fk_company_has_student_company1` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_has_student_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_has_student_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coop_student_company_job_position1` FOREIGN KEY (`job_id`) REFERENCES `tb_company_job_position` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_department_id` FOREIGN KEY (`department_id`) REFERENCES `tb_department` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student` (`student_id`, `company_id`, `trainer_id`, `term_id`, `adviser_id`, `job_id`, `department_id`, `coop_student_active`, `coop_student_newsletter_receive`, `coop_student_latitude`, `coop_student_longitude`, `coop_student_oral_exam_date`, `coop_student_company_score`, `coop_student_adviser_score`, `coop_student_created`, `coop_student_creator`, `coop_student_changed`, `coop_student_changer`) VALUES
(58160386,	7,	153,	14,	'nutthanon',	39,	1,	1,	0,	'13.716754',	'100.558884',	'0000-00-00 00:00:00',	40.00,	30.00,	'2019-05-14 08:51:40',	'Kamonwan Sangrawee',	'2019-06-01 10:43:47',	'Kamonwan Sangrawee'),
(59160061,	47,	207,	14,	'----',	114,	3,	1,	0,	'13.1519327',	'100.8103735',	'2019-05-29 15:03:00',	33.00,	0.00,	'2019-05-16 07:48:28',	'kamonwans',	'2019-05-29 10:22:17',	'Kamonwan Sangrawee'),
(59160692,	47,	0,	14,	'----',	114,	3,	1,	NULL,	'18.317415',	'99.399181',	'2019-05-16 07:00:00',	32.50,	0.00,	'2019-05-16 07:48:28',	'kamonwans',	'2019-05-29 10:22:22',	'Kamonwan Sangrawee');

DELIMITER ;;

CREATE TRIGGER `InsertCoopStudentLog` BEFORE INSERT ON `tb_coop_student` FOR EACH ROW
BEGIN
		SET New.coop_student_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.coop_student_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCoopStudentLog` BEFORE UPDATE ON `tb_coop_student` FOR EACH ROW
BEGIN
		SET New.coop_student_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.coop_student_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_coop_student_daily_activity`;
CREATE TABLE `tb_coop_student_daily_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `activity_date` datetime DEFAULT NULL,
  `activity_subject` varchar(200) DEFAULT NULL,
  `activity_content` text,
  PRIMARY KEY (`activity_id`,`term_id`,`student_id`),
  KEY `fk_coop_student_daily_activity_term1_idx` (`term_id`),
  KEY `fk_coop_student_daily_activity_coop_student1_idx` (`student_id`),
  KEY `index4` (`activity_id`),
  CONSTRAINT `fk_coop_student_daily_activity_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coop_student_daily_activity_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_daily_activity` (`activity_id`, `term_id`, `student_id`, `activity_date`, `activity_subject`, `activity_content`) VALUES
(4,	14,	59160061,	'2019-05-16 15:06:17',	'ออกแบบ',	'<p>ออกแบบระบบ</p>');

DROP TABLE IF EXISTS `tb_coop_student_dorm`;
CREATE TABLE `tb_coop_student_dorm` (
  `student_id` int(11) NOT NULL,
  `dorm_name` varchar(200) DEFAULT NULL,
  `dorm_room` varchar(200) DEFAULT NULL,
  `dorm_address_number` varchar(200) DEFAULT NULL,
  `dorm_address_alley` varchar(200) DEFAULT NULL,
  `dorm_address_road` varchar(200) DEFAULT NULL,
  `dorm_address_district` varchar(200) DEFAULT NULL,
  `dorm_address_area` varchar(200) DEFAULT NULL,
  `dorm_address_province` varchar(200) DEFAULT NULL,
  `dorm_address_postal_code` varchar(200) DEFAULT NULL,
  `dorm_telephone` varchar(200) DEFAULT NULL,
  `dorm_fax_number` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `fk_coop_student_dorm_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_dorm` (`student_id`, `dorm_name`, `dorm_room`, `dorm_address_number`, `dorm_address_alley`, `dorm_address_road`, `dorm_address_district`, `dorm_address_area`, `dorm_address_province`, `dorm_address_postal_code`, `dorm_telephone`, `dorm_fax_number`) VALUES
(58160386,	'ไม่มี',	'1',	'ไม่มี',	'ไม่มี',	'ไม่มี',	'ไม่มี',	'ไม่มี',	'ไม่มี',	'20000',	'0614242964',	'ไม่มี'),
(59160061,	'้่้่เีดพพเะกด',	'ดเด',	'ดเ',	'ดเด',	'เดเ',	'ดเดเ',	'เดเ',	'เดเดเ',	'02020',	'457785',	'เดเ');

DROP TABLE IF EXISTS `tb_coop_student_emergency_contact`;
CREATE TABLE `tb_coop_student_emergency_contact` (
  `student_id` int(11) NOT NULL,
  `contact_fullname` varchar(200) DEFAULT NULL,
  `contact_address_number` varchar(200) DEFAULT NULL,
  `contact_address_alley` varchar(200) DEFAULT NULL,
  `contact_address_road` varchar(200) DEFAULT NULL,
  `contact_address_district` varchar(200) DEFAULT NULL,
  `contact_address_area` varchar(200) DEFAULT NULL,
  `contact_address_province` varchar(200) DEFAULT NULL,
  `contact_address_postal_code` varchar(200) DEFAULT NULL,
  `contact_telephone` varchar(200) DEFAULT NULL,
  `contact_fax_number` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `fk_coop_student_emergency_contact_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_emergency_contact` (`student_id`, `contact_fullname`, `contact_address_number`, `contact_address_alley`, `contact_address_road`, `contact_address_district`, `contact_address_area`, `contact_address_province`, `contact_address_postal_code`, `contact_telephone`, `contact_fax_number`) VALUES
(58160386,	'นางปราณี อนุกูลทอง',	'152/25',	'-',	'-',	'ทุ่งสุขลา',	'ศรีราชา',	'ชลบุรี',	'20230',	'0868394870',	'0925989952'),
(59160061,	'นางสุดใจ ใจดี',	'บ้านเลขที่ 48/3 หมู่7',	'',	'',	'โคกไม้ลาย',	'เมือง',	'ปราจีนบุรี',	'25230',	'0860442971',	'-');

DROP TABLE IF EXISTS `tb_coop_student_general_petition`;
CREATE TABLE `tb_coop_student_general_petition` (
  `petition_id` int(11) NOT NULL AUTO_INCREMENT,
  `petition_subject` varchar(100) DEFAULT NULL,
  `petition_purpose` varchar(10000) DEFAULT NULL,
  `petition_reason` varchar(10000) DEFAULT NULL,
  `petition_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `student_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`petition_id`,`student_id`),
  KEY `fk_tb_coop_student_general_petition_tb_coop_student1_idx` (`student_id`),
  KEY `fk_term_term` (`term_id`),
  CONSTRAINT `fk_tb_coop_student_general_petition_tb_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_term_term` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_general_petition` (`petition_id`, `petition_subject`, `petition_purpose`, `petition_reason`, `petition_datetime`, `student_id`, `term_id`) VALUES
(1,	'ลา',	'123',	'ป่วย',	'2019-05-16 08:02:13',	59160061,	14),
(2,	'buu',	'buu',	'buu',	'2019-05-16 08:02:38',	59160692,	14);

DROP TABLE IF EXISTS `tb_coop_student_has_coop_document`;
CREATE TABLE `tb_coop_student_has_coop_document` (
  `student_id` int(11) NOT NULL,
  `coop_document_id` int(11) NOT NULL,
  `document_pdf_file` varchar(100) DEFAULT NULL,
  `document_word_file` varchar(100) NOT NULL,
  `document_sent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `document_subject` varchar(200) NOT NULL,
  PRIMARY KEY (`student_id`,`coop_document_id`,`document_subject`),
  KEY `fk_coop_student_has_coop_document_coop_document1_idx` (`coop_document_id`),
  KEY `fk_coop_student_has_coop_document_coop_student1_idx` (`student_id`),
  CONSTRAINT `fk_coop_student_has_coop_document_coop_document1` FOREIGN KEY (`coop_document_id`) REFERENCES `tb_coop_document` (`document_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coop_student_has_coop_document_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_has_coop_document` (`student_id`, `coop_document_id`, `document_pdf_file`, `document_word_file`, `document_sent_date`, `document_subject`) VALUES
(58160386,	3,	'/uploads/f62476c9ca323a2d75d641b99ac1eea6.pdf',	'',	'2019-05-20 14:17:36',	''),
(58160386,	4,	'/uploads/2bb15a0ee9e3aa52be324b5a3eb9d39d.pdf',	'',	'2019-05-19 17:31:52',	''),
(58160704,	1,	NULL,	'/uploads/58160704-IN-S001-O.docx',	'2019-05-19 17:58:30',	'1'),
(58160704,	2,	NULL,	'/uploads/58160704-IN-S002-1558343094.docx',	'2019-05-20 09:04:54',	'1'),
(58660033,	1,	'/uploads/3349f9d1706820cc99f7161bd9d88f5b.pdf',	'',	'2019-05-19 16:32:04',	'1'),
(59160061,	1,	'/uploads/57b0a10dddcd8a0f0d2965e41d3ef932.pdf',	'',	'2019-05-16 07:10:45',	'1'),
(59160061,	2,	'/uploads/5f0944ba1145a3abca672c2e8ed1d5b0.pdf',	'',	'2019-05-16 07:33:17',	'1'),
(59160061,	3,	'/uploads/7860eede94cfe7e05f5d35546437229d.pdf',	'',	'2019-05-16 07:53:07',	''),
(59160061,	3,	NULL,	'/uploads/59160061-IN-S003-1557993571.docx',	'2019-05-16 07:59:31',	'1'),
(59160061,	4,	'/uploads/90badf75d50a4ba2c270f5283c80ebd7.pdf',	'',	'2019-05-16 08:00:01',	''),
(59160061,	5,	'/uploads/e6641530b63473cdef4be591ce3e07a0.pdf',	'',	'2019-05-16 08:00:11',	''),
(59160061,	6,	'/uploads/8d827803df199ee577cb91db7e779fef.pdf',	'',	'2019-05-16 08:00:20',	''),
(59160061,	7,	'/uploads/35b6e2b38aa5b412f3d0256d0d34e1f6.pdf',	'',	'2019-05-16 08:02:39',	'ลา'),
(59160061,	8,	'/uploads/e76f26f03c030641d54930501dfec4ef.pdf',	'',	'2019-05-16 08:09:40',	''),
(59160134,	1,	NULL,	'/uploads/59160134-IN-S001-O.docx',	'2019-05-16 06:32:51',	'1'),
(59160654,	1,	NULL,	'/uploads/59160654-IN-S001-O.docx',	'2019-06-03 13:44:50',	'1'),
(59160692,	1,	'/uploads/03f348b414d957803f4a755176565df8.pdf',	'',	'2019-05-16 07:10:34',	'1'),
(59160692,	2,	'/uploads/47eeb0070f16ab81358ad6b8b1a186f5.pdf',	'',	'2019-05-16 07:33:57',	'1'),
(59160692,	3,	'/uploads/022601878874c4adf054ec0686cd7643.pdf',	'',	'2019-05-16 07:59:16',	''),
(59160692,	4,	'/uploads/a04c0cf472523530d5cf74cde08f23fb.pdf',	'',	'2019-05-16 07:59:28',	''),
(59160692,	5,	'/uploads/cb81fa176ed91342f3efe9c292e4fdde.pdf',	'',	'2019-05-16 08:00:27',	''),
(59160692,	6,	'/uploads/b83f44fdfd1ad13a2ad5cc1dc28cdc72.pdf',	'',	'2019-05-16 08:00:07',	''),
(59160692,	7,	'/uploads/39070f908d016ca4362facbb345b88b4.pdf',	'',	'2019-05-16 08:02:49',	'buu'),
(59160692,	8,	'/uploads/13748412715f502b16ed5b96d6603128.pdf',	'',	'2019-05-16 08:01:04',	''),
(59161035,	1,	'/uploads/3d88fdf608a7fcb2e7cd0a50c61ad26a.pdf',	'',	'2019-05-16 07:10:30',	'1'),
(59161035,	2,	'/uploads/9b5e80b808e6ab4d7b9f1174f14b8286.pdf',	'',	'2019-05-16 07:35:36',	'1');

DROP TABLE IF EXISTS `tb_coop_student_has_coop_student_questionnaire_comment`;
CREATE TABLE `tb_coop_student_has_coop_student_questionnaire_comment` (
  `student_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `coop_student_has_coop_student_questionnaire_comment_datetime` datetime DEFAULT NULL,
  `coop_student_has_coop_student_questionnaire_comment_no5` varchar(2000) DEFAULT NULL,
  `coop_student_has_coop_student_questionnaire_comment_no6` varchar(2000) DEFAULT NULL,
  `coop_student_has_coop_student_questionnaire_comment_no7` varchar(2000) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`trainer_id`,`company_id`,`term_id`),
  KEY `fk_student_has_coop_questionnaire_item_student1_idx` (`student_id`),
  KEY `fk_student_has_coop_questionnaire_item_company_person1_idx` (`trainer_id`,`company_id`),
  KEY `fk_student_has_coop_questionnaire_item_term1_idx` (`term_id`),
  CONSTRAINT `fk_student_has_coop_questionnaire_item_company_person11` FOREIGN KEY (`trainer_id`, `company_id`) REFERENCES `tb_company_person` (`person_id`, `company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_student11` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_term11` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_has_coop_student_questionnaire_comment` (`student_id`, `trainer_id`, `company_id`, `coop_student_has_coop_student_questionnaire_comment_datetime`, `coop_student_has_coop_student_questionnaire_comment_no5`, `coop_student_has_coop_student_questionnaire_comment_no6`, `coop_student_has_coop_student_questionnaire_comment_no7`, `term_id`) VALUES
(58160386,	153,	7,	'2019-05-20 20:29:06',	'ดี',	'ดี',	'ไม่มี',	14),
(59160061,	207,	47,	'2019-05-16 14:54:26',	'',	'',	'',	14),
(59160692,	207,	47,	'2019-05-16 15:01:10',	'',	'',	'',	14);

DROP TABLE IF EXISTS `tb_coop_student_has_coop_student_questionnaire_item`;
CREATE TABLE `tb_coop_student_has_coop_student_questionnaire_item` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `coop_student_has_coop_student_questionnaire_item_datetime` datetime DEFAULT NULL,
  `coop_student_has_coop_student_questionnaire_item_score` varchar(200) DEFAULT NULL,
  `coop_student_has_coop_student_questionnaire_item_comment` varchar(200) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`subject_id`,`trainer_id`,`company_id`,`term_id`,`item_id`),
  KEY `fk_student_has_coop_questionnaire_item_coop_questionnaire_i_idx` (`subject_id`),
  KEY `fk_student_has_coop_questionnaire_item_student1_idx` (`student_id`),
  KEY `fk_student_has_coop_questionnaire_item_company_person1_idx` (`trainer_id`,`company_id`),
  KEY `fk_student_has_coop_questionnaire_item_term1_idx` (`term_id`),
  KEY `fk_coop_student_has_coop_student_questionnaire_item_coop_st_idx` (`item_id`),
  KEY `fk_company_033` (`company_id`),
  CONSTRAINT `fk_company_033` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item` FOREIGN KEY (`item_id`) REFERENCES `tb_coop_student_questionnaire_item` (`coop_student_questionnaire_item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_coop_questionnaire_item_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainner222222` FOREIGN KEY (`trainer_id`) REFERENCES `tb_company_person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_has_coop_student_questionnaire_item` (`student_id`, `subject_id`, `trainer_id`, `company_id`, `coop_student_has_coop_student_questionnaire_item_datetime`, `coop_student_has_coop_student_questionnaire_item_score`, `coop_student_has_coop_student_questionnaire_item_comment`, `term_id`, `item_id`) VALUES
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	7),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	8),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	11),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	12),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	13),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	14),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	15),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	16),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	17),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	18),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	19),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	20),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	21),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	22),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	23),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	24),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	25),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	26),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	27),
(58160386,	0,	153,	7,	'2019-05-20 20:29:06',	'4',	NULL,	14,	28),
(59160061,	0,	207,	47,	'2019-05-16 14:54:25',	'4',	NULL,	14,	7),
(59160061,	0,	207,	47,	'2019-05-16 14:54:25',	'4',	NULL,	14,	8),
(59160061,	0,	207,	47,	'2019-05-16 14:54:25',	'4',	NULL,	14,	11),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'2',	NULL,	14,	12),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	13),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	14),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	15),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'2',	NULL,	14,	16),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'4',	NULL,	14,	17),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	18),
(59160061,	0,	207,	47,	'2019-05-16 14:54:25',	'5',	NULL,	14,	19),
(59160061,	0,	207,	47,	'2019-05-16 14:54:25',	'3',	NULL,	14,	20),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'4',	NULL,	14,	21),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'2',	NULL,	14,	22),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'4',	NULL,	14,	23),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	24),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'4',	NULL,	14,	25),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'2',	NULL,	14,	26),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'4',	NULL,	14,	27),
(59160061,	0,	207,	47,	'2019-05-16 14:54:26',	'3',	NULL,	14,	28),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'5',	NULL,	14,	7),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'3',	NULL,	14,	8),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'5',	NULL,	14,	11),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	12),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	13),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	14),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	15),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	16),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	17),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	18),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	19),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'3',	NULL,	14,	20),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	21),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	22),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	23),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	24),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	25),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'3',	NULL,	14,	26),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'4',	NULL,	14,	27),
(59160692,	0,	207,	47,	'2019-05-16 15:01:10',	'2',	NULL,	14,	28);

DROP TABLE IF EXISTS `tb_coop_student_permit`;
CREATE TABLE `tb_coop_student_permit` (
  `student_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `permit_fullname` varchar(200) DEFAULT NULL,
  `permit_relative` varchar(200) DEFAULT NULL,
  `permit_address_number` varchar(200) DEFAULT NULL,
  `permit_address_road` varchar(200) DEFAULT NULL,
  `permit_address_district` varchar(200) DEFAULT NULL,
  `permit_address_area` varchar(200) DEFAULT NULL,
  `permit_address_province` varchar(200) DEFAULT NULL,
  `permit_address_postal_code` varchar(200) DEFAULT NULL,
  `permit_telephone` varchar(200) DEFAULT NULL,
  `permit_fax_number` varchar(200) DEFAULT NULL,
  `permit_email` varchar(200) DEFAULT NULL,
  `permit_choice` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student_id`),
  KEY `fk_term_term_2` (`term_id`),
  CONSTRAINT `fk_coop_student_permit_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_term_term_2` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_permit` (`student_id`, `term_id`, `permit_fullname`, `permit_relative`, `permit_address_number`, `permit_address_road`, `permit_address_district`, `permit_address_area`, `permit_address_province`, `permit_address_postal_code`, `permit_telephone`, `permit_fax_number`, `permit_email`, `permit_choice`) VALUES
(58160386,	14,	'นางปราณี อนุกูลทอง',	'มารดา',	'152/25',	'-',	'ทุ่งสุขลา',	'ศรีราชา',	'ชลบุรี',	'20230',	'0925989952',	'0925989952',	'58160386@go.buu.ac.th',	0),
(59160061,	14,	'นายสุพจน์ ใจดี',	'บิดา',	'48/3',	'กดพะ',	'โคกไม้ลาย',	'เมือง',	'ปราจีนบุรี',	'25230',	'0972077287',	'',	'59160061@go.buu.ac.th',	0),
(59160692,	14,	'พจนีย์ เหรียญตระกูล',	'มารดา',	'102/3',	'-',	'บางแสน',	'เมื่อง',	'ชลบุรี',	'20130',	'0914042477',	'',	'59160692@go.buu.ac.th',	1);

DROP TABLE IF EXISTS `tb_coop_student_plan`;
CREATE TABLE `tb_coop_student_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `plan_time_period` varchar(200) DEFAULT NULL COMMENT 'N/16; 4 month\n',
  `plan_work_subject` text,
  `plan_created` datetime NOT NULL,
  `plan_creator` varchar(100) DEFAULT NULL,
  `plan_changed` datetime DEFAULT NULL,
  `plan_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`student_id`,`term_id`),
  KEY `fk_coop_student_plan_term1_idx` (`term_id`),
  KEY `fk_coop_student_plan_coop_student1` (`student_id`),
  CONSTRAINT `fk_coop_student_plan_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coop_student_plan_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_plan` (`plan_id`, `student_id`, `term_id`, `plan_time_period`, `plan_work_subject`, `plan_created`, `plan_creator`, `plan_changed`, `plan_changer`) VALUES
(1,	58160386,	14,	'1',	'1',	'2019-05-15 18:35:16',	'58160386',	NULL,	NULL),
(2,	58160386,	14,	'5,6',	'2',	'2019-05-15 18:35:16',	'58160386',	NULL,	NULL),
(3,	58160386,	14,	'8',	'3',	'2019-05-15 18:35:16',	'58160386',	NULL,	NULL),
(4,	58160386,	14,	'8',	'4',	'2019-05-15 18:35:16',	'58160386',	NULL,	NULL),
(5,	58160386,	14,	'1,8',	'5',	'2019-05-15 18:35:16',	'58160386',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertCoopStudentPlanLog` BEFORE INSERT ON `tb_coop_student_plan` FOR EACH ROW
BEGIN
		SET New.plan_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.plan_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCoopStudentPlanLog` BEFORE UPDATE ON `tb_coop_student_plan` FOR EACH ROW
BEGIN
		SET New.plan_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.plan_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_coop_student_questionnaire_item`;
CREATE TABLE `tb_coop_student_questionnaire_item` (
  `coop_student_questionnaire_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `coop_student_questionnaire_item_title` varchar(2000) DEFAULT NULL,
  `coop_student_questionnaire_item_type` enum('score','comment') DEFAULT NULL,
  `coop_student_questionnaire_item_number` double NOT NULL,
  `coop_student_questionnaire_item_description` varchar(2000) NOT NULL,
  PRIMARY KEY (`coop_student_questionnaire_item_id`,`subject_id`,`term_id`),
  KEY `fk_coop_student_questionnaire_item_coop_student_questionnaire1` (`subject_id`,`term_id`),
  KEY `fk_term_id` (`term_id`),
  CONSTRAINT `fk_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `tb_coop_student_questionnaire_subject` (`coop_student_questionnaire_subject_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_term_id` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_questionnaire_item` (`coop_student_questionnaire_item_id`, `subject_id`, `term_id`, `coop_student_questionnaire_item_title`, `coop_student_questionnaire_item_type`, `coop_student_questionnaire_item_number`, `coop_student_questionnaire_item_description`) VALUES
(7,	9,	14,	'ปริมาณงาน (Quantity of work)',	'score',	1.1,	'ปริมาณงานที่ปฏิบัติสำเร็จตามหน้าที่หรือตามที่ได้รับมอบหมาย\r\nภายในระยะเวลา ที่กำหนด (ในระดับที่นักศึกษาจะปฏิบัติได้) และเทียบ\r\nกับนักศึกษาทั่ว ๆ ไป'),
(8,	9,	14,	'คุณภาพงาน (Quality of work)',	'score',	1.2,	'ทำงานได้ถูกต้องครบถ้วนสมบูรณ์ มีความประณีตเรียบร้อย มีความ\r\nรอบคอบ ไม่เกิดปัญหาติดตามมา งานไม่คั่งค้าง ทำงานเสร็จทันเวลาหรือ\r\nก่อนเวลาที่กำหนด'),
(11,	10,	14,	'ความรู้ความสามารถทางวิชาการ / ( Academic abil',	'score',	2.1,	'นักศึกษามีความรู้ทางวิชาการเพียงพอ ที่จะทำงานตามที่ได้รับ\r\nมอบหมาย(ในระดับที่นักศึกษาจะปฏิบัติได้)'),
(12,	12,	14,	'บุคลิกภาพและการวางตัว / Personality',	'score',	4.1,	'มีบุคลิกภาพการแต่งกายที่ดี วางตัวอย่างเหมาะสมกับกาละเทศะ\r\nมีกริยาวาจาสุภาพ เรียบร้อย การตรงต่อเวลา และ อื่นๆ'),
(13,	12,	14,	'มนุษยสัมพันธ์ / Interpersonal Skills',	'score',	4.2,	'สามารถทำงานร่วมกับบุคคลอื่นได้ดี การทำงานเป็นทีม สร้างมนุษย์\r\nสัมพันธ์ได้ดี เป็นที่รักใคร่ชอบพอของผู้ร่วมงาน การสามารถติดต่อ\r\nประสานงาน ให้เกิดความสำเร็จขององค์กร'),
(14,	12,	14,	'ความมีระเบียบวินัย และ ปฏิบัติตามวัฒนธรรมองค์',	'score',	4.3,	'ความสนใจเรียนรู้ ศึกษา กฏระเบียบ นโยบาย ต่าง ๆ และปฏิบัติ\r\nตามโดยเต็มใจการปฏิบัติตามระเบียบบริหารงานบุคคล (การเข้างาน ลา\r\nงาน) ปฏิบัติตามกฏการรักษาความปลอดภัยในโรงงาน การควบคุม\r\nคุณภาพ 5 ส และอื่น ๆ'),
(15,	12,	14,	'คุณธรรมและจริยธรรม (Ethics and Morality)',	'score',	4.4,	'มีความซื่อสัตย์ สุจริต มีจิตใจดี รู้จักเสียสละ ไม่เห็นแก่ตัว เอื้อเฟื้อ\r\nช่วยเหลือผู้อื่น'),
(16,	12,	14,	'การตรงต่อเวลาและการทำงาน / Punctuality and Pr',	'score',	4.5,	'ลาป่วย.........วัน ลากิจ..........วัน ขาดงาน.........วัน สาย.........วัน'),
(17,	12,	14,	'การวางแผนและความสม่ำเสมอในการจัดทำรายงาน / Re',	'score',	4.6,	'มีการวางแผนในการจัดทำรายงานมีความถูกต้องตามหลักวิชาการ\r\nและปรึกษาพนักงานที่ปรึกษา อย่างสม่ำเสมอ'),
(18,	12,	14,	'ประโยชน์ต่อสถานประกอบการของรายงาน หรืองานพิเศษ',	'score',	4.7,	''),
(19,	10,	14,	'ความสามารถในการเรียนรู้และประยุกต์วิชาการ( Ab',	'score',	2.2,	'ความรวดเร็วในการเรียนรู้ เข้าใจข้อมูล ข่าวสาร และวิธีการทำงาน\r\nตลอดจนการนำความรู้ไปประยุกต์ใช้งาน'),
(20,	10,	14,	'ความรู้ความชำนาญด้านปฏิบัติการ (Practical Abi',	'score',	2.3,	'เช่น การปฏิบัติงานในภาคสนาม ในห้องปฏิบัติการ'),
(21,	10,	14,	'วิจารณญาณและการตัดสินใจ / ( Judgement and Dec',	'score',	2.4,	'ตัดสินใจได้ดี ถูกต้อง รวดเร็ว มีการวิเคราะห์ข้อมูลและปัญหาต่าง ๆ\r\nอย่างรอบคอบก่อนการตัดสินใจ สามารถแก้ปัญหาเฉพาะหน้าสามารถ\r\nไว้วางใจให้ตัดสินใจได้ด้วยตนเอง'),
(22,	10,	14,	'การจัดการและวางแผน / ( Organization and plann',	'score',	2.5,	'สามารถจัดการและวางแผนการทำงานให้เสร็จตามเป้าหมาย'),
(23,	10,	14,	'ทักษะการสื่อสาร / ( Communication skills )',	'score',	2.6,	'ความสามารถในการติดต่อสื่อสาร การพูด การเขียน และการ\r\nนำเสนอสามารถสื่อให้เข้าใจได้ง่าย เรียบร้อย ชัดเจน ถูกต้อง รัดกุม มีลำดับขั้นตอนที่ดีไม่ก่อให้เกิดความสับสนต่อการทำงาน รู้จักสอบถามรู้จัก\r\nชี้แจงผลการปฏิบัติงานและข้อขัดข้องให้ทราบ'),
(24,	10,	14,	'ความเหมาะสมต่อตำแหน่งงานที่ได้รับมอบหมาย (Sui',	'score',	2.7,	'สามารถพัฒนาตนเองให้ปฏิบัติงานตาม Job Position และ Job\r\nDescription ที่มอบหมายได้อย่างเหมาะสมหรือตำแหน่งงานนี้\r\nเหมาะสมกับนักศึกษาคนนี้หรือไม่เพียงใด'),
(25,	11,	14,	'ความรับผิดชอบและเป็นผู้ที่ไว้ใจได้ / ( Respon',	'score',	3.1,	'ดำเนินงานให้สำเร็จลุล่วงโดยคำนึงถึงเป้าหมาย และความสำเร็จของ\r\nงานเป็นหลักยอมรับผลที่เกิดจากการทำงานอย่างมีเหตุผล สามารถ\r\nปล่อยให้ท างาน (กรณีงานประจ า)ได้โดยไม่ต้องควบคุมมากจนเกินไป\r\nความจำเป็นในการตรวจสอบขั้นตอนและผลงานตลอดเวลาสามารถ\r\nไว้วางใจให้รับผิดชอบงานที่มากกว่าเวลาประจำ สามารถไว้วางใจ\r\nได้แทบทุกสถานการณ์หรือในสถานการณ์ปกติเท่านั้น'),
(26,	11,	14,	'ความสนใจ อุตสาหะในการทำงาน / ( Interest in wo',	'score',	3.2,	'ความสนใจและความกระตือรือร้นในการทำงาน มีความอุตสาหะ\r\nความพยายามความตั้งใจที่จะทำงานได้สำเร็จ ความมานะบากบั่น ไม่ย่อ\r\nท้อต่ออุปสรรคและปัญหา'),
(27,	11,	14,	'ความสามารถเริ่มต้นทำงานได้ด้วยตนเอง / (Initia',	'score',	3.3,	'เมื่อได้รับคำชี้แนะ สามารถเริ่มทำงานได้เอง โดยไม่ต้องรอคำสั่ง\r\n(กรณีงานประจำ)เสนอตัวเข้าช่วยงานแทบทุกอย่าง มาขอรับงานใหม่ ๆ\r\nไปทำ ไม่ปล่อยเวลาว่างให้ล่วงเลยไปโดยเปล่าประโยชน์'),
(28,	11,	14,	'การตอบสนองต่อการสั่งการ (Response to Supervis',	'score',	3.4,	'ยินดีรับคำสั่ง คำแนะนำ คำวิจารณ์ไม่แสดงความอึดอัดใจ เมื่อได้\r\nรับคำติเตือนและวิจารณ์ความรวดเร็วในการปฏิบัติตามคำสั่ง การปรับตัว\r\nปฏิบัติตามคำแนะนำ ข้อเสนอแนะและวิจารณ');

DROP TABLE IF EXISTS `tb_coop_student_questionnaire_subject`;
CREATE TABLE `tb_coop_student_questionnaire_subject` (
  `coop_student_questionnaire_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `coop_student_questionnaire_subject_title` varchar(200) DEFAULT NULL,
  `coop_student_questionnaire_subject_type` enum('subject','score','comment') DEFAULT NULL COMMENT 'score / comment\n',
  `term_id` int(11) NOT NULL,
  `coop_student_questionnaire_subject_number` int(11) NOT NULL,
  PRIMARY KEY (`coop_student_questionnaire_subject_id`,`term_id`),
  KEY `fk_coop_questionnaire_item_term1_idx` (`term_id`),
  CONSTRAINT `fk_coop_questionnaire_item_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_coop_student_questionnaire_subject` (`coop_student_questionnaire_subject_id`, `coop_student_questionnaire_subject_title`, `coop_student_questionnaire_subject_type`, `term_id`, `coop_student_questionnaire_subject_number`) VALUES
(9,	'ผลสำเร็จของงาน / Work Achievement',	NULL,	14,	1),
(10,	'ความรู้ความสามารถ /Knowledge and Ability',	NULL,	14,	2),
(11,	'ความรับผิดชอบต่อหน้าที่/Responsibility',	NULL,	14,	3),
(12,	'ลักษณะส่วนบุคคล/Personality',	NULL,	14,	4);

DROP TABLE IF EXISTS `tb_coop_student_subject_report`;
CREATE TABLE `tb_coop_student_subject_report` (
  `student_id` int(11) NOT NULL,
  `report_subject_th` varchar(200) NOT NULL,
  `report_subject_en` varchar(200) DEFAULT NULL,
  `report_detail` varchar(200) NOT NULL,
  `report_created` datetime NOT NULL,
  `report_creator` varchar(100) DEFAULT NULL,
  `report_changed` datetime DEFAULT NULL,
  `report_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `fk_coop_student_subject_report_coop_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_coop_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DELIMITER ;;

CREATE TRIGGER `InsertCoopStudentSubjectReportLog` BEFORE INSERT ON `tb_coop_student_subject_report` FOR EACH ROW
BEGIN
		SET New.report_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.report_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateCoopStudentSubjectReportLog` BEFORE UPDATE ON `tb_coop_student_subject_report` FOR EACH ROW
BEGIN
		SET New.report_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.report_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_coop_test`;
CREATE TABLE `tb_coop_test` (
  `coop_test_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_id` int(11) NOT NULL,
  `coop_test_date` datetime NOT NULL,
  `coop_test_name` varchar(200) NOT NULL,
  `coop_test_register_status` int(11) NOT NULL,
  `coop_test_created` datetime NOT NULL,
  `coop_test_creator` varchar(200) NOT NULL,
  `coop_test_changed` datetime DEFAULT NULL,
  `coop_test_changer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`coop_test_id`,`term_id`),
  KEY `fk_coop_test_term1_idx` (`term_id`),
  CONSTRAINT `fk_coop_test_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_department` (`department_id`, `department_name`) VALUES
(1,	'เทคโนโลยีสารสนเทศ'),
(2,	'วิทยาการคอมพิวเตอร์'),
(3,	'วิศวกรรมซอฟต์แวร์');

DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_date` datetime DEFAULT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_detail` text NOT NULL,
  `officer_id` varchar(11) NOT NULL,
  `news_hide` int(11) NOT NULL,
  `news_created` datetime NOT NULL,
  `news_creator` varchar(100) DEFAULT NULL,
  `news_changed` datetime DEFAULT NULL,
  `news_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`news_id`,`officer_id`),
  KEY `fk_news_officer1_idx` (`officer_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `fk_news_officer1` FOREIGN KEY (`officer_id`) REFERENCES `tb_officer` (`officer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_news` (`news_id`, `news_date`, `news_title`, `news_detail`, `officer_id`, `news_hide`, `news_created`, `news_creator`, `news_changed`, `news_changer`) VALUES
(8,	'2019-05-16 11:18:34',	'ทดสอบระบบ ครั้งที่ 1',	'<p>qwerty</p>',	'kamonwans',	0,	'2019-05-16 04:18:34',	'Kamonwan Sangrawee',	NULL,	NULL),
(9,	'2019-05-16 13:32:41',	'โครงการอบรมวิชาการ ทดสอบ อบรมภาษา C',	'<p>โครงการอบรมวิชาการ ทดสอบ อบรมภาษา C&nbsp; บริษัท MFEC จำกัด (มหาชน) https://docs.google.com/forms/d/e/1FAIpQLScI4pIFHedeZKc6TvaG5p2sGnpHRT1S7dCEEw1Db8i3FUKgJA/viewform</p><p><br></p>',	'kamonwans',	0,	'2019-05-16 06:32:41',	'kamonwans',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertNewsLog` BEFORE INSERT ON `tb_news` FOR EACH ROW
BEGIN
		SET New.news_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.news_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateNewsLog` BEFORE UPDATE ON `tb_news` FOR EACH ROW
BEGIN
		SET New.news_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.news_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_news_file`;
CREATE TABLE `tb_news_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`file_id`,`news_id`),
  KEY `fk_news_file_news1_idx` (`news_id`),
  CONSTRAINT `fk_news_file_news1` FOREIGN KEY (`news_id`) REFERENCES `tb_news` (`news_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_officer`;
CREATE TABLE `tb_officer` (
  `officer_id` varchar(11) NOT NULL,
  `officer_fullname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`officer_id`),
  KEY `officer_id` (`officer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_officer` (`officer_id`, `officer_fullname`) VALUES
('hansa',	'หรรษา รอดเงิน'),
('isdat',	'เกรียงศักดิ์ ปานโพธิ์ทอง'),
('kamonwans',	'กมลวรรณ แสงระวี'),
('khulchal',	'กุลชลี รัตนคร'),
('kornsahanan',	'กรสหนันท์ ต่อพงษ์พันธุ์'),
('manotej',	'มาโนชญ์ ใจกว้าง'),
('nittayat',	'นิตยา ติรพงษ์พัฒน์'),
('onanongr',	'อรอนงค์ ร้อยทา'),
('pattamawa',	'ปัทมา วชิรพันธุ์'),
('Peach',	'กุสุมา พิกุลแก้ว'),
('prempreeda',	'เปรมปรีดา สลับสี'),
('raveenun',	'ระวีนันท์ ชูสินชินภัทร'),
('sakda',	'ศักดิ์ดา บุญภา'),
('sirijan',	'ศิริจันทร์ แซ่ลี้'),
('sithipong',	'สิทธิพงษ์ ฉิมไทย'),
('sitthichai',	'สิทธิชัย สมพันธุ์'),
('suthathip',	'สุธาทิพย์ ทรัพย์ประเสริฐ'),
('suthon',	'สุธน ทองปาน');

DROP TABLE IF EXISTS `tb_skill`;
CREATE TABLE `tb_skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(200) NOT NULL,
  `skill_category_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`,`skill_category_id`),
  KEY `fk_tb_skill_tb_skill_category1_idx` (`skill_category_id`),
  CONSTRAINT `fk_tb_skill_tb_skill_category1` FOREIGN KEY (`skill_category_id`) REFERENCES `tb_skill_category` (`skill_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_skill` (`skill_id`, `skill_name`, `skill_category_id`) VALUES
(1,	'PHP',	2),
(2,	'MySQL',	3),
(3,	'ASP',	2),
(4,	'JAVA',	2),
(5,	'Visual Basic',	2),
(6,	'COBOL',	2),
(7,	'RPG AS400',	2),
(8,	'ERP',	4),
(9,	'C/C++',	2),
(10,	'SQL Command',	2),
(11,	'SQL Store Procedure',	2),
(12,	'PL/SQL',	2),
(13,	'HTML',	2),
(14,	'JSP',	2),
(15,	'VB Script',	2),
(16,	'JAVA Script',	2),
(17,	'Shell Script',	2),
(18,	'Pascal',	2),
(19,	'Assembly',	2),
(20,	'.NET CORE',	1),
(21,	'MS VB.NET',	1),
(22,	' MS ASP.NET',	1),
(23,	'MS Access',	1),
(24,	'Crystal Report',	1),
(25,	'Oracle Developer',	1),
(26,	'Delphi',	1),
(27,	'WAP Programming',	1),
(28,	'Mobile Programming',	1),
(29,	'WebSphere',	1),
(30,	'Eclipse',	1),
(31,	'MS SQL Server',	3),
(32,	'Oracle Server',	3),
(33,	'MS Access',	3),
(34,	'DB2',	3),
(37,	'MS Windows',	4),
(38,	'MS Windows Server',	4),
(39,	'Unix',	4),
(40,	'Linux',	4),
(41,	'MS Word',	4),
(42,	'MS Excel',	4),
(43,	'MS Project',	4),
(44,	'MS Power Point',	4),
(45,	'MS Visio',	4),
(46,	'Photoshop',	4),
(47,	'CORBA',	4),
(48,	'ACCPAC',	4),
(49,	'Client & Server',	5),
(50,	'Object Oriented Prog.',	5),
(51,	'TCP/IP',	5),
(52,	'3-Tier Application',	5),
(53,	'Web Service',	5),
(54,	'Design Pattern',	5),
(55,	'IIS',	5),
(56,	'Apache',	5),
(57,	'Data Warehouse',	5),
(58,	'AJAX',	5),
(59,	'XML',	5),
(60,	'MariaDB',	3),
(62,	'Golang',	2);

DROP TABLE IF EXISTS `tb_skill_category`;
CREATE TABLE `tb_skill_category` (
  `skill_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`skill_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_skill_category` (`skill_category_id`, `skill_category_name`) VALUES
(1,	'Development Tool'),
(2,	'Programming Lang'),
(3,	'DBMS'),
(4,	'OS & Application'),
(5,	'Computer System & Other');

DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `student_id` int(11) NOT NULL,
  `student_prefix` varchar(200) NOT NULL,
  `student_fullname` varchar(100) NOT NULL,
  `term_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `student_gpax` decimal(8,2) NOT NULL,
  `coop_status_id` int(11) NOT NULL,
  `company_status_id` int(11) NOT NULL,
  `student_course` varchar(100) DEFAULT NULL,
  `student_ins001_file` varchar(200) DEFAULT NULL,
  `student_core_subject_status` int(11) DEFAULT '0',
  `student_created` datetime NOT NULL,
  `student_creator` varchar(100) DEFAULT NULL,
  `student_changed` datetime DEFAULT NULL,
  `student_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`term_id`,`department_id`,`coop_status_id`,`company_status_id`),
  KEY `fk_student_term1_idx` (`term_id`),
  KEY `fk_student_student_field1_idx` (`department_id`),
  KEY `fk_tb_student_tb_coop_status1_idx` (`coop_status_id`),
  KEY `fk_tb_student_tb_company_status1_idx` (`company_status_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fk_student_student_field1` FOREIGN KEY (`department_id`) REFERENCES `tb_department` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_student_tb_company_status1` FOREIGN KEY (`company_status_id`) REFERENCES `tb_company_status` (`company_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_student_tb_coop_status1` FOREIGN KEY (`coop_status_id`) REFERENCES `tb_coop_status` (`coop_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_student` (`student_id`, `student_prefix`, `student_fullname`, `term_id`, `department_id`, `student_gpax`, `coop_status_id`, `company_status_id`, `student_course`, `student_ins001_file`, `student_core_subject_status`, `student_created`, `student_creator`, `student_changed`, `student_changer`) VALUES
(58160094,	'นาย',	'สารัลย์ พุทธานุ',	14,	2,	2.87,	1,	1,	'2115010:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 54 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:44:26',	'LDAP Login',	'2019-05-22 12:19:52',	'Kamonwan Sangrawee'),
(58160386,	'นางสาว',	'ณัฐฐิญา อนุกูลทอง',	14,	1,	2.78,	1,	1,	'2115012:วท.บ. (เทคโนโลยีสารสนเทศ) ใหม่ 54 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-14 08:31:53',	'LDAP Login',	'2019-05-16 04:37:14',	NULL),
(58160427,	'นาย',	'วริทธ์นันท์ พุ่มสุข',	14,	1,	2.53,	1,	1,	'2115012:วท.บ. (เทคโนโลยีสารสนเทศ) ใหม่ 54 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-14 09:16:26',	'LDAP Login',	'2019-05-29 16:02:39',	'Kamonwan Sangrawee'),
(58160704,	'นางสาว',	'ธนาพิช รุ่งปรวัฒน์',	14,	1,	2.86,	2,	1,	'2115012:วท.บ. (เทคโนโลยีสารสนเทศ) ใหม่ 54 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-14 17:54:01',	'LDAP Login',	'2019-05-20 09:04:54',	'58160704'),
(58660033,	'นาย',	'ภควัต ม่วงมิตร',	14,	1,	2.42,	1,	1,	'2515013:วท.บ. (เทคโนโลยีสารสนเทศ) ใหม่ 54 - 4 ปี พิเศษ',	NULL,	0,	'2019-05-14 09:43:47',	'LDAP Login',	'2019-05-16 04:36:18',	'Kamonwan Sangrawee'),
(58660124,	'นางสาว',	'กชกร ทิพย์วงศ์เมฆ',	14,	1,	2.14,	1,	1,	'2515013:วท.บ. (เทคโนโลยีสารสนเทศ) ใหม่ 54 - 4 ปี พิเศษ',	NULL,	0,	'2019-05-14 08:51:25',	'LDAP Login',	'2019-06-01 08:08:59',	'Kamonwan Sangrawee'),
(59160061,	'นางสาว',	'นภสร ใจดี',	14,	3,	2.83,	7,	5,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:21:10',	'LDAP Login',	'2019-05-16 07:48:28',	'kamonwans'),
(59160134,	'นางสาว',	'ศุภิสรา ประสิทธินาวา',	14,	2,	3.41,	1,	1,	'2115020:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:32:22',	'LDAP Login',	NULL,	NULL),
(59160203,	'นาย',	'พีรพล ธูปหอม',	14,	3,	2.74,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:23:08',	'LDAP Login',	NULL,	NULL),
(59160223,	'นางสาว',	'ศิริวรรณ แซ่ตั๊น',	14,	3,	2.94,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-14 08:46:04',	'LDAP Login',	NULL,	NULL),
(59160233,	'นาย',	'หัสนัย สังข์นาค',	14,	3,	2.75,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:39:00',	'LDAP Login',	NULL,	NULL),
(59160340,	'นาย',	'กฤตวิทย์ สุจินพรัหม',	14,	1,	2.93,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:47:54',	'LDAP Login',	NULL,	NULL),
(59160406,	'นาย',	'จิรภัทร ลาภอุดมศักดา',	14,	3,	2.93,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:34:51',	'LDAP Login',	NULL,	NULL),
(59160510,	'นาย',	'ภาณุมาศ ตันดุลยกุล',	14,	1,	3.38,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:43:09',	'LDAP Login',	NULL,	NULL),
(59160542,	'นาย',	'เกริก ศรีมงคล',	14,	2,	2.23,	1,	1,	'2115020:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:35:37',	'LDAP Login',	NULL,	NULL),
(59160568,	'นาย',	'ธเนศพล ดวงต๋า',	14,	2,	2.43,	1,	1,	'2115020:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 09:00:55',	'LDAP Login',	NULL,	NULL),
(59160575,	'นาย',	'นิติพล ชิงธงไชย',	14,	2,	3.04,	1,	1,	'2115020:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 08:04:37',	'LDAP Login',	NULL,	NULL),
(59160654,	'นาย',	'ธนกร ศรีนิ่มนวล',	14,	3,	2.60,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-14 08:44:25',	'LDAP Login',	NULL,	NULL),
(59160692,	'นาย',	'ศรุจ เหรียญตระกูล',	14,	3,	2.95,	7,	5,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:22:49',	'LDAP Login',	'2019-05-16 07:48:28',	'kamonwans'),
(59160707,	'นาย',	'อธิพงศ์ บุญโกย',	14,	3,	2.75,	1,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-06-02 12:29:37',	'LDAP Login',	NULL,	NULL),
(59160859,	'นาย',	'ณัฐพล ภาษิต',	14,	1,	2.99,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:28:29',	'LDAP Login',	NULL,	NULL),
(59160905,	'นาย',	'ศิริเทพ เรือนพันธ์',	14,	1,	2.34,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 07:21:32',	'LDAP Login',	NULL,	NULL),
(59160919,	'นาย',	'อรรถทวี อาจณรงค์เดช',	14,	1,	3.07,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:37:45',	'LDAP Login',	NULL,	NULL),
(59161008,	'นาย',	'จิรายุ ปฐมรัตนศิริ',	14,	3,	3.21,	2,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:21:04',	'LDAP Login',	'2019-05-16 07:37:56',	'เต้จัง'),
(59161035,	'นาย',	'ปฏิภาณ ศรีทองคำ',	14,	3,	2.45,	2,	1,	'2115021:วท.บ. (วิศวกรรมซอฟต์แวร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:21:21',	'LDAP Login',	'2019-05-16 07:28:13',	'59161035'),
(59161085,	'นาย',	'ธนภัทร์ แทนสระ',	14,	2,	2.93,	1,	1,	'2115020:วท.บ. (วิทยาการคอมพิวเตอร์) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 06:36:39',	'LDAP Login',	NULL,	NULL),
(59161145,	'นาย',	'จิรเมธ เขื่อนแก้ว',	14,	1,	2.93,	1,	1,	'2115022:วท.บ. (เทคโนโลยีสารสนเทศ) ปรับปรุง 59 - ป.ตรี 4 ปี ปกติ',	NULL,	0,	'2019-05-16 07:31:58',	'LDAP Login',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertStudentLog` BEFORE INSERT ON `tb_student` FOR EACH ROW
BEGIN
		SET New.student_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.student_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateStudentLog` BEFORE UPDATE ON `tb_student` FOR EACH ROW
BEGIN
		SET New.student_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.student_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_student_core_subject`;
CREATE TABLE `tb_student_core_subject` (
  `subject_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`,`term_id`),
  KEY `fk_tb_student_core_subject_tb_term1_idx` (`term_id`),
  CONSTRAINT `fk_tb_student_core_subject_tb_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_student_core_subject` (`subject_id`, `term_id`) VALUES
(887211,	14),
(887494,	14),
(887495,	14);

DROP TABLE IF EXISTS `tb_student_has_skill`;
CREATE TABLE `tb_student_has_skill` (
  `student_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`skill_id`),
  KEY `fk_student_has_skill_skill1_idx` (`skill_id`),
  KEY `fk_student_has_skill_student1_idx` (`student_id`),
  CONSTRAINT `fk_student_has_skill_skill1` FOREIGN KEY (`skill_id`) REFERENCES `tb_skill` (`skill_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_skill_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_student_has_skill` (`student_id`, `skill_id`) VALUES
(58160386,	1),
(58160427,	1),
(58160704,	1),
(58660033,	1),
(59160061,	1),
(59160654,	1),
(59160692,	1),
(59160707,	1),
(59161008,	1),
(59161035,	1),
(58660124,	2),
(59160061,	2),
(59160654,	2),
(59160692,	2),
(59160707,	2),
(59161008,	2),
(59160692,	3),
(59160061,	4),
(59160692,	4),
(59160707,	4),
(59161008,	4),
(59161035,	4),
(59160692,	5),
(59161008,	5),
(59160692,	6),
(59161008,	8),
(59160061,	9),
(59160654,	9),
(59160692,	9),
(59160707,	9),
(59160061,	10),
(59160654,	10),
(59160707,	10),
(59160061,	13),
(59160654,	13),
(59160707,	13),
(59161008,	13),
(59160061,	16),
(59160707,	16),
(59161008,	16),
(59160061,	17),
(59160692,	18),
(59160692,	22),
(59160692,	23),
(59161008,	23),
(59160692,	24),
(59160061,	27),
(59160061,	28),
(59160654,	28),
(59161008,	28),
(59161008,	30),
(59160692,	31),
(59160692,	32),
(59160692,	33),
(59160692,	34),
(59160061,	37),
(59160692,	37),
(59160707,	37),
(59160692,	39),
(59161008,	39),
(59160061,	40),
(59160654,	40),
(59160692,	40),
(59160707,	40),
(59161008,	40),
(59160061,	41),
(59160654,	41),
(59160692,	41),
(59160707,	41),
(59160061,	42),
(59160654,	42),
(59160707,	42),
(59160061,	43),
(59160692,	43),
(59161008,	43),
(59160061,	44),
(59160654,	44),
(59160692,	44),
(59160707,	44),
(59161008,	44),
(59160061,	46),
(59160654,	46),
(59160061,	49),
(59160692,	49),
(59160707,	49),
(59161008,	49),
(59160692,	50),
(59160707,	51),
(59161008,	51),
(59160692,	52),
(59160061,	53),
(59160692,	53),
(59160061,	54),
(59160692,	54),
(59160707,	54),
(59160692,	56),
(59160692,	58),
(59160707,	58),
(59161008,	58),
(59161008,	59),
(59160692,	60),
(59160692,	62);

DROP TABLE IF EXISTS `tb_student_register_company_job_position`;
CREATE TABLE `tb_student_register_company_job_position` (
  `student_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_register_datetime` datetime NOT NULL,
  `term_id` int(11) NOT NULL,
  `job_register_created` datetime NOT NULL,
  `job_register_creator` varchar(100) DEFAULT NULL,
  `job_register_changed` datetime DEFAULT NULL,
  `job_register_changer` varchar(100) DEFAULT NULL,
  `company_status_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`job_id`,`company_id`,`term_id`,`company_status_id`),
  KEY `fk_company_job_position_has_student_student1_idx` (`student_id`),
  KEY `fk_company_job_position_has_student_company_job_position1_idx` (`job_id`,`company_id`),
  KEY `fk_company_job_position_has_student_term1_idx` (`term_id`),
  KEY `fk_tb_student_register_company_job_position_tb_company_stat_idx` (`company_status_id`),
  CONSTRAINT `fk_company_job_position_has_student_company_job_position1` FOREIGN KEY (`job_id`, `company_id`) REFERENCES `tb_company_job_position` (`job_id`, `company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_job_position_has_student_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_job_position_has_student_term1` FOREIGN KEY (`term_id`) REFERENCES `tb_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_student_register_company_job_position_tb_company_status1` FOREIGN KEY (`company_status_id`) REFERENCES `tb_company_status` (`company_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_student_register_company_job_position` (`student_id`, `job_id`, `company_id`, `job_register_datetime`, `term_id`, `job_register_created`, `job_register_creator`, `job_register_changed`, `job_register_changer`, `company_status_id`) VALUES
(59160061,	114,	47,	'2019-05-16 14:28:25',	14,	'2019-05-16 07:28:25',	'59160061',	'2019-05-16 07:48:28',	'kamonwans',	5),
(59160692,	114,	47,	'2019-05-16 14:27:36',	14,	'2019-05-16 07:27:36',	'59160692',	'2019-05-16 07:48:28',	'kamonwans',	5);

DELIMITER ;;

CREATE TRIGGER `InsertStudentRegisterJobLog` BEFORE INSERT ON `tb_student_register_company_job_position` FOR EACH ROW
BEGIN
		SET New.job_register_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.job_register_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateStudentRegisterJobLog` BEFORE UPDATE ON `tb_student_register_company_job_position` FOR EACH ROW
BEGIN
		SET New.job_register_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.job_register_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_student_register_coop_test`;
CREATE TABLE `tb_student_register_coop_test` (
  `coop_test_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `test_register_date` datetime NOT NULL,
  `test_register_status` int(11) NOT NULL,
  `test_register_created` datetime NOT NULL,
  `test_register_creator` varchar(200) NOT NULL,
  `test_register_changed` datetime DEFAULT NULL,
  `test_register_changer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`coop_test_id`,`student_id`,`department_id`),
  KEY `fk_coop_test_has_student_student1_idx` (`student_id`),
  KEY `fk_coop_test_has_student_coop_test1_idx` (`coop_test_id`),
  CONSTRAINT `fk_coop_test_has_student_coop_test1` FOREIGN KEY (`coop_test_id`) REFERENCES `tb_coop_test` (`coop_test_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coop_test_has_student_student1` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_student_train_register`;
CREATE TABLE `tb_student_train_register` (
  `student_id` int(11) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  `train_id` int(11) NOT NULL,
  `train_type_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`train_id`,`train_type_id`),
  KEY `fk_student_train_history_train1_idx` (`train_id`),
  KEY `fk_tb_student_train_register_tb_train_type1_idx` (`train_type_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fk_tb_student_train_register_tb_train_type1` FOREIGN KEY (`train_type_id`) REFERENCES `tb_train_type` (`train_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_student_train_register_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `tb_train` (`train_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tb_student_train_register_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_student_train_register` (`student_id`, `register_date`, `train_id`, `train_type_id`) VALUES
(58160094,	'2019-05-27 13:04:19',	26,	1),
(58160386,	'2019-05-24 13:55:17',	26,	1),
(58160386,	'2019-05-27 13:17:55',	28,	1),
(58160386,	'2019-05-29 14:36:02',	29,	1),
(58160386,	'2019-05-29 19:30:06',	30,	1),
(58160386,	'2019-06-01 17:44:40',	31,	1),
(58160386,	'2019-06-03 17:44:10',	32,	1),
(58160386,	'2019-06-04 12:55:38',	33,	1),
(58160427,	'2019-05-24 13:55:17',	25,	1),
(58160427,	'2019-05-27 12:43:10',	26,	1),
(58160427,	'2019-05-27 13:17:55',	28,	1),
(58160427,	'2019-05-29 14:36:02',	29,	1),
(58160427,	'2019-05-29 19:30:06',	30,	1),
(58160427,	'2019-06-03 17:44:10',	32,	1),
(58160427,	'2019-06-04 12:55:38',	33,	1),
(58160704,	'2019-05-24 13:55:17',	25,	1),
(58160704,	'2019-05-27 13:01:38',	26,	1),
(58160704,	'2019-05-27 13:17:55',	28,	1),
(58160704,	'2019-05-29 14:36:02',	29,	1),
(58160704,	'2019-05-29 19:30:06',	30,	1),
(58160704,	'2019-06-03 17:44:11',	32,	1),
(58160704,	'2019-06-04 12:55:39',	33,	1),
(58660033,	'2019-05-24 13:54:12',	25,	1),
(58660033,	'2019-05-27 12:43:19',	26,	1),
(58660033,	'2019-05-27 13:17:55',	28,	1),
(58660033,	'2019-05-29 14:36:02',	29,	1),
(58660033,	'2019-05-29 19:30:06',	30,	1),
(58660033,	'2019-06-01 17:44:40',	31,	1),
(58660033,	'2019-06-03 17:44:10',	32,	1),
(58660033,	'2019-06-04 12:55:38',	33,	1),
(58660124,	'2019-05-24 13:55:17',	25,	1),
(58660124,	'2019-05-27 13:02:46',	26,	1),
(58660124,	'2019-05-27 13:17:55',	28,	1),
(58660124,	'2019-05-29 14:36:02',	29,	1),
(58660124,	'2019-05-29 19:30:06',	30,	1),
(58660124,	'2019-06-03 17:44:10',	32,	1),
(58660124,	'2019-06-04 12:55:38',	33,	1),
(59160061,	'2019-05-16 14:01:48',	25,	1),
(59160223,	'2019-05-27 13:04:19',	26,	1),
(59160223,	'2019-05-27 13:21:31',	28,	1),
(59160692,	'2019-05-16 13:49:33',	25,	1),
(59161008,	'2019-05-16 13:49:33',	25,	1),
(59161035,	'2019-05-16 13:49:33',	25,	1);

DROP TABLE IF EXISTS `tb_term`;
CREATE TABLE `tb_term` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_semester` int(11) NOT NULL DEFAULT '0',
  `term_year` varchar(200) NOT NULL DEFAULT '',
  `term_name` varchar(200) DEFAULT NULL,
  `term_is_current` int(11) NOT NULL DEFAULT '0',
  `term_created` datetime NOT NULL,
  `term_creator` varchar(100) DEFAULT NULL,
  `term_changed` datetime DEFAULT NULL,
  `term_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`term_id`,`term_semester`,`term_year`),
  KEY `term_id` (`term_id`,`term_semester`,`term_year`,`term_is_current`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_term` (`term_id`, `term_semester`, `term_year`, `term_name`, `term_is_current`, `term_created`, `term_creator`, `term_changed`, `term_changer`) VALUES
(1,	2,	'2560',	'2/2560',	0,	'2018-04-13 07:01:10',	'',	'2019-05-15 02:54:21',	'Kamonwan Sangrawee'),
(14,	1,	'2562',	'1/2562',	1,	'2019-05-14 08:15:23',	'Kamonwan Sangrawee',	'2019-05-15 02:54:21',	'Kamonwan Sangrawee');

DELIMITER ;;

CREATE TRIGGER `InsertTermLog` BEFORE INSERT ON `tb_term` FOR EACH ROW
BEGIN
		SET New.term_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.term_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateTermLog` BEFORE UPDATE ON `tb_term` FOR EACH ROW
BEGIN
		SET New.term_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.term_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_train`;
CREATE TABLE `tb_train` (
  `train_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_type_id` int(11) NOT NULL,
  `train_title` varchar(200) NOT NULL,
  `train_hour` int(11) NOT NULL,
  `train_lecturer` varchar(200) NOT NULL,
  `train_seat` int(11) NOT NULL,
  `train_start_date` datetime NOT NULL,
  `train_end_date` datetime NOT NULL,
  `train_attachment_file` varchar(200) DEFAULT NULL,
  `train_location_id` int(11) NOT NULL,
  `train_created` datetime NOT NULL,
  `train_creator` varchar(100) DEFAULT NULL,
  `train_changed` datetime DEFAULT NULL,
  `train_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`train_id`,`train_type_id`,`train_location_id`),
  KEY `fk_train_train_type1_idx` (`train_type_id`),
  KEY `fk_train_train_location1_idx` (`train_location_id`),
  CONSTRAINT `fk_train_train_location1` FOREIGN KEY (`train_location_id`) REFERENCES `tb_train_location` (`location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_train_train_type1` FOREIGN KEY (`train_type_id`) REFERENCES `tb_train_type` (`train_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_train` (`train_id`, `train_type_id`, `train_title`, `train_hour`, `train_lecturer`, `train_seat`, `train_start_date`, `train_end_date`, `train_attachment_file`, `train_location_id`, `train_created`, `train_creator`, `train_changed`, `train_changer`) VALUES
(25,	1,	'อบรมภาษา C',	6,	'ตัวแทนบริษัท MFCE',	120,	'2019-05-08 08:30:00',	'2019-05-16 16:30:00',	NULL,	29,	'2019-05-16 06:23:50',	'kamonwans',	NULL,	NULL),
(26,	1,	'ทดสอบการเช็คชื่อ-1',	30,	'bankzxiistyle',	100,	'2019-05-24 07:00:00',	'2019-05-24 07:25:00',	NULL,	15,	'2019-05-24 07:26:44',	'Kamonwan Sangrawee',	NULL,	NULL),
(28,	1,	'ทดสอบ 27-05-62',	6,	'แบงค์',	20,	'2019-05-27 07:20:00',	'2019-05-27 07:20:00',	NULL,	18,	'2019-05-27 06:17:33',	'Kamonwan Sangrawee',	NULL,	NULL),
(29,	1,	'ทดสอบ 01',	3,	'แบงค์',	20,	'2019-05-29 14:34:00',	'2019-05-29 14:34:00',	NULL,	9,	'2019-05-29 07:34:30',	'Kamonwan Sangrawee',	NULL,	NULL),
(30,	1,	'ทดสอบการเช็คชื่อ',	3,	'Administrator',	100,	'2019-05-29 07:10:00',	'2019-05-29 07:15:00',	NULL,	15,	'2019-05-29 12:28:25',	'Kamonwan Sangrawee',	NULL,	NULL),
(31,	1,	'ทดสอบการเช็คชื่อ-3',	6,	'Administrator',	10,	'2019-06-01 07:05:00',	'2019-06-01 07:20:00',	NULL,	17,	'2019-06-01 10:44:28',	'Kamonwan Sangrawee',	NULL,	NULL),
(32,	1,	'ทดสอบการเช็คชื่อ ครั้งที่ 1',	3,	'Administrator',	100,	'2019-06-03 07:25:00',	'2019-06-03 18:10:00',	NULL,	9,	'2019-06-03 10:42:52',	'Kamonwan Sangrawee',	NULL,	NULL),
(33,	1,	'ทดสอบการเช็คชื่อ-3',	3,	'Administrator',	10,	'2019-06-04 07:15:00',	'2019-06-04 17:35:00',	NULL,	14,	'2019-06-04 05:54:35',	'Kamonwan Sangrawee',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertTrainLog` BEFORE INSERT ON `tb_train` FOR EACH ROW
BEGIN
		SET New.train_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.train_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateTrainLog` BEFORE UPDATE ON `tb_train` FOR EACH ROW
BEGIN
		SET New.train_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.train_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_train_check_student`;
CREATE TABLE `tb_train_check_student` (
  `train_check_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_id` int(11) NOT NULL,
  `train_set_check_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `train_check_student_date` datetime NOT NULL,
  PRIMARY KEY (`train_check_student_id`,`train_id`,`train_set_check_id`,`term_id`,`student_id`),
  KEY `fk_train_check_student_train1_idx` (`train_id`),
  KEY `fk_train_check_student_student_train_register1_idx` (`student_id`,`term_id`),
  KEY `fk_train_check_student_train_set_check1_idx` (`train_set_check_id`),
  CONSTRAINT `fk_train_check_student_student_train_register1` FOREIGN KEY (`student_id`) REFERENCES `tb_student_train_register` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_train_check_student_train_set_check1` FOREIGN KEY (`train_set_check_id`) REFERENCES `tb_train_set_check` (`check_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_train_check_student_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `tb_train` (`train_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_train_check_student` (`train_check_student_id`, `train_id`, `train_set_check_id`, `student_id`, `term_id`, `train_check_student_date`) VALUES
(1306,	25,	20,	59161035,	14,	'2019-05-16 14:02:58'),
(1307,	25,	20,	59161008,	14,	'2019-05-16 14:03:05'),
(1308,	25,	20,	59160061,	14,	'2019-05-16 14:03:56'),
(1309,	25,	20,	59160692,	14,	'2019-05-16 14:04:03'),
(1310,	28,	21,	58660033,	14,	'2019-05-27 13:18:50'),
(1311,	28,	21,	58160386,	14,	'2019-05-27 13:19:00'),
(1312,	28,	21,	58660124,	14,	'2019-05-27 13:19:05'),
(1313,	28,	21,	58160427,	14,	'2019-05-27 13:19:17'),
(1314,	28,	21,	58160704,	14,	'2019-05-27 13:19:23'),
(1315,	29,	23,	58160386,	14,	'2019-05-29 14:36:28'),
(1316,	29,	23,	58160704,	14,	'2019-05-29 14:36:32'),
(1317,	29,	23,	58660033,	14,	'2019-05-29 14:36:34'),
(1318,	29,	23,	58160427,	14,	'2019-05-29 14:36:38'),
(1319,	29,	23,	58660124,	14,	'2019-05-29 14:36:48'),
(1320,	30,	24,	58160386,	14,	'2019-05-29 19:31:22'),
(1321,	30,	24,	58660033,	14,	'2019-05-29 19:31:25'),
(1322,	30,	24,	58160704,	14,	'2019-05-29 19:31:28'),
(1323,	30,	24,	58660124,	14,	'2019-05-29 19:31:30'),
(1324,	30,	24,	58160427,	14,	'2019-05-29 19:31:42'),
(1325,	31,	25,	58160386,	14,	'2019-06-01 17:44:55'),
(1326,	31,	25,	58660033,	14,	'2019-06-01 17:44:57'),
(1327,	32,	26,	58160386,	14,	'2019-06-03 17:46:56'),
(1328,	32,	26,	58160427,	14,	'2019-06-03 17:47:01'),
(1329,	32,	26,	58660033,	14,	'2019-06-03 17:47:05'),
(1330,	32,	26,	58660124,	14,	'2019-06-03 17:47:09'),
(1331,	32,	26,	58160704,	14,	'2019-06-03 17:47:12'),
(1332,	33,	27,	58160386,	14,	'2019-06-04 12:56:03');

DROP TABLE IF EXISTS `tb_train_location`;
CREATE TABLE `tb_train_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_building` varchar(200) NOT NULL,
  `location_room` varchar(200) NOT NULL,
  `location_seat` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_train_location` (`location_id`, `location_building`, `location_room`, `location_seat`) VALUES
(1,	'IF',	'IF-10M36',	32),
(2,	'IF',	'IF-10M56',	56),
(3,	'IF',	'IF-11M280',	280),
(4,	'IF',	'IF-3C01',	60),
(5,	'IF',	'IF-3C02',	60),
(6,	'IF',	'IF-3C03',	60),
(7,	'IF',	'IF-3C04',	60),
(8,	'IF',	'IF-3M210',	210),
(9,	'IF',	'IF-4C01',	60),
(10,	'IF',	'IF-4C03',	60),
(11,	'IF',	'IF-4C03',	60),
(12,	'IF',	'IF-4C04',	60),
(13,	'IF',	'IF-4M210',	210),
(14,	'IF',	'IF-5M210',	210),
(15,	'IF',	'IF-5T01',	60),
(16,	'IF',	'IF-5T02',	60),
(17,	'IF',	'IF-5T03',	60),
(18,	'IF',	'IF-5T04',	40),
(19,	'IF',	'IF-5T05',	100),
(20,	'IF',	'IF-6T01',	60),
(21,	'IF',	'IF-6T02',	60),
(22,	'IF',	'IF-6T03',	60),
(23,	'IF',	'IF-6T04',	40),
(24,	'IF',	'IF-6T05',	100),
(25,	'IF',	'IF-7T01',	60),
(26,	'IF',	'IF-7T02',	60),
(27,	'IF',	'IF-7T03',	60),
(28,	'IF',	'IF-7T04',	40),
(29,	'IF',	'IF-7T05',	100),
(32,	'IF',	'IF-10M36',	0),
(33,	'IF',	'IF-10M36',	0),
(35,	'test-ครั้งที่1',	'001',	0);

DROP TABLE IF EXISTS `tb_train_set_check`;
CREATE TABLE `tb_train_set_check` (
  `check_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_id` int(11) NOT NULL,
  `check_note` varchar(1000) DEFAULT NULL,
  `check_datetime` datetime NOT NULL,
  `check_created` datetime NOT NULL,
  `check_creator` varchar(100) DEFAULT NULL,
  `check_changed` datetime DEFAULT NULL,
  `check_changer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`check_id`,`train_id`),
  KEY `fk_train_set_check_train1_idx` (`train_id`),
  CONSTRAINT `tb_train_set_check_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `tb_train` (`train_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_train_set_check` (`check_id`, `train_id`, `check_note`, `check_datetime`, `check_created`, `check_creator`, `check_changed`, `check_changer`) VALUES
(20,	25,	'รอบเช้า',	'2019-05-16 13:46:49',	'2019-05-16 06:46:49',	'kamonwans',	NULL,	NULL),
(21,	28,	'ช่วงเช้า',	'2019-05-27 13:18:39',	'2019-05-27 06:18:39',	'Kamonwan Sangrawee',	NULL,	NULL),
(22,	26,	'ช่วงเช้า',	'2019-05-27 13:20:36',	'2019-05-27 06:20:36',	'Kamonwan Sangrawee',	NULL,	NULL),
(23,	29,	'ช่วงเช้า',	'2019-05-29 14:36:23',	'2019-05-29 07:36:23',	'Kamonwan Sangrawee',	NULL,	NULL),
(24,	30,	'ทดสอบเช็คชื่อ',	'2019-05-29 19:31:18',	'2019-05-29 12:31:18',	'Kamonwan Sangrawee',	NULL,	NULL),
(25,	31,	'ทดสอบเช็คชื่อ',	'2019-06-01 17:44:51',	'2019-06-01 10:44:51',	'Kamonwan Sangrawee',	NULL,	NULL),
(26,	32,	'ทดสอบเช็คชื่อ',	'2019-06-03 17:46:52',	'2019-06-03 10:46:52',	'Kamonwan Sangrawee',	NULL,	NULL),
(27,	33,	'ทดสอบเช็คชื่อ',	'2019-06-04 12:56:00',	'2019-06-04 05:56:00',	'Kamonwan Sangrawee',	NULL,	NULL);

DELIMITER ;;

CREATE TRIGGER `InsertTrainSetCheckLog` BEFORE INSERT ON `tb_train_set_check` FOR EACH ROW
BEGIN
		SET New.check_created = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.check_creator = @USERNAME;
END;;

CREATE TRIGGER `UpdateTrainSetCheckLog` BEFORE UPDATE ON `tb_train_set_check` FOR EACH ROW
BEGIN
		SET New.check_changed = CONCAT(CURRENT_DATE(), " ", CURRENT_TIME());
		SET New.check_changer = @USERNAME;
END;;

DELIMITER ;

DROP TABLE IF EXISTS `tb_train_type`;
CREATE TABLE `tb_train_type` (
  `train_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_type_name` varchar(200) DEFAULT NULL,
  `train_type_total_hour` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`train_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tb_train_type` (`train_type_id`, `train_type_name`, `train_type_total_hour`) VALUES
(1,	'ทักษะทางวิชาการ',	'12'),
(2,	'เตรียมความพร้อมสหกิจศึกษา',	'30');

-- 2019-06-06 02:29:59
