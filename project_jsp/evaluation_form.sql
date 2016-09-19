-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 09:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_table`
--

CREATE TABLE `answer_table` (
  `id` int(11) NOT NULL,
  `student_info_student_code` varchar(10) NOT NULL,
  `Answer` int(11) DEFAULT NULL,
  `subjects_info_subjects_code` varchar(10) NOT NULL,
  `content_content_index` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer_table`
--

INSERT INTO `answer_table` (`id`, `student_info_student_code`, `Answer`, `subjects_info_subjects_code`, `content_content_index`) VALUES
(208, '5621207017', 5, ' 4211421', '1'),
(209, '5621207017', 4, ' 4211421', '2'),
(210, '5621207017', 4, ' 4211421', '3'),
(211, '5621207017', 4, ' 4211421', '4'),
(212, '5621207017', 4, ' 4211421', '5'),
(213, '5621207017', 4, ' 4211421', '6'),
(214, '5621207017', 4, ' 4211421', '7'),
(215, '5621207017', 4, ' 4211421', '8'),
(216, '5621207017', 4, ' 4211421', '9'),
(217, '5621207017', 4, ' 4211421', '10'),
(218, '5621207017', 4, ' 4211421', '11'),
(219, '5621207017', 4, ' 4211421', '12'),
(220, '5621207017', 4, ' 4211421', '13'),
(221, '5621207017', 4, ' 4211421', '14'),
(222, '5621207017', 4, ' 4211421', '15'),
(223, '5621207017', 4, ' 4211421', '16'),
(224, '5621207017', 4, ' 4211421', '17'),
(225, '5621207017', 4, ' 4211421', '18'),
(226, '5621207017', 4, ' 4211421', '19'),
(227, '5621207017', 4, ' 4211421', '20'),
(228, '5621207017', 4, ' 4211421', '21'),
(229, '5621207017', 4, ' 4211421', '22'),
(230, '5621207017', 3, ' 4211421', '23'),
(231, '5621207017', 4, ' 4211421', '24'),
(232, '5621207017', 4, ' 4211421', '25'),
(233, '5621207017', 4, ' 4211421', '26'),
(234, '5621207017', 4, ' 4211421', '27'),
(235, '5621207017', 4, ' 4211421', '28'),
(236, '5621207017', 4, ' 4211421', '29'),
(237, '5621207017', 5, '4211310', '1'),
(238, '5621207017', 4, '4211310', '2'),
(239, '5621207017', 4, '4211310', '3'),
(240, '5621207017', 4, '4211310', '4'),
(241, '5621207017', 4, '4211310', '5'),
(242, '5621207017', 4, '4211310', '6'),
(243, '5621207017', 4, '4211310', '7'),
(244, '5621207017', 4, '4211310', '8'),
(245, '5621207017', 4, '4211310', '9'),
(246, '5621207017', 3, '4211310', '10'),
(247, '5621207017', 4, '4211310', '11'),
(248, '5621207017', 4, '4211310', '12'),
(249, '5621207017', 4, '4211310', '13'),
(250, '5621207017', 4, '4211310', '14'),
(251, '5621207017', 4, '4211310', '15'),
(252, '5621207017', 4, '4211310', '16'),
(253, '5621207017', 3, '4211310', '17'),
(254, '5621207017', 4, '4211310', '18'),
(255, '5621207017', 4, '4211310', '19'),
(256, '5621207017', 3, '4211310', '20'),
(257, '5621207017', 4, '4211310', '21'),
(258, '5621207017', 4, '4211310', '22'),
(259, '5621207017', 3, '4211310', '23'),
(260, '5621207017', 4, '4211310', '24'),
(261, '5621207017', 4, '4211310', '25'),
(262, '5621207017', 4, '4211310', '26'),
(263, '5621207017', 4, '4211310', '27'),
(264, '5621207017', 4, '4211310', '28'),
(265, '5621207017', 3, '4211310', '29'),
(266, '5621207017', 5, '4211418', '1'),
(267, '5621207017', 4, '4211418', '2'),
(268, '5621207017', 4, '4211418', '3'),
(269, '5621207017', 4, '4211418', '4'),
(270, '5621207017', 4, '4211418', '5'),
(271, '5621207017', 4, '4211418', '6'),
(272, '5621207017', 3, '4211418', '7'),
(273, '5621207017', 4, '4211418', '8'),
(274, '5621207017', 4, '4211418', '9'),
(275, '5621207017', 1, '4211418', '10'),
(276, '5621207017', 1, '4211418', '11'),
(277, '5621207017', 1, '4211418', '12'),
(278, '5621207017', 1, '4211418', '13'),
(279, '5621207017', 2, '4211418', '14'),
(280, '5621207017', 1, '4211418', '15'),
(281, '5621207017', 1, '4211418', '16'),
(282, '5621207017', 1, '4211418', '17'),
(283, '5621207017', 2, '4211418', '18'),
(284, '5621207017', 1, '4211418', '19'),
(285, '5621207017', 1, '4211418', '20'),
(286, '5621207017', 1, '4211418', '21'),
(287, '5621207017', 1, '4211418', '22'),
(288, '5621207017', 2, '4211418', '23'),
(289, '5621207017', 1, '4211418', '24'),
(290, '5621207017', 1, '4211418', '25'),
(291, '5621207017', 1, '4211418', '26'),
(292, '5621207017', 1, '4211418', '27'),
(293, '5621207017', 1, '4211418', '28'),
(294, '5621207017', 1, '4211418', '29');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `idcontent` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `subject_category_id` int(11) NOT NULL,
  `content_index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`idcontent`, `content`, `subject_category_id`, `content_index`) VALUES
(1, 'รับรู้ในคุณค่าและคุณธรรม จริยธรรม เสียสละ และซื่อสัตย์สุจริต', 1, 1),
(2, 'มีวินัย ตรงเวลา และความรับชอบต่อตนเอง วิชาชีพและสังคม', 1, 2),
(3, 'มีภาวะความป็นผู้นำและผู้ตาม สามารถทำงานเป็นทีมและสามารถแก้ไขข้อขัดแย้งและลำดับความสำคัญ', 1, 3),
(4, 'เคารพสิทธิและรับฟังความคิดเห็นของผู้อื่น รวมทั้งเคารพในคุณค่าและศักดิ์ศรีของความเป็นมนุษย์', 1, 4),
(5, 'ปฏิบัติตามกฎระเบียบและข้อบังคับต่างๆ ขององค์กรและสังคม', 1, 5),
(6, 'สามารถวิเคราะห์ผลกระทบ ทางคุณธรรมจากการใช้คอมพิวเตอร์ต่อบุคคล องค์กรและสังคม', 1, 6),
(7, 'มีจรรยาบรรณทางวิชาการและวิชาชีพ', 1, 7),
(8, 'มีความรู้และความเข้าใจเกี่ยวกับหลักการและทฤษฎีที่สำคัญในเนื้อหาสาขาวิชาที่ศึกษา', 2, 8),
(9, 'สามารถวิเคราะห์ปัญหา เข้าใจและอธิบายความต้องการทางคอมพิวเตอร์ รวมทั้งประยุกต์ความรู้ ทักษะ และการใช้เครื่องมือที่เหมาะสมกับการแก้ไขปัญหา', 2, 9),
(10, 'สามารถวิเคราะห์ ออกแบบ ติดตั้ง ปรับปรุงและ/หรือประเมินระบบองค์ประกอบต่างๆ ของระบบคอมพิวเตอร์ให้ได้ตรงตามข้อกำหนด', 2, 10),
(11, 'สามารถติดตามความก้าวหน้าทางวิชาการและวิวัฒนาการคอมพิวเตอร์ รวมทั้งการนำไปประยุกต์', 2, 11),
(12, 'รู้ เข้าใจและสนใจพัฒนาความรู้ ความชำนาญทางคอมพิวเตอร์อย่างต่อเนื่อง', 2, 12),
(13, 'มีความรู้ในแนวกว้างของสาขาวิชาที่ศึกษา เพื่อให้เล็งเห็นการเปลี่ยนแปลง และเข้าใจผลกระทบของเทคโนโลยีใหม่ๆ ที่เกี่ยวข้อง', 2, 13),
(14, 'มีประสบการณ์ในการพัฒนาและ/หรือการประยุกต์ซอฟต์แวร์ที่ใช้งานได้จริง', 2, 14),
(15, 'สามารถบูรณาการความรู้ในสาขาวิชาที่ศึกษากับความรู้ในศาสตร์อื่นๆ ที่เกี่ยวข้อง', 2, 15),
(16, 'คิดอย่างมีวิจารณญาณอย่างเป็นระบบ', 3, 16),
(17, 'สามารถสืบค้น ตีความ และประเมินสารสนเทศ เพื่อใช้ในการแก้ไขปัญหาอย่างสร้างสรรค์', 3, 17),
(18, 'สามารถรวบรวม ศึกษา วิเคราะห์ และสรุปประเด็นปัญหาและความต้องการ', 3, 18),
(19, 'สามารถประยุกต์ความรู้และทักษะกับการแก้ปัญหาทางคอมพิวเตอร์ได้อย่างเหมาะสม', 3, 19),
(20, 'สามารถสื่อสารทั้งภาษาไทยและภาษาต่างประเทศกลับกลุ่มคนหลากหลายได้', 4, 20),
(21, 'สามารถใช้ความช่วยเหลือและอำนวยความสะดวกในการแก้ปัญหาสถานการณ์ต่างๆ ทั้งในบทบาทของผู้นำ หรือในบทบาทของผู้ร่วมทีมงาน', 4, 21),
(22, 'สามารถใช้ความรู้ในศาสตร์มาชี้นำสังคมในประเด็นที่เหมาะสม', 4, 22),
(23, 'มีความรับผิดชอบในการกระทำของตนเองและรับผิดชอบในงานกลุ่ม', 4, 23),
(24, 'สามารถแสดงความคิดเห็นในการแก้ไขสถาณการณ์ต่างๆ พร้อมทั้งแสดงจุดยืนอย่างพอเหมาะทั้งของตนเองและของกลุ่ม', 4, 24),
(25, 'มีความรับผิดชอบการพัฒนาการเรียนรู้ทั้งของตนเองและทางวิชาชีพอย่างต่อเนื่อง', 4, 25),
(26, 'มีทักษะการใช้เครื่องมือที่จำเป็นที่มีอยู่ในปัจจุบันต่อการทำงานที่เกี่ยวกับคอมพิวเตอร์', 5, 26),
(27, 'สามารถแนะนำประเด็นการแก้ไขปัญหา โดยใช้สารสนเทศทางคณิตศาสตร์หรือการแสดงสถิติประยุกต์ต่อปัญหาที่เกี่ยวข้องอย่างสร้างสรรค์', 5, 27),
(28, 'สามารถสื่อสารอย่างมีประสิทธิภาพทั้งปากเปล่าและการเขียน พร้อมทั้งเลือกใช้รูปแบบของสื่อสารนำเสนอได้อย่างเหมาะสม', 5, 28),
(29, 'สามารถใช้เทคโนโลยีสารสนเทศได้อย่างเหมาะสม', 5, 29);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_code` varchar(10) NOT NULL,
  `student_pass` varchar(20) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `type` int(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_code`, `student_pass`, `student_name`, `type`) VALUES
('', '1', '1', 1),
('0000000000', '069079311', 'ADDMIN', 1),
('5621207017', '24112537', 'นายอภิรัฐ เปรมชนะ', 0),
('5621207055', '24112537', 'chaiya', 0),
('5621207077', '24112537', 'arm', 0),
('5656', '1', '1', 1),
('56566666', '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects_info`
--

CREATE TABLE `subjects_info` (
  `subjects_code` varchar(10) NOT NULL,
  `subjects_name_thai` varchar(45) DEFAULT NULL,
  `subjects_name_eng` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects_info`
--

INSERT INTO `subjects_info` (`subjects_code`, `subjects_name_thai`, `subjects_name_eng`) VALUES
(' 4211421', 'ระบบชาญฉลาด', 'Intelligent Systems'),
('4211301', 'ระบบปฏิบัติการ 1', 'Operating Systems 1'),
('4211310', 'การเขียนโปรแกรมเชิงวัตถุ 2', 'Object-Oriented Programming 2'),
('4211418', 'กราฟิกและการประมวลผลภาพ', 'Graphics and Visual Computing'),
('4211420', 'ความมั่นคงปลอดภัยสารสนเทศ', ' Information Security'),
('4211424', 'สถิติประยุกต์สำหรับวิทยาการคอมพิวเตอร์', 'Applied Statistics for Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `subject_category`
--

CREATE TABLE `subject_category` (
  `id` int(11) NOT NULL,
  `title_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_category`
--

INSERT INTO `subject_category` (`id`, `title_name`) VALUES
(1, 'ผลการเรียนรู้ด้านคุณธรรม จริยธรรม'),
(2, 'ผลการเรียนรู้ด้านความรู้'),
(3, 'ผลการเรียนรู้ด้านทักษะทางปัญญา'),
(4, 'ทักษะความสัมพันธ์ระหว่างบุคคลและความรับผิดชอบ'),
(5, 'ทักษะในการวิเคราะห์เชิงตัวเลข การสื่อสาร และการใช้เทคโนโลยีสารสนเทศ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer_table`
--
ALTER TABLE `answer_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Answer_table_student_info1_idx` (`student_info_student_code`),
  ADD KEY `fk_answer_table_subjects_info1_idx` (`subjects_info_subjects_code`),
  ADD KEY `fk_answer_table_content2_idx` (`content_content_index`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`idcontent`,`content_index`),
  ADD KEY `fk_content_subject_category_idx` (`subject_category_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_code`);

--
-- Indexes for table `subjects_info`
--
ALTER TABLE `subjects_info`
  ADD PRIMARY KEY (`subjects_code`);

--
-- Indexes for table `subject_category`
--
ALTER TABLE `subject_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer_table`
--
ALTER TABLE `answer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `idcontent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `subject_category`
--
ALTER TABLE `subject_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer_table`
--
ALTER TABLE `answer_table`
  ADD CONSTRAINT `fk_Answer_table_student_info1` FOREIGN KEY (`student_info_student_code`) REFERENCES `student_info` (`student_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_answer_table_subjects_info1` FOREIGN KEY (`subjects_info_subjects_code`) REFERENCES `subjects_info` (`subjects_code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_content_subject_category` FOREIGN KEY (`subject_category_id`) REFERENCES `subject_category` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
