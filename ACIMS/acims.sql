-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2016 at 04:53 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acims`
--

-- --------------------------------------------------------

--
-- Table structure for table `abterminals`
--

CREATE TABLE IF NOT EXISTS `abterminals` (
  `REG_ID` varchar(12) NOT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(6) DEFAULT NULL,
  `INTER` int(10) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(20) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `MARKS` int(6) DEFAULT NULL,
  `ATTEND` int(6) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abterminals`
--

INSERT INTO `abterminals` (`REG_ID`, `FIRSTNAME`, `LASTNAME`, `FATHERNAME`, `FAT_OCC`, `CATEGORY`, `BRANCH`, `DISTRICT`, `CONTACT_NO`, `EMAIL_ID`, `ACC_NO`, `REG_FEE`, `SSC`, `INTER`, `DATE_OF_JOINING`, `GENDER`, `DATE_OF_BIRTH`, `MARKS`, `ATTEND`, `COURSE`, `ADDRESS`) VALUES
('12345', 'rahul', 'raj', 'raja', 'bus', 'General', 'cse', 'Hyderabad', '9700000000', 'r@gmail.com', '98989898981', 5000, 60, 66, '22/may/2012', 'male', '1/jan/1991', 500, 89, '1', 'hyd');

-- --------------------------------------------------------

--
-- Table structure for table `abterminalt`
--

CREATE TABLE IF NOT EXISTS `abterminalt` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(3) DEFAULT NULL,
  `WORKHRS` int(3) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abterminalt`
--

INSERT INTO `abterminalt` (`FIRSTNAME`, `LASTNAME`, `REG_ID`, `DEGREE`, `CONTACTNO`, `EMAIL_ID`, `ADDRESS`, `PROFF`, `TOTALSAL`, `CLASSSAL`, `DOB`, `GENDER`, `SUBJECT`, `MONTH`, `PRESENT`, `WORKHRS`, `SALOFMON`) VALUES
('somdatt', 'sharma', '98989', 'BTech', 987654329, 's@gmail.com', 'hyd', 'Assistant', 6000, 200, '1/jan/1984', 'male', 'physics ', 'apr', 23, 20, 6600);

-- --------------------------------------------------------

--
-- Table structure for table `adamss`
--

CREATE TABLE IF NOT EXISTS `adamss` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(40) DEFAULT NULL,
  `SSC` int(20) DEFAULT NULL,
  `INTER` int(50) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(30) DEFAULT NULL,
  `ATTEND` int(30) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adamss`
--

INSERT INTO `adamss` (`REG_ID`, `FIRSTNAME`, `LASTNAME`, `FATHERNAME`, `FAT_OCC`, `CATEGORY`, `BRANCH`, `DISTRICT`, `CONTACT_NO`, `EMAIL_ID`, `ACC_NO`, `REG_FEE`, `SSC`, `INTER`, `DATE_OF_JOINING`, `GENDER`, `DATE_OF_BIRTH`, `MARKS`, `ATTEND`, `COURSE`, `ADDRESS`) VALUES
('03651A0558', 'Yamini', 'Kollapureddy', 'K V Seshagiri Rao', '', 'General', 'cse', 'Khammam', '9490144164', 'mohanayamini@yahoo.com', '12345', 25000, 52, 58, '2009-10-21', 'female', '1997-10-21', 677, 56, 'Java', 'Kothagudem');

-- --------------------------------------------------------

--
-- Table structure for table `adamst`
--

CREATE TABLE IF NOT EXISTS `adamst` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` varchar(30) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(30) DEFAULT NULL,
  `CLASSSAL` int(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(50) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(50) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adamst`
--


-- --------------------------------------------------------

--
-- Table structure for table `agps`
--

CREATE TABLE IF NOT EXISTS `agps` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(40) DEFAULT NULL,
  `SSC` int(30) DEFAULT NULL,
  `INTER` int(40) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(40) DEFAULT NULL,
  `ATTEND` int(50) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agps`
--


-- --------------------------------------------------------

--
-- Table structure for table `agpt`
--

CREATE TABLE IF NOT EXISTS `agpt` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(40) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(20) DEFAULT NULL,
  `CLASSSAL` int(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(20) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(30) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agpt`
--


-- --------------------------------------------------------

--
-- Table structure for table `ccdetails`
--

CREATE TABLE IF NOT EXISTS `ccdetails` (
  `COLL_CODE` varchar(5) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `PIN` int(20) DEFAULT NULL,
  `STATE` varchar(35) DEFAULT NULL,
  `TELEPHONE` int(30) DEFAULT NULL,
  `FAX` int(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `WEBSITE` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccdetails`
--

INSERT INTO `ccdetails` (`COLL_CODE`, `ADDRESS`, `CITY`, `PIN`, `STATE`, `TELEPHONE`, `FAX`, `EMAIL`, `WEBSITE`) VALUES
('P7', 'Sivareddy guda', 'Ghatkesar', 500039, 'Andhra Pradesh', 998590, 2316, 'snisteducation@snist.co.in', 'www.snistedu.ac.in'),
('05', 'Nadergul, R.R. District', 'Ranga Reddy', 500039, 'Andhra Pradesh', 34549843, 2344, 'mvsr@yahoo.co.in', 'www.mvsrec.com'),
('05', 'Nadergul, R.R. District', 'Ranga Reddy', 500039, 'Andhra Pradesh', 34549843, 2344, 'mvsr@yahoo.co.in', 'www.mvsrec.com'),
('n1', 'nlg', 'nlg', 508297, 'Andhra Pradesh', 77777777, 77777777, 'nits@gmail.com', 'www.nits.com'),
('AA', 'HYD', 'HYD', 50001, 'A & N Island', 999999, 999999, 'i@gmail.com', 'www.abterminalsof.com');

-- --------------------------------------------------------

--
-- Table structure for table `colldetails`
--

CREATE TABLE IF NOT EXISTS `colldetails` (
  `COLL_CODE` varchar(5) DEFAULT NULL,
  `FACULTIES` varchar(150) DEFAULT NULL,
  `TEACHINGSTAFF` int(50) DEFAULT NULL,
  `ADMINSTAFF` int(50) DEFAULT NULL,
  `PROFFSTAFF` int(50) DEFAULT NULL,
  `STUDENTS` int(50) DEFAULT NULL,
  `PROGRAMES` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colldetails`
--

INSERT INTO `colldetails` (`COLL_CODE`, `FACULTIES`, `TEACHINGSTAFF`, `ADMINSTAFF`, `PROFFSTAFF`, `STUDENTS`, `PROGRAMES`) VALUES
('P7', 'Engineering', 100, 200, 90, 4500, 'M.Tech, C.S.E, E.C.E, E.E.E, M.C.A, M.B.A'),
('05', 'Engineering', 50, 50, 50, 1000, 'CSE,ME,ECE,CE,EEE'),
('n1', 'Arts, Teacher Education, Engineering', 100, 100, 30, 500, 'B.Tech'),
('AA', 'Commerce, Science, Engineering', 20, 7, 8, 5000, 'BA,MA');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE IF NOT EXISTS `colleges` (
  `COLL_NAME` varchar(100) DEFAULT NULL,
  `COLL_CODE` varchar(50) NOT NULL,
  `DATE_EST` date DEFAULT NULL,
  `AFFILIATED` varchar(70) DEFAULT NULL,
  `HEAD_NAME` varchar(30) DEFAULT NULL,
  `DESIGNATION` varchar(15) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `LOGINID` varchar(15) DEFAULT NULL,
  `JKC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COLL_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`COLL_NAME`, `COLL_CODE`, `DATE_EST`, `AFFILIATED`, `HEAD_NAME`, `DESIGNATION`, `STATUS`, `LOGINID`, `JKC`) VALUES
('VBIT', 'P6', '0008-07-04', 'Jawaharlal Nehru University', 'Ch. Sharma', 'Principal', 'requesting', 'notgiven', 'no'),
('SNIST', 'P3', '2001-07-25', 'Jawaharlal Nehru University', 'K.Lakshmi narayana', 'VC', 'requesting', 'notgiven', 'no'),
('SNIST', 'P7', '2001-07-25', 'Jawaharlal Nehru University', 'K.Lakshmi', 'VC', 'A++', 'snist', 'no'),
('MVSREC', '05', '2001-07-25', 'Osmania University', 'Sridher', 'Dean', 'A++', 'mvsrec', 'yes'),
('Mina', 'MINA', '2013-12-14', 'AICTE', 'rahul', 'Principal', 'requesting', 'notgiven', 'no'),
('nits', 'n1', '2000-01-01', 'Jawaharla Nehru Technological University', 'ravi', 'Director', 'A', 'nits1', 'no'),
('abterminal software solutions pvt.ltd', 'AA', '2012-10-13', 'Jawaharlal Nehru University', 'mehdi', 'Director', 'A+', 'abterminal', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `NAME` varchar(20) NOT NULL DEFAULT '',
  `SELECTED` int(40) DEFAULT NULL,
  `YEAR` int(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NAME`,`YEAR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--


-- --------------------------------------------------------

--
-- Table structure for table `exampaper`
--

CREATE TABLE IF NOT EXISTS `exampaper` (
  `TOPIC` varchar(50) NOT NULL,
  `NOQ` int(30) NOT NULL,
  `FILEUP` varchar(100) NOT NULL,
  `ACTIV` varchar(10) NOT NULL,
  `KEY` varchar(100) NOT NULL,
  `GAP` varchar(10) NOT NULL,
  PRIMARY KEY (`TOPIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exampaper`
--

INSERT INTO `exampaper` (`TOPIC`, `NOQ`, `FILEUP`, `ACTIV`, `KEY`, `GAP`) VALUES
('java', 3, 'aaa', 'yhs', '10:08', '8');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
  `SNO` int(20) DEFAULT NULL,
  `NAME` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `FEEDBACK` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`SNO`, `NAME`, `EMAIL`, `FEEDBACK`) VALUES
(1, 'Pradeep', 'name@yahoo.com', 'sdfsdfsdfsdfsdfsdf'),
(2, 'mehdi', 'im@gmail.com', 'hello sir please allow us to enter directly');

-- --------------------------------------------------------

--
-- Table structure for table `hitechs`
--

CREATE TABLE IF NOT EXISTS `hitechs` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(50) DEFAULT NULL,
  `INTER` int(50) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(40) DEFAULT NULL,
  `ATTEND` int(20) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hitechs`
--


-- --------------------------------------------------------

--
-- Table structure for table `hitecht`
--

CREATE TABLE IF NOT EXISTS `hitecht` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(30) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hitecht`
--


-- --------------------------------------------------------

--
-- Table structure for table `jkcadmin`
--

CREATE TABLE IF NOT EXISTS `jkcadmin` (
  `LOGINID` varchar(15) DEFAULT NULL,
  `FIRSTNAME` varchar(15) DEFAULT NULL,
  `LASTNAME` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `CONTACT` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jkcadmin`
--

INSERT INTO `jkcadmin` (`LOGINID`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `CONTACT`) VALUES
('snstjkcadmin', 'Lakshmi', 'Narayana.k', 'snist@education.com', '99854'),
('jkcadmin', 'asdf', 'asdf', 'asdf@d.f', '4454'),
('abcd', '', '', '', ''),
('ggg@gmail.com', 'bbbb', 'bbb', 'aaa@gmail.com', '123456'),
('abcdef', 'aaa', 'bbb', 'aaa@gmail.com', '123456'),
('mvsrjkc', 'Prasana', 'Kumar', 'prasana@jkc.com', '9985902'),
('sadf', 'sdaf', 'asdfasd', 'dsaf', 'asdfas'),
('asf', 'asf', 'asf', 'asf', 'asf'),
('sdf', 'sdf', 'sdf', 'sdf', 'sdf'),
('abcd', 'abcd', 'abcd', 'aaa@gmail.com', '23456');

-- --------------------------------------------------------

--
-- Table structure for table `jkcdata`
--

CREATE TABLE IF NOT EXISTS `jkcdata` (
  `FIRSTNAME` varchar(20) DEFAULT NULL,
  `SURNAME` varchar(20) DEFAULT NULL,
  `ROLL` varchar(10) DEFAULT NULL,
  `COLLEGE` varchar(50) DEFAULT NULL,
  `CODE` varchar(2) DEFAULT NULL,
  `MARKS` int(40) DEFAULT NULL,
  `PWD` varchar(10) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  `COMPANY` varchar(20) DEFAULT NULL,
  `YEAR` int(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jkcdata`
--

INSERT INTO `jkcdata` (`FIRSTNAME`, `SURNAME`, `ROLL`, `COLLEGE`, `CODE`, `MARKS`, `PWD`, `STATUS`, `COMPANY`, `YEAR`) VALUES
('arham', 'mehdi', '770201', 'NIT', 'p1', 670, '12345', 12, 'HP', 2015),
('SHAIK', 'FAROOQ', '1608127330', 'MVSREC', '05', 80, 'umar123', 1, '0', 0),
('SHAIK', 'FAROOQ', '1608127331', 'MVSREC', '05', 80, 'umar123', 1, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jkcresult`
--

CREATE TABLE IF NOT EXISTS `jkcresult` (
  `ROLL` varchar(10) NOT NULL DEFAULT '',
  `CORRECT` int(20) DEFAULT NULL,
  `WRONG` int(20) DEFAULT NULL,
  `RESULT` int(42) DEFAULT NULL,
  `YOURRESULT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jkcresult`
--


-- --------------------------------------------------------

--
-- Table structure for table `lbrces`
--

CREATE TABLE IF NOT EXISTS `lbrces` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(52) DEFAULT NULL,
  `INTER` int(52) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(52) DEFAULT NULL,
  `ATTEND` int(52) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lbrces`
--


-- --------------------------------------------------------

--
-- Table structure for table `lbrcet`
--

CREATE TABLE IF NOT EXISTS `lbrcet` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) DEFAULT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(30) DEFAULT NULL,
  `WORKHRS` int(20) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lbrcet`
--


-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `LOGINID` varchar(15) NOT NULL DEFAULT '',
  `PASSWORD` varchar(15) DEFAULT NULL,
  `TYPE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`LOGINID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`LOGINID`, `PASSWORD`, `TYPE`) VALUES
('acims', 'acims', 'cce'),
('jkcadmin', 'jkcadmin', 'jkcadmin'),
('snistjkcadmin', 'snistjkcadmin', 'jkcadmin'),
('snstjkcadmin', 'snstjkcadmin', 'jkcadmin'),
('abcdef', 'abcdef', 'jkcadmin'),
('snist', 'snist', 'college'),
('ggg@gmail.com', 'aaaaa', 'jkcadmin'),
('mvsrec', 'mvsrec', 'college'),
('mvsrjkc', 'jkcmvsr', 'jkcadmin'),
('sadf', 'asdfasd', 'jkcadmin'),
('asf', 'asf', 'jkcadmin'),
('sdf', 'sdf', 'jkcadmin'),
('abcd', 'abcd', 'jkcadmin'),
('12345678', '12345678', 'jkcadmin'),
('nits', 'nits', 'college'),
('nits1', 'nits1', 'college'),
('abterminal', 'abterminal', 'college');

-- --------------------------------------------------------

--
-- Table structure for table `mictechs`
--

CREATE TABLE IF NOT EXISTS `mictechs` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(52) DEFAULT NULL,
  `INTER` int(52) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(52) DEFAULT NULL,
  `ATTEND` int(52) DEFAULT NULL,
  `COURSE` varchar(60) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mictechs`
--


-- --------------------------------------------------------

--
-- Table structure for table `mictecht`
--

CREATE TABLE IF NOT EXISTS `mictecht` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(30) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mictecht`
--


-- --------------------------------------------------------

--
-- Table structure for table `mvsrecs`
--

CREATE TABLE IF NOT EXISTS `mvsrecs` (
  `REG_ID` varchar(12) NOT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(6) DEFAULT NULL,
  `INTER` int(10) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(20) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `MARKS` int(6) DEFAULT NULL,
  `ATTEND` int(6) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mvsrecs`
--

INSERT INTO `mvsrecs` (`REG_ID`, `FIRSTNAME`, `LASTNAME`, `FATHERNAME`, `FAT_OCC`, `CATEGORY`, `BRANCH`, `DISTRICT`, `CONTACT_NO`, `EMAIL_ID`, `ACC_NO`, `REG_FEE`, `SSC`, `INTER`, `DATE_OF_JOINING`, `GENDER`, `DATE_OF_BIRTH`, `MARKS`, `ATTEND`, `COURSE`, `ADDRESS`) VALUES
('1608127331', 'SHAIK', 'FAROOQ', 'Shaik Anwar Basha', 'Engineer', 'General', 'cse', 'Hyderabad', '9642966682', 'ninjas.ninjas8@gmail.com', 'A500', 1000, 70, 62, '1/jan/1970', 'male', '1/jan/1970', 0, 0, '1', 'H# 12-2-819/3, F# 504, Classic Residency Apt\r\nDilshadnagar Colony, Rethibowli');

-- --------------------------------------------------------

--
-- Table structure for table `mvsrect`
--

CREATE TABLE IF NOT EXISTS `mvsrect` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(3) DEFAULT NULL,
  `WORKHRS` int(3) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mvsrect`
--


-- --------------------------------------------------------

--
-- Table structure for table `nits1s`
--

CREATE TABLE IF NOT EXISTS `nits1s` (
  `REG_ID` varchar(12) NOT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(6) DEFAULT NULL,
  `INTER` int(10) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(20) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `MARKS` int(6) DEFAULT NULL,
  `ATTEND` int(6) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nits1s`
--


-- --------------------------------------------------------

--
-- Table structure for table `nits1t`
--

CREATE TABLE IF NOT EXISTS `nits1t` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(3) DEFAULT NULL,
  `WORKHRS` int(3) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nits1t`
--


-- --------------------------------------------------------

--
-- Table structure for table `notgivens`
--

CREATE TABLE IF NOT EXISTS `notgivens` (
  `REG_ID` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notgivens`
--

INSERT INTO `notgivens` (`REG_ID`) VALUES
('06s61f0045');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `NOTEID` int(30) NOT NULL DEFAULT '0',
  `POSTDATE` date DEFAULT NULL,
  `LASTDATE` date DEFAULT NULL,
  `NOTIFY` varchar(400) DEFAULT NULL,
  `STATUS` int(10) DEFAULT NULL,
  PRIMARY KEY (`NOTEID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NOTEID`, `POSTDATE`, `LASTDATE`, `NOTIFY`, `STATUS`) VALUES
(0, NULL, NULL, 'Welcome To ACIMS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `COLL_CODE` varchar(5) DEFAULT NULL,
  `CURRICULAR` int(20) DEFAULT NULL,
  `TEACHING` int(20) DEFAULT NULL,
  `RESEARCH` int(20) DEFAULT NULL,
  `INFRASTRUCTURE` int(20) DEFAULT NULL,
  `STUDENT` int(20) DEFAULT NULL,
  `ORGANISATION` int(20) DEFAULT NULL,
  `HEALTHY` int(20) DEFAULT NULL,
  `TOTAL` int(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`COLL_CODE`, `CURRICULAR`, `TEACHING`, `RESEARCH`, `INFRASTRUCTURE`, `STUDENT`, `ORGANISATION`, `HEALTHY`, `TOTAL`) VALUES
('P7', 10, 10, 10, 10, 10, 10, 10, 70),
('05', 10, 10, 10, 10, 10, 10, 10, 70),
('AA', 10, 20, 5, 9, 9, 9, 10, 66);

-- --------------------------------------------------------

--
-- Table structure for table `s`
--

CREATE TABLE IF NOT EXISTS `s` (
  `REG_ID` varchar(12) NOT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(6) DEFAULT NULL,
  `INTER` int(10) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(20) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `MARKS` int(6) DEFAULT NULL,
  `ATTEND` int(6) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s`
--


-- --------------------------------------------------------

--
-- Table structure for table `sindhuras`
--

CREATE TABLE IF NOT EXISTS `sindhuras` (
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(100) DEFAULT NULL,
  `SSC` int(50) DEFAULT NULL,
  `INTER` int(50) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(50) DEFAULT NULL,
  `ATTEND` int(50) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sindhuras`
--


-- --------------------------------------------------------

--
-- Table structure for table `sindhurat`
--

CREATE TABLE IF NOT EXISTS `sindhurat` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(30) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(100) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sindhurat`
--


-- --------------------------------------------------------

--
-- Table structure for table `snists`
--

CREATE TABLE IF NOT EXISTS `snists` (
  `REG_ID` varchar(12) NOT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(6) DEFAULT NULL,
  `INTER` int(10) DEFAULT NULL,
  `DATE_OF_JOINING` varchar(20) DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `MARKS` int(6) DEFAULT NULL,
  `ATTEND` int(6) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snists`
--

INSERT INTO `snists` (`REG_ID`, `FIRSTNAME`, `LASTNAME`, `FATHERNAME`, `FAT_OCC`, `CATEGORY`, `BRANCH`, `DISTRICT`, `CONTACT_NO`, `EMAIL_ID`, `ACC_NO`, `REG_FEE`, `SSC`, `INTER`, `DATE_OF_JOINING`, `GENDER`, `DATE_OF_BIRTH`, `MARKS`, `ATTEND`, `COURSE`, `ADDRESS`) VALUES
('06P61F0016', 'Venkata Pavan kumar', 'Tadepalli', 'Mallikarjunudu', 'BSNL S.D.E', 'General', 'cse', 'Hyderabad', '9492031299', 'kumar.pavan2507@gmail.com', '112233', 2000, 63, 70, '11/sep/2006', 'male', '12/oct/2009', 78, 89, '1', 'H.No:11-14-293,Sirinagar Colony, L.B.Nagar.'),
('06P61F0017', 'aaa', 'bbb', '', '', 'General', 'eee', 'Adilabad', '', 'qwer3', '', 5000, 34, 67, '1/jan/1970', NULL, '1/jan/1970', 0, 99, '1', ''),
('06P61F0018', 'honey', 'k', '', '', 'General', 'eee', 'Adilabad', '', '11', '', 5000, 98, 99, '1/jan/1970', NULL, '1/jan/1970', 97, 78, '1', ''),
('06P61F0020', 'sunny', 'k', 'xyz', 'aaa', 'General', 'eee', 'Adilabad', '89456', 'ghjk', '76543', 7000, 67, 78, '1/jan/1970', NULL, '1/jan/1970', 100, 23, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `snistt`
--

CREATE TABLE IF NOT EXISTS `snistt` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(3) DEFAULT NULL,
  `WORKHRS` int(3) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snistt`
--

INSERT INTO `snistt` (`FIRSTNAME`, `LASTNAME`, `REG_ID`, `DEGREE`, `CONTACTNO`, `EMAIL_ID`, `ADDRESS`, `PROFF`, `TOTALSAL`, `CLASSSAL`, `DOB`, `GENDER`, `SUBJECT`, `MONTH`, `PRESENT`, `WORKHRS`, `SALOFMON`) VALUES
('Santhosh Kumar', 'P', '06P61F0023', 'C.S.E', 24044515, 'santosh.p@gmail.com', 'Sarada Naga', 'professor', 10000, 333, '5/jun/1986', 'male', 'Statistics', 'jan', 35, 50, 5005),
('aaa', 'uyt', '06P61F0020', 'b.sc', 1234567, 'aaa@gmail.com', 'dno:98772', 'professor', 78000, 2500, '4/jan/1970', 'male', 'dfgdf', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `svcets`
--

CREATE TABLE IF NOT EXISTS `svcets` (
  `REG_ID` varchar(28) NOT NULL DEFAULT '',
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `FATHERNAME` varchar(30) DEFAULT NULL,
  `FAT_OCC` varchar(30) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(10) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ACC_NO` varchar(30) DEFAULT NULL,
  `REG_FEE` int(10) DEFAULT NULL,
  `SSC` int(52) DEFAULT NULL,
  `INTER` int(52) DEFAULT NULL,
  `DATE_OF_JOINING` date DEFAULT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `MARKS` int(52) DEFAULT NULL,
  `ATTEND` int(52) DEFAULT NULL,
  `COURSE` varchar(6) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svcets`
--


-- --------------------------------------------------------

--
-- Table structure for table `svcett`
--

CREATE TABLE IF NOT EXISTS `svcett` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL DEFAULT '',
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(30) DEFAULT NULL,
  `WORKHRS` int(30) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svcett`
--


-- --------------------------------------------------------

--
-- Table structure for table `t`
--

CREATE TABLE IF NOT EXISTS `t` (
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `REG_ID` varchar(12) NOT NULL,
  `DEGREE` varchar(10) DEFAULT NULL,
  `CONTACTNO` int(12) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `PROFF` varchar(25) DEFAULT NULL,
  `TOTALSAL` int(10) DEFAULT NULL,
  `CLASSSAL` int(10) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `SUBJECT` varchar(20) DEFAULT NULL,
  `MONTH` varchar(4) DEFAULT NULL,
  `PRESENT` int(3) DEFAULT NULL,
  `WORKHRS` int(3) DEFAULT NULL,
  `SALOFMON` int(10) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t`
--

