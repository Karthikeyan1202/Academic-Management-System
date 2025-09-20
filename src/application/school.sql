-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2020 at 11:34 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

DROP TABLE IF EXISTS `academic_syllabus`;
CREATE TABLE IF NOT EXISTS `academic_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `accountant_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `accountant_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `session`, `school_id`, `login_status`) VALUES
(16, 'Accountant', '09f94645c8', '2019-08-27', 'Male', 'Muslim', 'o+', 'Address Accountant', '+912345667', 'accountant@accountant.com', 'facebook', 'twitter', 'googleplu', 'linkedin', 'PhD', 'Married', 'Terms of Service.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `school_id`, `session`, `level`, `login_status`) VALUES
(1, 'Administrator', 'admin@admin.com', '07133445656', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, '', '1', '0'),
(9, 'Udemy Instructor', 'udemy@udemy.com', '+1564783934', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 0, '', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `manage_academics` int(11) NOT NULL,
  `manage_employee` int(11) NOT NULL,
  `manage_student` int(11) NOT NULL,
  `manage_attendance` int(11) NOT NULL,
  `download_page` int(11) NOT NULL,
  `manage_parent` int(11) NOT NULL,
  `manage_alumni` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`admin_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`, `school_id`, `session`) VALUES
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, ''),
(7, 9, 1, 1, 1, 1, 1, 1, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
CREATE TABLE IF NOT EXISTS `alumni` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `interest` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `name`, `sex`, `phone`, `email`, `address`, `profession`, `marital_status`, `g_year`, `club_id`, `interest`, `school_id`, `session`) VALUES
(4, 'Alumni Learner', 'Male', '09066021052', 'd@d.com', 'Address', 'Engineer', 'married', '2019-09-04', 1, 'Reading', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `apply_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`application_id`, `applicant_name`, `vacancy_id`, `apply_date`, `status`, `school_id`, `session`) VALUES
(2, 'Udemy Application', 3, '1567965600', 'interviewed', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `name`, `subject_id`, `class_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`, `school_id`, `session`) VALUES
(1, 'Assignment for Nursery One', 4, 2, 1, 'DESC', 'invoice.docx', 'pdf', '2018-08-19', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`, `school_id`) VALUES
(39, 1, 45, '2019-12-20', '2019-2020', 0),
(40, 1, 45, '2019-12-22', '2019-2020', 0),
(41, 0, 23, '2019-12-28', '2019-2020', 0),
(44, 1, 45, '2020-01-28', '2019-2020', 0),
(45, 2, 46, '2020-01-28', '2019-2020', 0);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `name`, `description`, `school_id`, `session`) VALUES
(2, 'Esther and Atorise.', 'The book is written by Esther and Atorise', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gift` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`award_id`, `award_code`, `name`, `gift`, `amount`, `date`, `user_id`, `school_id`, `session`) VALUES
(2, '4675HD', 'Most Dedicated', 'Award', '1000', '2019-09-19', 'teacher-2', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_holder_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`, `school_id`, `session`) VALUES
(2, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(3, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(4, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(5, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_table`
--

DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE IF NOT EXISTS `banner_table` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_table`
--

INSERT INTO `banner_table` (`banner_id`, `banner_image`, `banner_text`, `school_id`, `session`) VALUES
(1, 'sample.jpg', '       Meet our able, gallant and most competent teachers that will help your children/child to attain higher success in life. We teach to become a creative thinker and to be useful to the society.....', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `isbn` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author_id`, `publisher_id`, `book_category_id`, `isbn`, `edition`, `subject_id`, `quantity`, `timestamp`, `class_id`, `status`, `price`, `school_id`, `session`) VALUES
(1, 'Advance Java.', 'This is the newly released book by Sheg', 2, 1, 2, 'DS34FD', '1st', 5, '1', 1579370400, 2, '1', '200', 0, ''),
(2, 'Python', 'Python', 2, 1, 2, 'DS34FD', '1st', 4, '2', 1574186400, 2, '2', '500', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
CREATE TABLE IF NOT EXISTS `book_category` (
  `book_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`book_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name`, `description`, `school_id`, `session`) VALUES
(2, 'Non fictional.', 'This is another non-fictional book', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

DROP TABLE IF EXISTS `book_request`;
CREATE TABLE IF NOT EXISTS `book_request` (
  `book_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `return_date` int(11) NOT NULL,
  `request_date` int(11) NOT NULL,
  `status` longtext NOT NULL,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`book_request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_request`
--

INSERT INTO `book_request` (`book_request_id`, `book_id`, `return_date`, `request_date`, `status`, `student_id`, `school_id`, `session`) VALUES
(2, 1, 1579716000, 1579716000, '1', 45, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

DROP TABLE IF EXISTS `circular`;
CREATE TABLE IF NOT EXISTS `circular` (
  `circular_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`circular_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`circular_id`, `title`, `reference`, `content`, `date`, `school_id`, `session`) VALUES
(2, 'Meeting for all the members of the school', 'DF46SFGH', 'This is for all the teaching staff. Ensure you are all present.', '2018-08-24', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`, `school_id`, `session`) VALUES
('0b95togtlv7fief8mlttlu8jcjmh9i8g', '127.0.0.1', 1580149963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134393936333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2230223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('0o55lsviqm8i8evg7i1164p53mkp4vup', '127.0.0.1', 1576400835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430303833353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('2ufimsr9d2l1dv7a92mlj3reugfm99uh', '127.0.0.1', 1580151698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135313639383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('3g222s46b287jjd8ofllb190eu6uan2a', '127.0.0.1', 1580198069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303139383034363b, 0, ''),
('3ugsbjsngkopbot3qs3ln2plta1r8fj4', '127.0.0.1', 1580142864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134323836343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('4acm0tmki28r1ks7vh2slmchqekb8i51', '127.0.0.1', 1580134785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133343738353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('4epqfrpppooeai89mbl0mnj47kd0k56n', '127.0.0.1', 1580197950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303139373935303b, 0, ''),
('5k29uj9otbufutr4sl6sm1sgqajns7q3', '127.0.0.1', 1576401225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313232353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('5saecp39nggb7jbaifrfmb0hgtr2vtnh', '127.0.0.1', 1580135141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133353130303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('6fuugjkndr9s9sehs6sdunr55df7of8e', '127.0.0.1', 1580150361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135303336313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2230223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('6im67b8kff8f9rs1e66r6splnqnsjgdj', '127.0.0.1', 1580143924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134333932343b, 0, ''),
('6qlbqi95gm56km49cioacibnpl1d6qap', '127.0.0.1', 1575989622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393632323b, 0, ''),
('7k1ho15mjeg7u9lbsua6a6f0fl3okgf5', '127.0.0.1', 1575989675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393637353b, 0, ''),
('8ch31n4ojv6t1m49v9mkk771lav20kf3', '127.0.0.1', 1580145703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134353730333b, 0, ''),
('8esqiumpgo03rthcimbnehv3b2e9bc2p', '127.0.0.1', 1575989062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393036323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('8o86nb7heqf8lkc69mve4nn7jds4vdqk', '127.0.0.1', 1580149325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134393332353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2230223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('d2uf1rm07jin7o0v77qt6j7eg3nvmnh7', '127.0.0.1', 1580133139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133333133393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('d4ma7pisr50ilsg1f4gj6onhn03lkest', '127.0.0.1', 1580150998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135303939383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2230223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('e04jj0ac23c5a0r1ahco34m1s31tm203', '127.0.0.1', 1580196565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303139363434313b, 0, ''),
('ea738lb5ik6v0kmm7dm2pbud27k02glr', '127.0.0.1', 1576397281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339373238313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('eabpblg34h6fvvhr3s69uk2do8fsekng', '127.0.0.1', 1580151384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135313338343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('eei01td8856q3j4fj0uhmps08k0vkiel', '127.0.0.1', 1580132809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133323830393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('eq1rl61eoblqth5bguakb048tc56dq6s', '127.0.0.1', 1580144226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134343232363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d, 0, ''),
('fac5otroqnebqctd03003efvlsubhfm5', '127.0.0.1', 1580146285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134363238353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('fofehi7eaeqj2bk5eit5ekp41gd147hi', '127.0.0.1', 1576397948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339373934383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('ftnqt7kl410guj0fr4bpqmlim5vnjt49', '127.0.0.1', 1580152392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135323339323b, 0, ''),
('gvkpoe8jk1di4l5cj7a964sb35eid9te', '127.0.0.1', 1580140181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134303136303b, 0, ''),
('im9ufld1cfeaafkd5qtnnireqm3grrsq', '127.0.0.1', 1580142000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134323030303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('iosktdb2q4b4lf37p2em2hemrpadn21j', '127.0.0.1', 1580152164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303135323136343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('jjgc5umr0p2np4aneuua2t7tm89v1voj', '127.0.0.1', 1576239186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363233393138363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('k97ukhp6f9v8n4h9r92ifcomo3a7758c', '127.0.0.1', 1580135100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133353130303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('l1e17mk7cdg71do9qouos1q5249fetn7', '127.0.0.1', 1576239187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363233393138373b, 0, ''),
('l46es3qrhtcgi7kcc8daopocsam1knfg', '127.0.0.1', 1576401563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313536333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('m9sj7su5id61c0rfj53c718pqrbt4hq6', '127.0.0.1', 1576396972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339363937323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d, 0, ''),
('meplpbi7pgntsb4qv37j8qcmj3lui8e9', '127.0.0.1', 1580132495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133323439353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('ndto2l4cv384prfveod69n5duullmo4o', '127.0.0.1', 1576401722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313732323b, 0, ''),
('nlsv86sund074adiho5j6lgpau6mkha4', '127.0.0.1', 1580144529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134343532393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('pe1j2egh567gfcr07nu9tnm8ukj7ma83', '127.0.0.1', 1580134458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303133343435383b, 0, ''),
('pk4m8lpu6igmqgieqnm547i4q2h99gud', '127.0.0.1', 1575988659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938383635393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('qhcrmmb8gppl38vmtu8jd806a7l0oksa', '127.0.0.1', 1575989414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393431343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('qhn13rfd38a69mgt1tmtanlsjq9fbbft', '127.0.0.1', 1580197042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303139373034323b, 0, ''),
('r20i0a41mmc9gh253p7nljk2h4srv77u', '127.0.0.1', 1580196441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303139363434313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d, 0, ''),
('rmfhfvjo4ef5f1tked46rpgesjg9qt2d', '127.0.0.1', 1580142313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134323331333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('rphh8b2kjmqvjhqfkd0ga0otd0u9c283', '127.0.0.1', 1580148728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134383732383b, 0, ''),
('s13biocd47pn1ahjppg6fa37vnsuq608', '127.0.0.1', 1580147431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134373433313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('sg07lpdss70ie7gm42cu3oejlpnorlpv', '127.0.0.1', 1580146940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134363934303b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('va552nqf2us2ta7nm0vlkol6qpjate8t', '127.0.0.1', 1580149648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134393634383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2230223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, ''),
('vjolml4hvc7u0g6aug66qjsugegh8c2c', '127.0.0.1', 1580144853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538303134343835333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c623a313b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`, `school_id`, `session`) VALUES
(2, 'Nursery One', 'Nursery 1', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

DROP TABLE IF EXISTS `class_routine`;
CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`, `school_id`, `session`) VALUES
(5, 2, 3, 4, '3', '17', '20', '20', 'monday', '2019-2020', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `se` longtext NOT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`, `date`, `school_id`, `se`) VALUES
(1, 'Jet club', 'This is for those who love science.', '2019-08-25', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_table`
--

DROP TABLE IF EXISTS `contact_table`;
CREATE TABLE IF NOT EXISTS `contact_table` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `visitor_email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `visitor_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_table`
--

INSERT INTO `contact_table` (`contact_id`, `visitor_name`, `visitor_email`, `visitor_content`, `school_id`, `session`) VALUES
(1, 'Sheg', 'optimumproblemsolver@gmail.com', 'Just want to know more about your school payment.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`, `school_id`, `session`) VALUES
(2, 'Bursar', 'aed7c689d676c7c', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`, `school_id`, `session`) VALUES
(5, 'Tutorial', 2, 0, ''),
(4, 'Udemy', 2, 0, ''),
(6, 'Student', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `capacity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`, `school_id`, `session`) VALUES
(2, 'Wiz Hostel', 2, 3, '200', 'Address for hostel location', 'Address for hostel location', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

DROP TABLE IF EXISTS `enquiry_category`;
CREATE TABLE IF NOT EXISTS `enquiry_category` (
  `enquiry_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`enquiry_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquiry_category_id`, `category`, `purpose`, `whom`, `school_id`, `session`) VALUES
(3, 'This is for ID 3 information.', 'Payment', 'Tutorial', 0, ''),
(4, 'This is Udemy Information', 'School fees information', 'Just edited now', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`, `school_id`, `session`) VALUES
(1, 'First Term Examination', 'First Term', '2019-10-30', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE IF NOT EXISTS `exam_question` (
  `exam_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`exam_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`, `school_id`, `session`) VALUES
(5, 'Reading Books.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `general_message`
--

DROP TABLE IF EXISTS `general_message`;
CREATE TABLE IF NOT EXISTS `general_message` (
  `general_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`general_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_message`
--

INSERT INTO `general_message` (`general_message_id`, `message`, `user_id`, `school_id`, `session`) VALUES
(195, 'yes sir', 'student-45', 0, ''),
(194, 'hey are you there', 'admin-1', 0, ''),
(76, 'We still have few messages', 'admin-1', 0, ''),
(75, 'Alright sir', 'student-45', 0, ''),
(74, 'More information here', 'admin-1', 0, ''),
(73, 'Am talking sir', 'student-45', 0, ''),
(72, 'Say something here', 'admin-1', 0, ''),
(173, 'Hello, are you fine and I hope you are good to me', 'admin-1', 0, ''),
(174, 'Ok sir, am going to make sure you are so good to me', 'student-45', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

DROP TABLE IF EXISTS `group_message`;
CREATE TABLE IF NOT EXISTS `group_message` (
  `group_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`group_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_message_thread`
--

DROP TABLE IF EXISTS `group_message_thread`;
CREATE TABLE IF NOT EXISTS `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `members` longtext COLLATE utf8_unicode_ci,
  `group_name` longtext COLLATE utf8_unicode_ci,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  `created_timestamp` longtext COLLATE utf8_unicode_ci,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`group_message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostel_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hostel_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `name`, `hostel_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(15, 'Hostel Udemy', '78e39debb4', '2019-08-27', 'Male', 'Muslim', 'o+', 'This is the new address for the new hostel manager.', '+912345667', 'hostel@hostel.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'Welcome to Optimum Linkup.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_category`
--

DROP TABLE IF EXISTS `hostel_category`;
CREATE TABLE IF NOT EXISTS `hostel_category` (
  `hostel_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`hostel_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_category`
--

INSERT INTO `hostel_category` (`hostel_category_id`, `name`, `description`, `school_id`, `session`) VALUES
(2, 'Female', 'This is for female only.', 0, ''),
(3, 'Male', 'This is for male only. Female are not allowed.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room`
--

DROP TABLE IF EXISTS `hostel_room`;
CREATE TABLE IF NOT EXISTS `hostel_room` (
  `hostel_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`hostel_room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_room`
--

INSERT INTO `hostel_room` (`hostel_room_id`, `name`, `room_type`, `num_bed`, `cost_bed`, `description`, `school_id`, `session`) VALUES
(2, 'Room One', 'Single', '2', '5000', 'This is for the big guys among us.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
CREATE TABLE IF NOT EXISTS `house` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `name`, `description`, `school_id`, `session`) VALUES
(1, 'Purple House', 'This is for students in purple house', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hrm`
--

DROP TABLE IF EXISTS `hrm`;
CREATE TABLE IF NOT EXISTS `hrm` (
  `hrm_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hrm_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hrm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hrm`
--

INSERT INTO `hrm` (`hrm_id`, `name`, `hrm_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(15, 'Human Udemy', '414bbf2d2a', '2019-08-27', 'Male', 'Christianity', 'B+', 'This is the newly added human resources manager address', '+912345667', 'hrm@hrm.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'index.html', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_number`, `student_id`, `title`, `description`, `amount`, `discount`, `amount_paid`, `due`, `creation_timestamp`, `payment_method`, `status`, `year`, `school_id`) VALUES
(2, '742593INV2019', 45, 'Another Part payment for eLibrary', 'Another Part payment for eLibrary.', 7000, 0, 6200, 800, '2019-11-12', '1', 2, '2019-2020', 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `korea` longtext COLLATE utf8_unicode_ci,
  `blabla` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40559 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `french`, `korea`, `blabla`) VALUES
(1, 'Manage Language', 'Manage Language', 'إدارة اللغة', NULL, NULL, NULL),
(2, 'active language', 'Active Language', 'اللغة النشطة', NULL, NULL, NULL),
(40558, 'dashboard', 'Dashboard', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

DROP TABLE IF EXISTS `language_list`;
CREATE TABLE IF NOT EXISTS `language_list` (
  `language_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`language_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'Arabic', 'arabic', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
CREATE TABLE IF NOT EXISTS `librarian` (
  `librarian_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `librarian_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `librarian_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(13, 'Udemy Librarian', '42ed75d802', '2019-08-26', 'Male', 'Muslim', 'O-', 'Address', '+912345667', 'librarian@librarian.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'invoice.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_score1` int(11) NOT NULL,
  `class_score2` int(11) NOT NULL,
  `class_score3` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `class_score1`, `class_score2`, `class_score3`, `exam_score`, `comment`, `school_id`, `session`) VALUES
(1, 45, 5, 1, 2, 10, 9, 8, 70, 'Good performance.', 0, ''),
(2, 45, 4, 1, 2, 10, 7, 9, 69, 'Excellent performance.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `name`, `class_id`, `subject_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`, `school_id`, `session`) VALUES
(2, 'Youtube Video', 2, 5, 1, 'Hey', 'cbt.txt', 'pdf', '2018-08-19', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `read_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attached_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE IF NOT EXISTS `noticeboard` (
  `noticeboard_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`noticeboard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`noticeboard_id`, `title`, `location`, `timestamp`, `description`, `school_id`, `session`) VALUES
(3, 'Second meeting coming up soon', 'Udemy Forum', 1575136800, 'The meeting is coming up soon. Ensure you are fully prepared.', 0, ''),
(4, 'Parent Teacher Association Meeting.', 'Ontario Location', 1575050400, 'This is the new updated information as regards the meeting.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

DROP TABLE IF EXISTS `online_exam`;
CREATE TABLE IF NOT EXISTS `online_exam` (
  `online_exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `duration` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minimum_percentage` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instruction` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `running_year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`online_exam_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_result`
--

DROP TABLE IF EXISTS `online_exam_result`;
CREATE TABLE IF NOT EXISTS `online_exam_result` (
  `online_exam_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `online_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `answer_script` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `obtained_mark` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exam_started_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`online_exam_result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`, `school_id`, `session`) VALUES
(4, 'Mr. Parent', 'parent@parent.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '+912345667', 'Udemy Address', 'Learners', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
CREATE TABLE IF NOT EXISTS `payroll` (
  `payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `payroll_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `allowances` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deductions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `payroll_code`, `user_id`, `allowances`, `deductions`, `date`, `status`, `school_id`, `session`) VALUES
(4, 'c94d9d7', '1', '[{\"type\":\"A\",\"amount\":\"1000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"200\"},{\"type\":\"B\",\"amount\":\"700\"}]', '10,2019', '0', 0, ''),
(3, 'a8c4ae9', '1', '[{\"type\":\"Food\",\"amount\":\"5000\"},{\"type\":\"House\",\"amount\":\"2000\"}]', '[{\"type\":\"Tax1\",\"amount\":\"1000\"},{\"type\":\"Tax2\",\"amount\":\"500\"}]', '9,2019', '1', 0, ''),
(5, '75c1f3d', '1', '[{\"type\":\"A\",\"amount\":\"2000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"500\"},{\"type\":\"B\",\"amount\":\"500\"}]', '12,2019', '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `description`, `school_id`, `session`) VALUES
(1, 'Amazon.', 'The book is published by Amazon', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE IF NOT EXISTS `question_bank` (
  `question_bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `online_exam_id` int(11) NOT NULL,
  `question_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`question_bank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_code` longtext NOT NULL,
  `name` longtext NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_code`, `name`) VALUES
(1, '2343HD', 'Odeda Branch'),
(2, '2334GDBG', 'Lagos Branch');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`, `school_id`, `session`) VALUES
(3, 'First Term', 'Term 1', 2, 1, 0, ''),
(4, 'Second Term', '2nd', 2, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'PHP CodeIgniter School System'),
(2, 'system_title', 'PHP CodeIgniter School System'),
(3, 'address', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.'),
(4, 'phone', '08033527716'),
(6, 'currency', 'usd'),
(7, 'system_email', 'optimumproblemsolver@gmail.com'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(16, 'skin_colour', 'purple'),
(21, 'session', '2019-2020'),
(22, 'footer', 'Developed by Optimum Linkup Computers. All Right Reserved (2019)'),
(116, 'paypal_email', 'optimumproblemsolver@gmail.com'),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(122, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
CREATE TABLE IF NOT EXISTS `sms_settings` (
  `sms_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`sms_setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`sms_setting_id`, `type`, `info`, `school_id`) VALUES
(12, 'msg91_sender_id', 'sender id', 0),
(11, 'msg91_authentication_key', 'msg91 auth key', 0),
(10, 'clickatell_apikey', 'clickattel api', 0),
(9, 'clickatell_password', 'clickattel paasword', 0),
(8, 'clickatell_username', 'clickattel username', 0),
(13, 'msg91_route', 'route', 0),
(14, 'msg91_country_code', 'country code', 0),
(15, 'active_sms_gateway', 'msg91', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_category`
--

DROP TABLE IF EXISTS `social_category`;
CREATE TABLE IF NOT EXISTS `social_category` (
  `social_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`social_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_category`
--

INSERT INTO `social_category` (`social_category_id`, `name`, `colour`, `icon`, `description`, `school_id`, `session`) VALUES
(2, 'Romance', 'danger', 'fa-male', 'This is for romance chat room', 0, ''),
(3, 'Event', 'primary', 'fa-book', 'This is for event chat room', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `age` longtext COLLATE utf8_unicode_ci NOT NULL,
  `place_birth` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `m_tongue` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `city` longtext COLLATE utf8_unicode_ci NOT NULL,
  `state` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nationality` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ps_attended` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ps_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ps_purpose` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_study` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_of_leaving` longtext COLLATE utf8_unicode_ci NOT NULL,
  `am_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tran_cert` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dob_cert` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_join` longtext COLLATE utf8_unicode_ci NOT NULL,
  `physical_h` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `card_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `more_entries` longtext COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `house_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`, `school_id`) VALUES
(45, 'Udemy Student II', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Lagos', 'Canadian', '+912345667', 'student@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 3, 4, '5bf8161', 0, 2, 1, 2, 1, '2019-2020', '', '', '', '', '', '0', 1),
(46, 'Sheg Udemy', '01/07/2003', '17', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Sheg Address', 'City', 'State', 'Nigerian', '+2348161662924', 'sheg@sheg.com', 'Previous school attended', 'The address of previous school', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-24', '2011-08-26', 'Yes', 'Yes', 'Yes', 'No', '687f13b741f2b1049b8e47522b31b23e07484542', '', '', '2', 4, 4, '7bdc9ce', 0, 2, 1, 2, 1, '2019-2020', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_category`
--

DROP TABLE IF EXISTS `student_category`;
CREATE TABLE IF NOT EXISTS `student_category` (
  `student_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`student_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_category`
--

INSERT INTO `student_category` (`student_category_id`, `name`, `description`, `school_id`, `session`) VALUES
(2, 'Boarding Student', 'This is for the boarding student.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `school_id`, `session`) VALUES
(5, 'Economics', 2, 1, 0, ''),
(4, 'Mathematics', 2, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_table`
--

DROP TABLE IF EXISTS `subscriber_table`;
CREATE TABLE IF NOT EXISTS `subscriber_table` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`subscriber_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber_table`
--

INSERT INTO `subscriber_table` (`subscriber_id`, `email`, `school_id`, `session`) VALUES
(6, 'optimumproblemsolver@gmail.com', 0, ''),
(7, 'clohithchandru@gmail.com', 0, ''),
(8, 'jovah2019@gmail.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `role` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` longtext COLLATE utf8_unicode_ci NOT NULL,
  `twitter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` longtext COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_joining` longtext COLLATE utf8_unicode_ci NOT NULL,
  `joining_salary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_leaving` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` int(11) NOT NULL,
  `login_status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`, `school_id`, `session`) VALUES
(1, 'Udemy Teacher', '1', 'f82e5cc', '2018-08-19', 'male', 'Christianity', 'B+', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.', '+912345667', 'teacher@teacher.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'profile.png', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 4, '2019-09-15', '5000', 1, '2019-09-18', 3, '0', 1, ''),
(2, 'New Teacher', '1', 'dbc680f', '2018-08-19', 'male', 'Muslim', 'B+', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.', '+2348161662924', 'tech@tech.com', 'facebook', 'twitter', 'googleplu', 'linkedin', 'PhD', 'Single', 'Customizations_version1.pdf', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 4, '2020-08-01', '6000', 1, '2020-01-08', 5, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `testimony_table`
--

DROP TABLE IF EXISTS `testimony_table`;
CREATE TABLE IF NOT EXISTS `testimony_table` (
  `testimony_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`testimony_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimony_table`
--

INSERT INTO `testimony_table` (`testimony_id`, `parent_id`, `content`, `status`, `school_id`, `session`) VALUES
(2, 4, 'Good school all the time', 'Approved', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
CREATE TABLE IF NOT EXISTS `transport_route` (
  `transport_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`transport_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`transport_route_id`, `name`, `description`, `school_id`, `session`) VALUES
(2, 'Toronto to Usa', 'This is vehicle is going from Canada to Usa', 0, ''),
(3, 'Lagos to Canada', 'This is going to Canada', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

DROP TABLE IF EXISTS `vacancy`;
CREATE TABLE IF NOT EXISTS `vacancy` (
  `vacancy_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vacancies` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`vacancy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`vacancy_id`, `name`, `number_of_vacancies`, `last_date`, `school_id`, `session`) VALUES
(3, 'Position for class teachers', '4', '2019-12-21', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`, `school_id`, `session`) VALUES
(2, 'Toyota', '423', 'Camry', '2', '2019', 'Udemy Sheg', 'License', 'Contact address here', 'description here', 'available', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `type`, `description`, `school_id`, `session`) VALUES
(1, 'about_us', '<p>The Company offers a vision for the future &amp; a practical insight with great knowledge &amp; expertise in finding IT solutions. Our team experts works closely with clients to identify their requirements &amp; thereby develop &amp; implement system automation.</p>\r\n<p><br /> <strong>Our Vision</strong><br /> To develop in a sustained manner &amp; grow as a major IT solution provider for our valuable clients. We converts clients business ideas into new products and applications for their increased productivity &amp; efficiency of managing business process.</p>\r\n<p><br /> <strong>Core Ideas</strong><br /> We plan our tasks to deliver beyond our clients expectations because we believe that information technology should not be limited with mere data entry &amp; information display, instead it should also act as a perfect place for decision making &amp; platform of time saving.</p>\r\n<p><br /> <strong>1. Web experiences.</strong><br /> Website designing requires expertise in designing foundation.</p>\r\n<p><br /> <strong>2. Powerful options.</strong><br /> Your website needs to be more than just an online brochure; it must be a one &ndash;stop introduction of your business.</p>\r\n<p><br /> <strong>3. Easy customization.</strong><br /> All our sofrware are powered by a team of technical engineers proactively ensure smooth, and easy to customised software.<br /> We convert clients&rsquo; business ideas into new products &amp; application for their increased productivity &amp; efficiency of the office/ management staff.<br /> Our ultimate goal is our customer satisfaction to the extent to which customers are happy with the products &amp; services provided by us.</p>', 0, ''),
(2, 'video_link', 'https://www.youtube.com/watch?v=CPfCjdPXs8I', 0, ''),
(3, 'mission', 'Mission Here', 0, ''),
(4, 'vission', 'Vision here', 0, ''),
(5, 'goal', 'Goal Here', 0, ''),
(6, 'testimony_message', 'Testimony here', 0, ''),
(7, 'map_code', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15833.51073243513!2d3.4504242!3d7.1976769!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x889602d56f8c46ef!2sOptimum%20Linkup%20Computers!5e0!3m2!1sen!2sng!4v1579274552904!5m2!1sen!2sng\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 0, ''),
(8, 'facebook_like_code', 'https://www.facebook.com/optimumlinkup', 0, ''),
(9, 'contact_message', 'We are home to 1,500 students (aged 12 to 16) and 100 expert faculty and staff community representing over 40 different nations. We are proud of our international and multi-cultural ethos, the way our community collaborates to make a difference. Our world-renowned curriculum is built on the best. NEW', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
