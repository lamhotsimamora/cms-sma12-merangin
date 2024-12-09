-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.1.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_cms_2024
CREATE DATABASE IF NOT EXISTS `db_cms_2024` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_cms_2024`;

-- Dumping structure for table db_cms_2024.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.admins: ~0 rows (approximately)
INSERT INTO `admins` (`id_admin`, `username`, `password`, `token`) VALUES
	(2, 'admin', '3221232f297a57a5a743894a0e4a801fc332', '');

-- Dumping structure for table db_cms_2024.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id_feedback` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL COMMENT '1=Sangat Baik\r\n2=Baik\r\n3=Kurang Baik\r\n4=Sangat Buruk\r\n',
  PRIMARY KEY (`id_feedback`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.feedback: ~12 rows (approximately)
INSERT INTO `feedback` (`id_feedback`, `rating`) VALUES
	(1, 3),
	(2, 3),
	(3, 1),
	(4, 2),
	(5, 4),
	(6, 2),
	(7, 4),
	(8, 4),
	(9, 1),
	(10, 1),
	(11, 3),
	(12, 2);

-- Dumping structure for table db_cms_2024.footer
CREATE TABLE IF NOT EXISTS `footer` (
  `id_footer` int NOT NULL AUTO_INCREMENT,
  `footer` varchar(255) NOT NULL,
  PRIMARY KEY (`id_footer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.footer: ~0 rows (approximately)
INSERT INTO `footer` (`id_footer`, `footer`) VALUES
	(1, 'Copyright@2024 | PDR Technology');

-- Dumping structure for table db_cms_2024.header
CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.header: ~0 rows (approximately)
INSERT INTO `header` (`id_header`, `foto`) VALUES
	(1, 'dw4nuh3f3gujb4vb8m1udzk49-gzgi255m4ahw41eozdluzbwt0.png');

-- Dumping structure for table db_cms_2024.map
CREATE TABLE IF NOT EXISTS `map` (
  `id_map` int NOT NULL AUTO_INCREMENT,
  `location` text NOT NULL,
  PRIMARY KEY (`id_map`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.map: ~0 rows (approximately)
INSERT INTO `map` (`id_map`, `location`) VALUES
	(1, 'SMA Negeri 12 Merangin');

-- Dumping structure for table db_cms_2024.navbar
CREATE TABLE IF NOT EXISTS `navbar` (
  `id_navbar` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_navbar`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.navbar: ~4 rows (approximately)
INSERT INTO `navbar` (`id_navbar`, `title`, `link`) VALUES
	(16, 'Profile', 'profile'),
	(24, 'Prestasi', 'prestasi'),
	(25, 'Keuangan', 'keuangan'),
	(26, 'About', 'about');

-- Dumping structure for table db_cms_2024.navbar_child
CREATE TABLE IF NOT EXISTS `navbar_child` (
  `id_navbar_child` int NOT NULL AUTO_INCREMENT,
  `id_navbar` int NOT NULL,
  `title_child` varchar(255) NOT NULL,
  `link_child` varchar(255) NOT NULL,
  PRIMARY KEY (`id_navbar_child`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.navbar_child: ~7 rows (approximately)
INSERT INTO `navbar_child` (`id_navbar_child`, `id_navbar`, `title_child`, `link_child`) VALUES
	(3, 13, 'Visi Misi', 'visi-misi'),
	(4, 13, 'Mantap', 'ready'),
	(8, 14, 'Visi Misi', 'visi-misi'),
	(9, 16, 'Sejarah', 'sejarah'),
	(10, 16, 'Visi Misi', 'visi-misi'),
	(11, 16, 'Kepala Sekolah', 'kepala-sekolah'),
	(12, 16, 'Struktur Organisasi', 'struktur-organisasi');

-- Dumping structure for table db_cms_2024.page
CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.page: ~11 rows (approximately)
INSERT INTO `page` (`id_page`, `name`, `slug`, `description`, `date_created`, `time_created`) VALUES
	(10, 'Profile', 'profile', '-', '2022-09-05', '12:54:00'),
	(13, 'Contact', 'contact', '<p>Contact</p>\n', '2022-10-06', '12:20:00'),
	(14, 'About', 'about', '<p>Labore irure adipisicing nostrud id non occaecat ad. Minim ex ex enim commodo aliqua cupidatat cupidatat Lorem exercitation deserunt consequat incididunt sunt. Pariatur enim ullamco nisi non non dolor aliqua. Dolore incididunt quis voluptate ut fugiat ', '2022-10-06', '12:20:00'),
	(15, 'Social Media', 'social-media', '<p>Facebook</p>\n', '2023-08-25', '19:35:00'),
	(16, 'Visi-Misi', 'visi-misi', '<p>Labore irure adipisicing nostrud id non occaecat ad. Minim ex ex enim commodo aliqua cupidatat cupidatat Lorem exercitation deserunt consequat incididunt sunt. Pariatur enim ullamco nisi non non dolor aliqua. Dolore incididunt quis voluptate ut fugiat ', '2024-02-21', '19:44:00'),
	(20, 'Sejarah', 'sejarah', '<p>Ea consequat fugiat officia laboris Lorem occaecat eiusmod ullamco sint. Lorem enim adipisicing do consectetur mollit ea nisi ex exercitation tempor proident sit ullamco anim. Esse laboris non et excepteur ipsum. Est ullamco cillum consectetur exercita', '2024-12-08', '18:49:00'),
	(21, 'Visi Misi', 'visi-misi', '<div style="background-color:#1e1e1e; color:#d4d4d4; font-family:Consolas,\'Courier New\',monospace; font-size:14px; font-weight:normal; line-height:19px; white-space:pre">\n<div><span style="color:#d4d4d4">Ea consequat fugiat officia laboris Lorem occaecat ', '2024-12-08', '18:50:00'),
	(22, 'Kepala Sekolah', 'kepala-sekolah', '<p>Ea consequat fugiat officia laboris Lorem occaecat eiusmod ullamco sint. Lorem enim adipisicing do consectetur mollit ea nisi ex exercitation tempor proident sit ullamco anim. Esse laboris non et excepteur ipsum. Est ullamco cillum consectetur exercita', '2024-12-08', '18:52:00'),
	(23, 'Struktur Organisasi', 'struktur-organisasi', '<p>Ea consequat fugiat officia laboris Lorem occaecat eiusmod ullamco sint. Lorem enim adipisicing do consectetur mollit ea nisi ex exercitation tempor proident sit ullamco anim. Esse laboris non et excepteur ipsum. Est ullamco cillum consectetur exercita', '2024-12-08', '18:52:00'),
	(24, 'Prestasi', 'prestasi', '<p>Ea consequat fugiat officia laboris Lorem occaecat eiusmod ullamco sint. Lorem enim adipisicing do consectetur mollit ea nisi ex exercitation tempor proident sit ullamco anim. Esse laboris non et excepteur ipsum. Est ullamco cillum consectetur exercita', '2024-12-08', '18:54:00'),
	(25, 'Keuangan', 'keuangan', '<p>Ea consequat fugiat officia laboris Lorem occaecat eiusmod ullamco sint. Lorem enim adipisicing do consectetur mollit ea nisi ex exercitation tempor proident sit ullamco anim. Esse laboris non et excepteur ipsum. Est ullamco cillum consectetur exercita', '2024-12-08', '18:55:00');

-- Dumping structure for table db_cms_2024.partners
CREATE TABLE IF NOT EXISTS `partners` (
  `id_partner` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_partner`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.partners: ~0 rows (approximately)
INSERT INTO `partners` (`id_partner`, `title`, `image`, `link`) VALUES
	(9, 'Kominfo', 'g68qk92lbncjuiu73ghg41230-xjbpmykq9xp29ppbukuma4x87.png', 'https://www.kominfo.go.id/');

-- Dumping structure for table db_cms_2024.post
CREATE TABLE IF NOT EXISTS `post` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.post: ~4 rows (approximately)
INSERT INTO `post` (`id_post`, `title`, `description`, `cover`, `date_created`, `time_created`) VALUES
	(10, 'Lorem Ipsum Dot Semir', '<p>Duis dolor quis mollit quis non ipsum enim ut deserunt. Laboris anim enim laborum quis laborum. Deserunt officia esse culpa velit nisi magna enim adipisicing dolor deserunt magna quis cillum.</p>\n', '02k0gaqqmc6laugtexsofgks4-wag8cz3otfrofmmdezfxg1qdr.jpg', '2022-10-06', '12:16:00'),
	(11, 'Lorem Ipsum Belanda', '<p>Nisi nostrud id anim sit dolore esse incididunt qui cillum dolore aute occaecat non reprehenderit.</p>\n', 'hxo5etwfjsv0307xrsswwjcyy-ovtgvja0fimo6wpsappxng4vd.jpg', '2022-10-06', '12:40:00'),
	(12, 'Lorem Ipsum Dot Semir', '<p>Lorem ipsum dot semir bla bla</p>\n', '9ahme30rxxxw9hrakl11tvg87-dzdqcaq5120jt809wtw1bpd7o.jpg', '2022-10-06', '13:25:00'),
	(14, 'SMA 12 Merangin', '<p>SMA 12 Merangin</p>\n', '1siw4ijz6eml8clf0lfwr4bmy-6esnlq46yub6p972c40y6at11.jpg', '2024-12-08', '13:57:00');

-- Dumping structure for table db_cms_2024.schools
CREATE TABLE IF NOT EXISTS `schools` (
  `id_school` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_school`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.schools: ~0 rows (approximately)
INSERT INTO `schools` (`id_school`, `nama`, `alamat`, `hp`, `foto`) VALUES
	(1, 'SMA 12 ', 'Merangin', '0812-7446-6477', 'urblhcnzaa1kwl8yagg71ad1e-qblqokabg4f77cxpisrkvjtb2.png');

-- Dumping structure for table db_cms_2024.slideshows
CREATE TABLE IF NOT EXISTS `slideshows` (
  `id_slideshow` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`id_slideshow`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.slideshows: ~3 rows (approximately)
INSERT INTO `slideshows` (`id_slideshow`, `image`, `title`, `description`, `date_created`) VALUES
	(5, 'kzy3ixttcfc8w7cyw9gmsuj09-acgos0xw8ygpnzbk923p0loay.jpg', 'Profile', 'Enim eiusmod laborum commodo culpa culpa incididunt minim reprehenderit excepteur in laborum dolor consequat velit. Est mollit amet nulla do. Ullamco tempor commodo cillum fugiat labore eiusmod commodo et deserunt ut et. Esse anim eiusmod veniam et deseru', '2022-09-05'),
	(6, 'cmmr3dck7qwy3hdeupnnp012y-6ddlqcsri56w2mcscmc0il49j.JPG', 'Home', 'Enim eiusmod laborum commodo culpa culpa incididunt minim reprehenderit excepteur in laborum dolor consequat velit. Est mollit amet nulla do. Ullamco tempor commodo cillum fugiat labore eiusmod commodo et deserunt ut et. Esse anim eiusmod veniam et deseru', '2022-10-06'),
	(7, '10feaaf3u31t0kfxi4dm3yycs-9k0xf0bh9o0p44yyilzvq6jry.jpg', 'SMA 12 Merangin', 'Lorem Ipsum', '2024-12-08');

-- Dumping structure for table db_cms_2024.social_media
CREATE TABLE IF NOT EXISTS `social_media` (
  `id_social_media` int NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  PRIMARY KEY (`id_social_media`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.social_media: ~0 rows (approximately)
INSERT INTO `social_media` (`id_social_media`, `facebook`, `instagram`, `twitter`, `youtube`) VALUES
	(1, 'https://facebook.com/sma12-merangin', 'https://www.instagram.com/sma12merangin', 'https://x.com/sma12merangin', 'https://youtube.com/sma12merangin');

-- Dumping structure for table db_cms_2024.teachers
CREATE TABLE IF NOT EXISTS `teachers` (
  `id_teacher` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ket` text NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.teachers: ~3 rows (approximately)
INSERT INTO `teachers` (`id_teacher`, `name`, `ket`, `foto`) VALUES
	(3, 'Pak Budiman', 'Guru IPS', 'giqmlj68t68icn1znqd542azz-pvm0gwnry9os3hehc56rpcuix.jpg'),
	(4, 'Pak Apriyanto', 'Guru Matematika', 'cnsx9mxe8htv0vjucb4qlzfqk-dgogfzslgrkrkmzy7l2x0rgpm.jpg'),
	(6, 'Pak Tritunggal', 'Guru Komputer', 'fm4u2d7l7gzx6fuoddn5kmh6w-p6rrql8u91rcg5yyysluhtndq.jpg');

-- Dumping structure for table db_cms_2024.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_cms_2024.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
