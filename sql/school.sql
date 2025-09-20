-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2023 at 01:52 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `id` int NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_syllabus`
--

INSERT INTO `academic_syllabus` (`id`, `academic_syllabus_code`, `title`, `class_id`, `subject_id`, `description`, `uploader_type`, `uploader_id`, `session`, `timestamp`, `file_name`, `school_id`) VALUES
(5, '3f48dce', 'CBSE', 3, 14, 'Class 1 syllabus ', 'admin', '1', '2023-2024', 1682222143, 'CBSE-Syllabus-for-Class-1-Maths-2023-24.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `accountant_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `accountant_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `session`, `school_id`, `login_status`) VALUES
(16, 'Accountant', '09f94645c8', '2019-08-27', 'Male', 'Muslim', 'o+', 'Address Accountant', '+912345667', 'accountant@accountant.com', 'facebook', 'twitter', 'googleplu', 'linkedin', 'PhD', 'Married', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `club_id` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `name`, `colour`, `icon`, `club_id`, `school_id`, `session`, `description`, `date`) VALUES
(2, 'Success thoughts', 'info', 'fa-amazon', 7, 0, '', 'For the young bright students', '2023-04-18'),
(3, 'Great minds', 'success', 'fa-apple', 1, 0, '', 'New kiddies', '2023-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `level` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `school_id`, `session`, `level`, `login_status`) VALUES
(1, 'Administrator', 'admin@admin.com', '07133445656', '8cb2237d0679ca88db6464eac60da96345513964', 1, '', '1', '0'),
(9, 'School Instructor', 'professor@professor.com', '+1564783934', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 0, '', '2', '1'),
(10, 'Student1', 'student1@student1.com', '+916379046008', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 0, '', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_role_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `dashboard` int NOT NULL,
  `manage_academics` int NOT NULL,
  `manage_employee` int NOT NULL,
  `manage_student` int NOT NULL,
  `manage_attendance` int NOT NULL,
  `download_page` int NOT NULL,
  `manage_parent` int NOT NULL,
  `manage_alumni` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`admin_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`, `school_id`, `session`) VALUES
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, ''),
(7, 9, 1, 1, 1, 1, 1, 1, 1, 1, 0, ''),
(8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
CREATE TABLE IF NOT EXISTS `alumni` (
  `alumni_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `g_year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `club_id` int NOT NULL,
  `interest` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `name`, `sex`, `phone`, `email`, `address`, `profession`, `marital_status`, `g_year`, `club_id`, `interest`, `school_id`, `session`) VALUES
(4, 'Shanker', 'Male', '+916379046008', 'shanker@shanker.com', 'Erode', 'Engineer', 'married', '2022-09-04', 1, 'Reading', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `applicant_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vacancy_id` int NOT NULL,
  `apply_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`application_id`, `applicant_name`, `vacancy_id`, `apply_date`, `status`, `school_id`, `session`) VALUES
(2, 'School Application', 3, '1567965600', 'interviewed', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `class_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `name`, `subject_id`, `class_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`, `school_id`, `session`) VALUES
(6, 'Maths', 14, 3, 2, 'Mathematics addititon test', 'CBSE Class 1 Maths Add the following.pdf', 'pdf', '2018-08-19', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`, `school_id`) VALUES
(39, 1, 45, '2019-12-20', '2019-2020', 0),
(40, 1, 45, '2019-12-22', '2019-2020', 0),
(41, 0, 23, '2019-12-28', '2019-2020', 0),
(44, 1, 45, '2020-01-28', '2019-2020', 0),
(45, 2, 46, '2020-01-28', '2019-2020', 0),
(46, 1, 45, '2020-03-08', '2019-2020', 0),
(47, 2, 46, '2020-03-08', '2019-2020', 0),
(48, 1, 45, '2023-04-05', '', 0),
(49, 1, 54, '2023-04-18', '2023-2024', 0),
(50, 1, 66, '2023-04-18', '2023-2024', 0),
(51, 1, 78, '2023-04-18', '2023-2024', 0),
(52, 1, 50, '2023-04-23', '2023-2024', 0),
(53, 1, 62, '2023-04-23', '2023-2024', 0),
(54, 1, 74, '2023-04-23', '2023-2024', 0),
(55, 1, 84, '2023-04-23', '2023-2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `award_id` int NOT NULL AUTO_INCREMENT,
  `award_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gift` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` longtext NOT NULL,
  `school_id` int NOT NULL,
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
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `account_holder_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`, `school_id`, `session`) VALUES
(2, 'Instructor1', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(3, 'Instructor2', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(4, 'Instructor3', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(5, 'Instructor4', '1234567', 'Payoneer or paypal', 'USA', 0, ''),
(6, 'Instructorone', '565612341234', 'SBI', 'KMD', 0, ''),
(7, '34', '34', '234as', 'wer', 0, ''),
(8, 'Instructortwo', '565612341234', 'SBI', 'Erode', 0, ''),
(9, 'MrY', '32323323323765', '234as', 'B.E /CSE', 0, ''),
(10, 'MrY', '32323323323765', '234as', 'B.E /CSE', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_table`
--

DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE IF NOT EXISTS `banner_table` (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `banner_image` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `banner_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_table`
--

INSERT INTO `banner_table` (`banner_id`, `banner_image`, `banner_text`, `school_id`, `session`) VALUES
(1, 'sample.jpg', '       Meet our able, gallant and most competent teachers that will help your children/child to attain higher success in life. We teach to become a creative thinker and to be useful to the society.....', 0, ''),
(3, 'banner1.jpg', 'Our teaching methodology emphasizes developing critical thinking skills and fostering a sense of social responsibility, ensuring that our students become valuable contributors to society.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `book_category_id` int NOT NULL,
  `isbn` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject_id` int NOT NULL,
  `quantity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `class_id` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `book_category_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `book_request_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `return_date` int NOT NULL,
  `request_date` int NOT NULL,
  `status` longtext NOT NULL,
  `student_id` int NOT NULL,
  `school_id` int NOT NULL,
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
  `circular_id` int NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`circular_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`circular_id`, `title`, `reference`, `content`, `date`, `school_id`, `session`) VALUES
(4, 'Conference', '18081', 'All must meet in the auditorium', '2023-04-18', 0, ''),
(5, 'sports meet', '44r489', 'Sports intercompetition', '2023-04-18', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
  `class_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`, `school_id`, `session`) VALUES
(2, 'Nursery One', 'Nursery 1', 1, 0, ''),
(3, 'Standard 1', 'Std1', 2, 0, ''),
(4, 'Standard 2', 'std2', 3, 0, ''),
(5, 'Standard 3', 'std3', 4, 0, ''),
(6, 'Standard 4', 'std4', 5, 0, ''),
(7, 'Standard 5', 'std5', 6, 0, ''),
(8, 'Standard 6', 'std6', 7, 0, ''),
(9, 'Standard 7', 'std7', 8, 0, ''),
(10, 'Standard 8', 'std8', 9, 0, ''),
(11, 'Standard 9', 'std9', 10, 0, ''),
(12, 'Standard 10', 'std10', 11, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

DROP TABLE IF EXISTS `class_routine`;
CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `time_start` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_start_min` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_end_min` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `day` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `club_id` int NOT NULL AUTO_INCREMENT,
  `club_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `se` longtext NOT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`, `date`, `school_id`, `se`) VALUES
(1, 'Jet club', 'This is for those who love science.', '2019-08-25', 0, ''),
(4, 'Art', 'This is for the students who has creativity', '2023-04-07', 0, ''),
(5, 'Eco', 'The students who is eager to protect the environment can enroll in this club.', '2023-04-07', 0, ''),
(6, 'Cookery', 'The students who loves cooking can enroll in this club.', '2023-04-07', 0, ''),
(7, 'Innovative', 'The students who have innovative ideas can enroll in this club', '2023-04-07', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_table`
--

DROP TABLE IF EXISTS `contact_table`;
CREATE TABLE IF NOT EXISTS `contact_table` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `visitor_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `visitor_email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `visitor_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_table`
--

INSERT INTO `contact_table` (`contact_id`, `visitor_name`, `visitor_email`, `visitor_content`, `school_id`, `session`) VALUES
(2, 'Charan', 'sarannpl2001@gmail.com', 'About the infrastructure of the school', 0, ''),
(3, 'charan', 'saranshanker.19cs092@nandhaengg.org', 'Want to visit headmaster', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`, `school_id`, `session`) VALUES
(2, 'Bursar', 'aed7c689d676c7c', 0, ''),
(5, 'CSE', 'f0db8420712c64f', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_id` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`, `school_id`, `session`) VALUES
(5, 'Tutorial', 2, 0, ''),
(4, 'KVV', 2, 0, ''),
(6, 'Student', 2, 0, ''),
(14, 'Teacher', 5, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hostel_room_id` int NOT NULL,
  `hostel_category_id` int NOT NULL,
  `capacity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`, `school_id`, `session`) VALUES
(2, 'Wiz Hostel', 2, 3, '200', 'Address for hostel location', 'Address for hostel location', 0, ''),
(3, 'Block A', 2, 3, '5', 'KVV Hostel', 'Karur', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `enquiry_id` int NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_category`
--

DROP TABLE IF EXISTS `enquiry_category`;
CREATE TABLE IF NOT EXISTS `enquiry_category` (
  `enquiry_category_id` int NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`enquiry_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquiry_category_id`, `category`, `purpose`, `whom`, `school_id`, `session`) VALUES
(3, 'This is for ID 3 information.', 'Payment', 'Tutorial', 0, ''),
(4, 'School information regarding.', 'School fees information', 'Just edited now', 0, ''),
(6, 'Development', 'Increase students attention', 'Admin', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`, `school_id`, `session`) VALUES
(1, 'First Term Examination', 'First Term', '2023-10-30', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE IF NOT EXISTS `exam_question` (
  `exam_question_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`exam_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`exam_question_id`, `name`, `teacher_id`, `subject_id`, `description`, `class_id`, `file_name`, `file_type`, `timestamp`, `status`, `school_id`, `session`) VALUES
(5, 'Maths addition test', '2', '14', 'Review', '3', 'math_add.txt', 'txt', '2023-04-23', '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
CREATE TABLE IF NOT EXISTS `expense_category` (
  `expense_category_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `general_message_id` int NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`general_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_message`
--

INSERT INTO `general_message` (`general_message_id`, `message`, `user_id`, `school_id`, `session`) VALUES
(7, 'This is the student page sir', 'student-45', 0, ''),
(6, 'I am the admin', 'admin-1', 0, ''),
(5, 'am here all the time sir', 'student-45', 0, ''),
(4, 'hey', 'admin-1', 0, ''),
(3, 'ok', 'student-45', 0, ''),
(2, 'hey', 'admin-1', 0, ''),
(1, 'Hey cool man, are you there to chat with me', 'admin-1', 0, ''),
(8, 'instructor1', 'teacher-1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

DROP TABLE IF EXISTS `group_message`;
CREATE TABLE IF NOT EXISTS `group_message` (
  `group_message_id` int NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `sender` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `read_status` int DEFAULT NULL,
  `attached_file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`group_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_message_thread`
--

DROP TABLE IF EXISTS `group_message_thread`;
CREATE TABLE IF NOT EXISTS `group_message_thread` (
  `group_message_thread_id` int NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `members` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `group_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_message_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `school_id` int NOT NULL,
  PRIMARY KEY (`group_message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostel_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hostel_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `name`, `hostel_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(15, 'Hostel School', '78e39debb4', '2019-08-27', 'Male', 'Muslim', 'o+', 'This is the new address for the new hostel manager.', '+912345667', 'hostel@hostel.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_category`
--

DROP TABLE IF EXISTS `hostel_category`;
CREATE TABLE IF NOT EXISTS `hostel_category` (
  `hostel_category_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `hostel_room_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `house_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `name`, `description`, `school_id`, `session`) VALUES
(1, 'Purple House', 'This is for students in purple house', 0, ''),
(5, 'Topaz', 'This is for super little stars', 0, ''),
(6, 'Emerald', 'This is for young girls', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hrm`
--

DROP TABLE IF EXISTS `hrm`;
CREATE TABLE IF NOT EXISTS `hrm` (
  `hrm_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hrm_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`hrm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `hrm`
--

INSERT INTO `hrm` (`hrm_id`, `name`, `hrm_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(15, 'School hrm', '414bbf2d2a', '2019-08-27', 'Male', 'Christianity', 'B+', 'This is the newly added human resources manager address', '+912345667', 'hrm@hrm.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `invoice_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `student_id` int NOT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `discount` int NOT NULL,
  `amount_paid` int NOT NULL,
  `due` int NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_number`, `student_id`, `title`, `description`, `amount`, `discount`, `amount_paid`, `due`, `creation_timestamp`, `payment_method`, `status`, `year`, `school_id`) VALUES
(12, '1413972', 84, 'First term fees', 'Term', 48000, 0, 48000, 0, '2023-04-23', '1', 1, '2023-2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int NOT NULL AUTO_INCREMENT,
  `phrase` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `english` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `arabic` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `french` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `korea` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `blabla` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40559 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
  `language_list_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`language_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `leave_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
CREATE TABLE IF NOT EXISTS `librarian` (
  `librarian_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `librarian_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`librarian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `librarian_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`, `school_id`, `session`) VALUES
(13, 'School Librarian', '42ed75d802', '2019-08-26', 'Male', 'Muslim', 'O-', 'Address', '+912345667', 'librarian@librarian.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `class_id` int NOT NULL,
  `class_score1` int NOT NULL,
  `class_score2` int NOT NULL,
  `class_score3` int NOT NULL,
  `exam_score` int NOT NULL,
  `comment` longtext NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `class_score1`, `class_score2`, `class_score3`, `exam_score`, `comment`, `school_id`, `session`) VALUES
(1, 45, 5, 1, 2, 10, 9, 8, 70, 'Good performance.', 0, ''),
(2, 45, 4, 1, 2, 10, 7, 9, 69, 'Excellent performance.', 0, ''),
(3, 46, 5, 1, 2, 10, 10, 4, 60, 'good', 0, ''),
(4, 46, 4, 1, 2, 0, 0, 0, 0, '', 0, ''),
(5, 0, 5, 1, 2, 0, 0, 0, 0, '', 0, ''),
(6, 0, 4, 1, 2, 0, 0, 0, 0, '', 0, ''),
(7, 46, 6, 1, 2, 0, 0, 0, 0, '', 0, ''),
(8, 46, 7, 1, 2, 0, 0, 0, 0, '', 0, ''),
(9, 46, 8, 1, 2, 0, 0, 0, 0, '', 0, ''),
(10, 46, 9, 1, 2, 0, 0, 0, 0, '', 0, ''),
(11, 0, 6, 1, 2, 0, 0, 0, 0, '', 0, ''),
(12, 0, 7, 1, 2, 0, 0, 0, 0, '', 0, ''),
(13, 0, 8, 1, 2, 0, 0, 0, 0, '', 0, ''),
(14, 0, 9, 1, 2, 0, 0, 0, 0, '', 0, ''),
(15, 45, 6, 1, 2, 0, 0, 0, 0, '', 0, ''),
(16, 45, 7, 1, 2, 0, 0, 0, 0, '', 0, ''),
(17, 45, 8, 1, 2, 0, 0, 0, 0, '', 0, ''),
(18, 45, 9, 1, 2, 0, 0, 0, 0, '', 0, ''),
(19, 50, 10, 1, 3, 9, 9, 9, 69, 'Excellent', 0, ''),
(20, 50, 11, 1, 3, 8, 8, 8, 65, 'V.Good', 0, ''),
(21, 50, 12, 1, 3, 9, 9, 9, 70, 'Excellent', 0, ''),
(22, 50, 13, 1, 3, 9, 7, 8, 70, 'Excellent', 0, ''),
(23, 50, 14, 1, 3, 10, 10, 10, 70, 'Excellent', 0, ''),
(24, 0, 10, 1, 3, 0, 0, 0, 0, '', 0, ''),
(25, 0, 11, 1, 3, 0, 0, 0, 0, '', 0, ''),
(26, 0, 12, 1, 3, 0, 0, 0, 0, '', 0, ''),
(27, 0, 13, 1, 3, 0, 0, 0, 0, '', 0, ''),
(28, 0, 14, 1, 3, 0, 0, 0, 0, '', 0, ''),
(29, 84, 10, 1, 3, 10, 10, 9, 70, 'Excellent', 0, ''),
(30, 84, 11, 1, 3, 9, 10, 8, 68, 'V.Good', 0, ''),
(31, 84, 12, 1, 3, 9, 9, 9, 62, 'Good', 0, ''),
(32, 84, 13, 1, 3, 8, 8, 8, 60, 'Good', 0, ''),
(33, 84, 14, 1, 3, 9, 9, 9, 59, 'Fair', 0, ''),
(34, 62, 14, 1, 3, 10, 10, 9, 69, 'V.Good', 0, ''),
(35, 74, 14, 1, 3, 10, 10, 10, 70, 'Excellent', 0, ''),
(36, 50, 0, 1, 3, 0, 0, 0, 0, '', 0, ''),
(37, 62, 0, 1, 3, 0, 0, 0, 0, '', 0, ''),
(38, 74, 0, 1, 3, 0, 0, 0, 0, '', 0, ''),
(39, 84, 0, 1, 3, 0, 0, 0, 0, '', 0, ''),
(40, 62, 10, 1, 3, 8, 9, 8, 64, 'Good', 0, ''),
(41, 74, 10, 1, 3, 9, 9, 9, 68, 'Excellent', 0, ''),
(42, 62, 11, 1, 3, 9, 9, 9, 70, 'Excellent', 0, ''),
(43, 74, 11, 1, 3, 9, 9, 9, 69, 'Good', 0, ''),
(44, 62, 12, 1, 3, 8, 8, 8, 67, 'V.Good', 0, ''),
(45, 74, 12, 1, 3, 9, 9, 8, 70, 'Excellent', 0, ''),
(46, 62, 13, 1, 3, 9, 9, 9, 70, 'Excellent', 0, ''),
(47, 74, 13, 1, 3, 10, 10, 10, 10, 'Excellent', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `name`, `class_id`, `subject_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`, `school_id`, `session`) VALUES
(3, 'Syllabus', 3, 14, 2, 'Syllabus for the upcoming year', 'CBSE-Syllabus.pdf', 'pdf', '2023-04-19', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sender` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `attached_file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE IF NOT EXISTS `message_thread` (
  `message_thread_id` int NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sender` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `reciever` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_message_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE IF NOT EXISTS `noticeboard` (
  `noticeboard_id` int NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`noticeboard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`noticeboard_id`, `title`, `location`, `timestamp`, `description`, `school_id`, `session`) VALUES
(3, 'Second meeting coming up soon', 'Auditorium', 1575136800, 'The meeting is coming up soon. Ensure you are fully prepared.', 0, ''),
(4, 'Parent Teacher Association Meeting.', 'Ontario Location', 1575050400, 'This is the new updated information as regards the meeting.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

DROP TABLE IF EXISTS `online_exam`;
CREATE TABLE IF NOT EXISTS `online_exam` (
  `online_exam_id` int NOT NULL AUTO_INCREMENT,
  `code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `exam_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_start` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `duration` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `minimum_percentage` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `instruction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `running_year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`online_exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_exam`
--

INSERT INTO `online_exam` (`online_exam_id`, `code`, `title`, `class_id`, `section_id`, `subject_id`, `exam_date`, `time_start`, `time_end`, `duration`, `minimum_percentage`, `instruction`, `status`, `running_year`, `school_id`) VALUES
(19, '5645ef6', 'first tern exam', 3, 7, 10, '1682188200', '18:38', '20:14', '5760', '50', 'hiu', 'active', '2023-2024', 0),
(20, '96cc436', 'first sem', 2, 7, 10, '1681929000', '18:00', '23:00', '18000', '50', '', 'published', '2023-2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_result`
--

DROP TABLE IF EXISTS `online_exam_result`;
CREATE TABLE IF NOT EXISTS `online_exam_result` (
  `online_exam_result_id` int NOT NULL AUTO_INCREMENT,
  `online_exam_id` int NOT NULL,
  `student_id` int NOT NULL,
  `answer_script` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `obtained_mark` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exam_started_timestamp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`online_exam_result_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_exam_result`
--

INSERT INTO `online_exam_result` (`online_exam_result_id`, `online_exam_id`, `student_id`, `answer_script`, `obtained_mark`, `status`, `exam_started_timestamp`, `result`) VALUES
(1, 7, 45, '[{\"question_bank_id\":\"6\",\"submitted_answer\":\"[\\\"hi\\\"]\",\"correct_answers\":\"[\\\"\\\"]\"}]', '0', 'submitted', '1681963538', 'fail');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`, `school_id`, `session`) VALUES
(4, 'Mr. Parent', 'parent@parent.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '+912345667', 'Karur', 'Learners', '0', 0, ''),
(7, 'Charan', 'saranshanker.19cs092@nandhaengg.org', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '+916379046008', 'Kodumudi', 'Business', '0', 0, ''),
(8, 'Charan\'s Dad', 'sarannpl2001@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '+916379046008', 'Kerala', 'Business', '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `expense_category_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `year` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `discount`, `timestamp`, `year`, `school_id`) VALUES
(11, '5', 'Purchase of school Books', 'expense', '', '', '3', 'Purchase of school Books<br>', '4000', '', 2020, '2019-2020', 0),
(27, '', 'First term fees', 'income', '12', '84', '1', 'Term', '13000', '', 1683484200, '2023-2024', 0),
(19, '5', 'Computer science books', 'expense', '', '', '1', 'All the latest tech knowledge categories', '28000', '', 2023, '2023-2024', 0),
(20, '5', 'Comics for Kids', 'expense', '', '', '1', 'Kiddies books for fun calsses.', '18000', '', 2023, '2023-2024', 0),
(25, '', 'First term fees', 'income', '12', '84', '1', 'Term', '48000', '0', 1682186400, '2023-2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
CREATE TABLE IF NOT EXISTS `payroll` (
  `payroll_id` int NOT NULL AUTO_INCREMENT,
  `payroll_code` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `allowances` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `deductions` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `payroll_code`, `user_id`, `allowances`, `deductions`, `date`, `status`, `school_id`, `session`) VALUES
(4, 'c94d9d7', '1', '[{\"type\":\"A\",\"amount\":\"1000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"200\"},{\"type\":\"B\",\"amount\":\"700\"}]', '10,2019', '0', 0, ''),
(3, 'a8c4ae9', '1', '[{\"type\":\"Food\",\"amount\":\"5000\"},{\"type\":\"House\",\"amount\":\"2000\"}]', '[{\"type\":\"Tax1\",\"amount\":\"1000\"},{\"type\":\"Tax2\",\"amount\":\"500\"}]', '9,2019', '1', 0, ''),
(5, '75c1f3d', '1', '[{\"type\":\"A\",\"amount\":\"2000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"500\"},{\"type\":\"B\",\"amount\":\"500\"}]', '12,2019', '1', 0, ''),
(6, '31bccf0', '1', '[{\"type\":\"A\",\"amount\":\"10\"}]', '[{\"type\":\"A\",\"amount\":\"5\"}]', '3,2020', '0', 0, ''),
(7, 'f193874', '6', '[{\"type\":\"Salary\",\"amount\":\"15000\"}]', '[]', '4,2023', '1', 0, ''),
(2, '5384f45', '2', '[]', '[]', '4,2023', '1', 0, ''),
(9, 'cbcf6d2', '2', '[{\"type\":\"Bonus\",\"amount\":\"2000\"}]', '[]', '3,2023', '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `question_bank_id` int NOT NULL AUTO_INCREMENT,
  `online_exam_id` int NOT NULL,
  `question_title` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number_of_options` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `correct_answers` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mark` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`question_bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`question_bank_id`, `online_exam_id`, `question_title`, `type`, `number_of_options`, `options`, `correct_answers`, `mark`) VALUES
(1, 1, 'Solve the equation of 12**12', 'fill_in_the_blanks', '', '', '[\"solve the sum\"]', '100'),
(2, 1, 'Is this reliable 12+12', 'true_false', '', '', 'false', '100'),
(3, 2, 'Solve the 12**12', 'fill_in_the_blanks', '', '', '[\"\"]', '100'),
(4, 3, 'solve 12222', 'fill_in_the_blanks', '', '', '[\"\"]', '100'),
(5, 6, 'jsdnj', 'fill_in_the_blanks', '', '', '[\"jndjneid\"]', '123'),
(6, 7, 'hi', 'fill_in_the_blanks', '', '', '[\"\"]', '22'),
(7, 8, 'e', 'true_false', '', '', 'true', '90'),
(8, 8, 'e', 'true_false', '', '', 'true', '90'),
(9, 11, 'Maths', 'fill_in_the_blanks', '', '', '[\"\"]', '100'),
(10, 14, '12*12', 'fill_in_the_blanks', '', '', '[\"\"]', '20'),
(11, 15, 'tr', 'true_false', '', '', 'true', '33'),
(12, 16, 'maths', 'true_false', '', '', 'true', '60'),
(13, 17, 'Hitler said the fault', 'true_false', '', '', 'true', '20'),
(14, 18, 'hitler died?', 'true_false', '', '', 'true', '20'),
(15, 19, 'hitler', 'true_false', '', '', 'true', '50'),
(16, 20, 'hi', 'true_false', '', '', 'true', '30');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int NOT NULL AUTO_INCREMENT,
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
  `section_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`, `school_id`, `session`) VALUES
(7, 'Class A', 'A', 3, 2, 0, ''),
(6, 'Class B', 'B', 2, 1, 0, ''),
(5, 'Class A', 'A', 2, 1, 0, ''),
(8, 'Class B', 'B', 3, 2, 0, ''),
(9, 'Class A', 'A', 4, 3, 0, ''),
(10, 'Class B', 'B', 4, 3, 0, ''),
(11, 'Class A', 'A', 5, 4, 0, ''),
(12, 'Class B', 'B', 5, 4, 0, ''),
(13, 'Class A', 'A', 6, 5, 0, ''),
(14, 'Class B', 'B', 6, 5, 0, ''),
(15, 'Class A', 'A', 7, 6, 0, ''),
(16, 'Class B', 'B', 7, 6, 0, ''),
(17, 'Class A', 'A', 8, 7, 0, ''),
(18, 'Class B', 'B', 8, 7, 0, ''),
(19, 'Class A', 'A', 9, 8, 0, ''),
(20, 'Class B', 'B', 9, 8, 0, ''),
(21, 'Class C', 'C', 9, 8, 0, ''),
(22, 'Class A', 'A', 10, 9, 0, ''),
(23, 'Class B', 'B', 10, 9, 0, ''),
(24, 'Class C', 'C', 10, 9, 0, ''),
(25, 'Class A', 'A', 11, 10, 0, ''),
(26, 'Class B', 'B', 11, 10, 0, ''),
(27, 'Class C', 'C', 11, 10, 0, ''),
(28, 'Class A', 'A', 12, 11, 0, ''),
(29, 'Class B', 'B', 12, 11, 0, ''),
(30, 'Class C', 'C', 12, 11, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'KARUR VIVEGAM VIDHYALAYA HIGH SCHOOL'),
(2, 'system_title', 'Karur Vivegam Vidhyalaya High School '),
(3, 'address', 'Guziliamparai, D.Gudalur, Dindigul, 624620, Tamil Nadu, India'),
(4, 'phone', '+91 97511 38389'),
(6, 'currency', 'Rs'),
(7, 'system_email', 'kvvhss@gmail.com'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(16, 'skin_colour', 'default'),
(21, 'session', '2023-2024'),
(22, 'footer', '                Developed by Team-5 Computers. All Right Reserved (2023)'),
(116, 'paypal_email', 'kvvhss@gmail.com'),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"on\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(122, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
CREATE TABLE IF NOT EXISTS `sms_settings` (
  `sms_setting_id` int NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
(15, 'active_sms_gateway', 'clickatell', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_category`
--

DROP TABLE IF EXISTS `social_category`;
CREATE TABLE IF NOT EXISTS `social_category` (
  `social_category_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `age` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `place_birth` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `m_tongue` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `city` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `state` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nationality` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ps_attended` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ps_address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ps_purpose` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_study` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_of_leaving` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `am_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tran_cert` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dob_cert` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mark_join` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `physical_h` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `father_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mother_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `section_id` int NOT NULL,
  `parent_id` int NOT NULL,
  `roll` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `transport_id` int NOT NULL,
  `dormitory_id` int NOT NULL,
  `house_id` int NOT NULL,
  `student_category_id` int NOT NULL,
  `club_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `card_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `issue_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expire_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dormitory_room_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `more_entries` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `house_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`, `school_id`) VALUES
(45, 'Student1', '09/30/2003', '16', 'Trichy', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Erode', 'Tamil Nadu', 'Indian', '+916379046008', 'student1@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2022-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 5, 7, '5bf8161', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 1),
(46, 'Sheg ', '01/07/2003', '17', 'erode', 'female', 'Tamil', 'Muslim', 'B+', 'Sheg Address', 'Karur\r\n\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'sarannpl2001@gmail.com', 'Previous school attended', 'The address of previous school', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-24', '2011-08-26', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '7bdc9ce', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 0),
(50, 'Student2', '09/30/2003', '16', 'Trichy', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'student2@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '3', 0, 4, '5bf8162', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 1),
(51, 'Student3', '09/30/2003', '16', 'Karur', 'female', 'Telugu', 'Muslim', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'student3@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '5bf8163', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(52, 'Student4', '09/30/2003', '16', 'Karur', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'student4@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '5', 0, 4, '5bf8164', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(53, 'Student5', '09/30/2003', '16', 'Dindugal', 'female', 'Hindi', 'Muslim', 'B+', 'Address', 'Erode\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'student5@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 0, 4, '5bf8165', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(54, 'Student6', '09/30/2003', '16', 'Nilambur', 'female', 'Hindi', 'Muslim', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'student6@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '7', 0, 7, '5bf8166', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(55, 'Student7', '09/30/2003', '16', 'Dindugal', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Erode\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'student7@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '8', 0, 4, '5bf8167', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(56, 'Student8', '09/30/2003', '16', 'Palayam', 'female', 'Hindi', 'Muslim', 'B+', 'Address', 'Karur\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'student8@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '9', 0, 4, '5bf8168', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(57, 'Student9', '09/30/2003', '16', 'Dindugal', 'female', 'Telugu', 'Muslim', 'B+', 'Address', 'Erode\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'student9@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '10', 0, 4, '5bf8169', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(58, 'Student10', '09/30/2003', '16', 'Tirupur', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Karur\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'student10@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '11', 0, 4, '5bf8170', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(59, 'Student11', '09/30/2003', '16', 'Dindugal', 'female', 'Kannada', 'Muslim', 'B+', 'Address', 'Erode', 'Tamil Nadu', 'Indian', '+916379046008', 'student11@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '12', 28, 4, '5bf8171', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 1),
(60, 'Akshan', '09/30/2003', '16', 'Tirupur', 'male', 'Tamil', 'Hindu', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'akshan@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 5, 4, '5bf8172', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(61, 'Brindha', '01/07/2003', '17', 'Coimbatore', 'female', 'Tamil', 'Hindu', 'B+', 'Sheg Address', 'Erode', 'Tamil Nadu', 'Indian', '+916379046008', 'brindha@student.com', 'Previous school attended', 'The address of previous school', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-24', '2011-08-26', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '7bdc9cs', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 0),
(62, 'Calvin', '09/30/2003', '16', 'Dindugal', 'male', 'Telugu', 'Christeen', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'calvin@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '3', 0, 4, '5bf8173', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(63, 'Dhakshanya', '09/30/2003', '16', 'Erode', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Erode', 'Tamil Nadu', 'Indian', '+916379046008', 'dhakshanya@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '5bf8174', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(64, 'Elakiya', '09/30/2003', '16', 'Dindugal', 'female', 'kannada', 'Hindu', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'elakiya@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '5', 0, 4, '5bf8175', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(65, 'Fathima', '09/30/2003', '16', 'Erode', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Erode', 'Tamil Nadu', 'Indian', '+916379046008', 'fathima@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 0, 4, '5bf8176', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(66, 'Hamisha', '09/30/2003', '16', 'Coimbatore', 'female', 'Tamil', 'Muslim', 'B+', 'Address', 'Karur', 'Tamil Nadu', 'Indian', '+916379046008', 'hamisha@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '7', 0, 4, '5bf8177', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(67, 'Jane', '09/30/2003', '16', 'Dindugal', 'female', 'Tamil', 'Christeen', 'B+', 'Address', 'Erode\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'jane@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '8', 0, 4, '5bf8178', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(68, 'Kathir', '09/30/2003', '16', 'Karur', 'male', 'Tamil', 'Hindu', 'B+', 'Address', 'Karur\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'kathir@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '9', 0, 4, '5bf8179', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(69, 'Manish', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'Erode\r\n', 'Tamil Nadu', 'Indian', '+916379046008', 'manish@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '10', 0, 4, '5bf8180', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(70, 'Nila', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Hindu', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'nila@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '11', 0, 4, '5bf8181', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(71, 'prathiba', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'prathipa@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '12', 29, 4, '5bf8182', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(72, 'Akhil', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'akhil@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 5, 4, '5bf8183', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(73, 'Bashid', '01/07/2003', '17', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Sheg Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'bashid@student.com', 'Previous school attended', 'The address of previous school', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-24', '2011-08-26', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '7bdc9ss', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 0),
(74, 'Karthi', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'karthi@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '3', 0, 4, '5bf8184', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(75, 'Yamini', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'yamini@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '4', 0, 4, '5bf8185', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(76, 'Fitha Fathima', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'fitha@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '5', 0, 4, '5bf8186', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(77, 'Athul', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'athul@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '6', 0, 4, '5bf8187', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(78, 'Shakeeb', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'shakeep@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '7', 0, 4, '5bf8188', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(79, 'Rishin', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'rishin@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '8', 0, 4, '5bf8189', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(80, 'Jeeva', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'jeeva@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '9', 0, 4, '5bf8190', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(81, 'Anand', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'anand@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '10', 0, 4, '5bf8191', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(82, 'Sugi', '09/30/2003', '16', 'Tirupur', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'sugi@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '11', 0, 4, '5bf8192', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '0', 1),
(83, 'Varun', '09/30/2003', '16', 'Erode', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Tamil Nadu', 'Indian', '+916379046008', 'varun@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '12', 29, 4, '5bf8193', 0, 2, 1, 2, 1, '2022-2023', '', '', '', '', '', '1', 1),
(84, 'Charan', '04/23/2010', '13', 'Coimbatore', 'male', 'Malayalam', 'Hindu', 'B+', 'Palayam', 'Dindugal', 'TamilNadu', 'indian', '+916379046008', 'charan@charan.com', 'VVMS', 'Muthur', 'Business', '7', '2023-04-19', '2023-04-24', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '3', 0, 8, 'd6c3c8e', 0, 2, 5, 2, 7, '2023-2024', '', '', '', '', '', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_category`
--

DROP TABLE IF EXISTS `student_category`;
CREATE TABLE IF NOT EXISTS `student_category` (
  `student_category_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `school_id`, `session`) VALUES
(5, 'English', 2, 12, 0, ''),
(4, 'Tamil', 2, 13, 0, ''),
(7, 'Science', 2, 14, 0, ''),
(8, 'Social', 2, 15, 0, ''),
(9, 'Maths', 2, 16, 0, ''),
(10, 'English', 3, 12, 0, ''),
(11, 'Tamil', 3, 13, 0, ''),
(12, 'Science', 3, 14, 0, ''),
(13, 'Social', 3, 15, 0, ''),
(14, 'Maths', 3, 16, 0, ''),
(42, 'Maths', 5, 16, 0, ''),
(41, 'Social', 5, 15, 0, ''),
(40, 'Science', 5, 14, 0, ''),
(39, 'Tamil', 5, 13, 0, ''),
(38, 'English', 5, 12, 0, ''),
(37, 'Maths', 4, 16, 0, ''),
(36, 'Social', 4, 15, 0, ''),
(35, 'Science', 4, 14, 0, ''),
(34, 'Tamil', 4, 13, 0, ''),
(33, 'English', 4, 12, 0, ''),
(43, 'Maths', 6, 16, 0, ''),
(44, 'Social', 6, 15, 0, ''),
(45, 'Science', 6, 14, 0, ''),
(46, 'Tamil', 6, 13, 0, ''),
(47, 'English', 6, 12, 0, ''),
(48, 'Maths', 7, 16, 0, ''),
(49, 'Social', 7, 15, 0, ''),
(50, 'Science', 7, 14, 0, ''),
(51, 'Tamil', 7, 13, 0, ''),
(52, 'English', 7, 12, 0, ''),
(53, 'Physics', 8, 18, 0, ''),
(54, 'Chemistry', 8, 19, 0, ''),
(55, 'Biology', 8, 20, 0, ''),
(56, 'Economics', 8, 21, 0, ''),
(57, 'Geography', 8, 22, 0, ''),
(58, 'History', 8, 23, 0, ''),
(59, 'English', 8, 12, 0, ''),
(60, 'Tamil', 8, 13, 0, ''),
(61, 'Maths', 8, 16, 0, ''),
(62, 'Physics', 9, 18, 0, ''),
(63, 'Chemistry', 9, 19, 0, ''),
(64, 'Biology', 9, 20, 0, ''),
(65, 'Economics', 9, 21, 0, ''),
(66, 'Geography', 9, 22, 0, ''),
(67, 'History', 9, 23, 0, ''),
(68, 'English', 9, 12, 0, ''),
(69, 'Tamil', 9, 13, 0, ''),
(70, 'Maths', 9, 16, 0, ''),
(71, 'Physics', 10, 18, 0, ''),
(72, 'Chemistry', 10, 19, 0, ''),
(73, 'Biology', 10, 20, 0, ''),
(74, 'Economics', 10, 21, 0, ''),
(75, 'Geography', 10, 22, 0, ''),
(76, 'History', 10, 23, 0, ''),
(77, 'English', 10, 12, 0, ''),
(78, 'Tamil', 10, 13, 0, ''),
(79, 'Maths', 10, 16, 0, ''),
(80, 'Physics', 11, 18, 0, ''),
(81, 'Chemistry', 11, 19, 0, ''),
(82, 'Biology', 11, 20, 0, ''),
(83, 'Economics', 11, 21, 0, ''),
(84, 'Geography', 11, 22, 0, ''),
(85, 'History', 11, 23, 0, ''),
(86, 'English', 11, 12, 0, ''),
(87, 'Tamil', 11, 13, 0, ''),
(88, 'Maths', 11, 16, 0, ''),
(89, 'Physics', 12, 18, 0, ''),
(90, 'Chemistry', 12, 19, 0, ''),
(91, 'Biology', 12, 20, 0, ''),
(92, 'Economics', 12, 21, 0, ''),
(93, 'Geography', 12, 22, 0, ''),
(94, 'History', 12, 23, 0, ''),
(95, 'English', 12, 12, 0, ''),
(96, 'Tamil', 12, 13, 0, ''),
(97, 'Maths', 12, 16, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_table`
--

DROP TABLE IF EXISTS `subscriber_table`;
CREATE TABLE IF NOT EXISTS `subscriber_table` (
  `subscriber_id` int NOT NULL AUTO_INCREMENT,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`subscriber_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber_table`
--

INSERT INTO `subscriber_table` (`subscriber_id`, `email`, `school_id`, `session`) VALUES
(7, 'clohithchandru@gmail.com', 0, ''),
(10, 'newsletter@gmail.com', 0, ''),
(11, 'sarannpl2001@gmail.com', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `religion` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `twitter` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `googleplus` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linkedin` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `qualification` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_id` int NOT NULL,
  `designation_id` int NOT NULL,
  `date_of_joining` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `joining_salary` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `date_of_leaving` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `bank_id` int NOT NULL,
  `login_status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`, `school_id`, `session`) VALUES
(1, 'Instructor1', '1', 'a672bc0', '1990-08-19', 'male', 'Hindu', 'O', 'Kodumudi', '+916379046008', 'instructor@instructor.com', 'instructorFB', 'twitterFB', 'GP', 'admin@admin.com', 'M.E', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 4, '2023-03-30', '30000', 1, '2023-03-30', 6, '0', 0, ''),
(2, 'Instructor2', '1', '2376125', '1992-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor2@instructor.com', 'instructorFB', 'twitterFB', 'GP', 'admin@admin.com', 'M.E', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 5, '2022-03-12', '60000', 1, '2022-03-12', 8, '1', 0, ''),
(3, 'Instructor3', '2', '731fd1d', '2018-08-19', 'male', 'hindu', 'b', 'Kodumudi', '+916379046008', 'instructor3@instructor.com', 'ui', 'yu', 'yu', 'yu', 'M.E', 'Married', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 4, '0004-03-12', '12345', 1, '0005-04-23', 9, '', 0, ''),
(4, 'Instructor4', '1', 'eb6d0f1', '2018-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor4@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '0', 0, ''),
(5, 'Instructor5', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor5@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(6, 'Instructor6', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor6@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '0', 0, ''),
(7, 'Instructor7', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor7@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(8, 'Instructor8', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor8@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(9, 'Instructor9', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor9@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(10, 'Instructor10', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor10@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(11, 'Instructor11', '1', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'instructor11@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(12, 'English Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'english@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '0', 0, ''),
(13, 'Tamil Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'tamil@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(14, 'Science Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'science@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(15, 'Social Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'social@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(16, 'Maths Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'maths@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '1', 0, ''),
(18, 'Physics Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'physics@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(19, 'Chemistry Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'chemistry@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(20, 'Biology Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'biology@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(21, 'Economics Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'economics@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(22, 'Geography Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'geography@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, ''),
(23, 'History Professor', '2', 'eb6d0f1', '2000-08-19', 'male', 'Hindu', 'B', 'Kodumudi', '+916379046008', 'history@instructor.com', '', '', '', 'admin@admin.com', 'B.Ed', 'Single', 'instructor_resume', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 5, 14, '67890-05-04', '56789', 1, '0078-06-23', 10, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `testimony_table`
--

DROP TABLE IF EXISTS `testimony_table`;
CREATE TABLE IF NOT EXISTS `testimony_table` (
  `testimony_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`testimony_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimony_table`
--

INSERT INTO `testimony_table` (`testimony_id`, `parent_id`, `content`, `status`, `school_id`, `session`) VALUES
(2, 4, 'Good school all the time', 'Approved', 0, ''),
(4, 4, 'This is testimony', 'Approved', 0, ''),
(5, 7, 'Very Good School with experienced teachers!', 'Pending', 0, ''),
(6, 7, 'Trusted by parents', 'Pending', 0, ''),
(7, 8, 'Good place to join!', 'Pending', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `transport_route_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `route_fare` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
CREATE TABLE IF NOT EXISTS `transport_route` (
  `transport_route_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
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
  `vacancy_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number_of_vacancies` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_date` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`vacancy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`vacancy_id`, `name`, `number_of_vacancies`, `last_date`, `school_id`, `session`) VALUES
(3, 'Position for class teachers', '4', '2023-12-21', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`, `school_id`, `session`) VALUES
(2, 'Toyota', '423', 'Camry', '2', '2019', 'Sheg', 'License', 'Contact address here', 'description here', 'available', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `school_id` int NOT NULL,
  `session` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `type`, `description`, `school_id`, `session`) VALUES
(1, 'about_us', '<p style=\"text-align: justify;\">KARUR&nbsp; VIVEGAM VIDHYALAYA HIGH SCHOOL, D.GUDALUR was established in 2014 and it is managed by the Pvt. Unaided. It is located in Rural area. It is located in GUZILIAMPARAI block of DINDIGUL district of Tamil Nadu.</p>\r\n<p style=\"text-align: justify;\"><br /> <strong>Our School</strong><br />&nbsp; &nbsp;Welcome to our school! We are a dedicated community of educators, staff, and students working together to create a positive and enriching learning environment. Our goal is to help each student achieve their full potential and prepare them for a successful future. Our school offers a wide range of academic programs and extracurricular activities to engage and challenge students at all levels. We believe in providing a well-rounded education that fosters intellectual curiosity, critical thinking, creativity, and collaboration. Our faculty members are highly qualified and passionate about teaching. They bring a wealth of knowledge and experience to the classroom and are committed to helping students succeed. Our staff members are also an integral part of our school community, providing support and assistance to ensure that our school runs smoothly and efficiently. At our school, we value diversity and inclusivity. We strive to create a welcoming and accepting environment where all students feel safe and respected. We believe that every student has something unique and valuable to contribute, and we encourage them to explore their interests and talents. We are proud of our school\'s achievements and are constantly striving to improve. We believe in continuous learning and are always looking for new ways to enhance our programs and services. We welcome feedback from our students, parents, and community members and are committed to addressing any concerns or issues that arise. Thank you for choosing our school. We look forward to working with you to provide the best possible education for your child.</p>', 0, ''),
(2, 'video_link', 'https://youtu.be/KwtGSk9XzCo', 0, ''),
(3, 'mission', '\"Our school is committed to providing a challenging and supportive learning environment that empowers students to reach their full potential. Through a rigorous and engaging curriculum, we strive to foster critical thinking, creativity, and a lifelong love of learning in our students.\"', 0, ''),
(4, 'vission', '\"Our school is a vibrant community where every student is empowered to reach their full potential. We strive to foster a love of learning and a passion for discovery in all of our students, while instilling in them the values of respect, kindness, and responsibility.\"', 0, ''),
(5, 'goal', 'Implement a reading program that targets struggling readers and provides them with targeted support.\r\nProvide professional development opportunities for teachers to improve their ability to teach literacy skills.', 0, ''),
(6, 'testimony_message', '\"I am a former student of KVV School, and I can honestly say that my time there was transformative. From the moment I stepped into the classroom, I felt a sense of belonging and purpose that I had never experienced before. The teachers were passionate and dedicated, and they challenged me to think deeply and critically about the world around me.\"', 0, ''),
(7, 'map_code', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250818.1955211893!2d77.96280361696529!3d10.808684504387369!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3baa17be69fc72eb%3A0x6c9bfc2b332bfcbb!2sKARUR%20VIVEGAM%20VIDHYALAYA%20HIGH%20SCHOOL%2CD.GUDALUR!5e0!3m2!1sen!2sin!4v1680855985864!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 0, ''),
(8, 'facebook_like_code', 'https://www.facebook.com/profile.php?id=100071942927407', 0, ''),
(9, 'contact_message', 'We are home to 500 students (aged 5 to 16) and 40 expert faculty and staff community  We are proud of our international and multi-cultural ethos, the way our community collaborates to make a difference. Our world-renowned curriculum is built on the best. NEW', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
