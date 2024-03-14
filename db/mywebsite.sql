-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mywebsite
DROP DATABASE IF EXISTS `mywebsite`;
CREATE DATABASE IF NOT EXISTS `mywebsite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mywebsite`;

-- Dumping structure for table mywebsite.abouts
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.abouts: ~0 rows (approximately)
REPLACE INTO `abouts` (`id`, `title`, `description`, `image`, `resume`, `created_at`, `updated_at`) VALUES
	(1, 'About Me', 'Greetings! I\'m Felix, a student on a quest for mastery in the realm of Applied Computer Science at Daystar University. I believe in the power of relentless pursuit and unwavering dedication to one\'s craft.I approach each challenge with a blend of curiosity and determination.<br><br>My journey into the world of technology is driven by a deep-seated passion for exploration and discovery. On emphasis on self-reliance and mastery, I strive to cultivate my skills in coding and problem-solving, knowing that true expertise comes from continuous learning and refinement.', '/uploads/987899808pngwing.com(1).png', '/uploads/772593359calendar-of-activities.pdf', '2024-02-01 18:16:37', '2024-03-07 14:30:12');

-- Dumping structure for table mywebsite.blogs
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.blogs: ~3 rows (approximately)
REPLACE INTO `blogs` (`id`, `image`, `title`, `category`, `description`, `created_at`, `updated_at`) VALUES
	(3, '/uploads/1276456434pxfuel(13).jpg', 'How captive portals work Firefox', 6, '<p>Most captive portals redirect you to a login page or a page where you must agree to an <a href="https://wikipedia.org/wiki/Acceptable_use_policy">Acceptable Use Policy - AUP</a>.\r\n Firefox will make automatic connections to detect these redirects and \r\nwill notify you by indicating that you may need to log into the network.\r\n After doing this, the tab should be closed automatically by Firefox. \r\nOccasionally, it will be kept around to display a message from the \r\nnetwork\'s owners.\r\n</p>', '2024-02-04 04:40:54', '2024-02-04 04:52:25'),
	(8, '/uploads/1182546799pxfuel.jpg', 'Unveiling the Shadows: Exploring the Depths of Halo Season 2', 8, '<p><br>The release of "Halo: Shadows of Fate" marks a significant milestone in the iconic franchise\'s journey, captivating audiences with its blend of intense action, compelling storytelling, and rich world-building. As fans eagerly dive into the second season, titled "Halo: Shadows of Fate," they are greeted with a tapestry of intricate plotlines, complex characters, and breathtaking visuals that push the boundaries of the Halo universe.<br><br>In this comprehensive exploration, we embark on a 1000-word journey to dissect the nuances of Season 2, delving deep into its themes, character arcs, and narrative developments. From the enigmatic Master Chief to the formidable adversaries he faces, we unravel the layers of mystery and intrigue that define this latest installment, offering insights, analysis, and speculation along the way.<br><br>Chapter 1: Setting the Stage<br><br>The opening moments of Season 2 set the stage for an epic adventure, as Master Chief finds himself thrust into a galaxy teetering on the brink of chaos. Against the backdrop of a resurgent Covenant threat and the looming specter of ancient Forerunner technology, our protagonist must navigate a treacherous landscape fraught with danger and deception.<br><br>As we delve into the world-building of "Shadows of Fate," we are treated to stunning vistas, sprawling cityscapes, and awe-inspiring alien landscapes that showcase the visual prowess of the series. From the towering spires of New Mombasa to the desolate beauty of the Ark, each location serves as a canvas upon which the drama of the Halo universe unfolds, immersing viewers in a rich tapestry of sights and sounds.<br><br>Chapter 2: The Evolution of Master Chief<br><br>At the heart of "Halo: Shadows of Fate" lies the enigmatic figure of Master Chief, whose journey of self-discovery takes center stage in Season 2. As he grapples with the weight of his past and the uncertainty of his future, we witness a character in flux, torn between duty and destiny, loyalty and longing.<br><br>Throughout the season, Master Chief\'s character arc undergoes a profound evolution, as he confronts his inner demons and confronts the ghosts of his past. From his complex relationship with Cortana to his uneasy alliance with former enemies, we see a more vulnerable, introspective side of the legendary Spartan, humanizing him in ways we\'ve never seen before.<br><br>Chapter 3: Allies and Adversaries<br><br>As Master Chief embarks on his quest for truth, he is joined by a cast of allies and adversaries who shape his journey in unexpected ways. From the stalwart soldiers of the UNSC to the enigmatic agents of the Banished, each character brings their own unique perspective and motivations to the table, challenging our assumptions and keeping us on the edge of our seats.<br><br>Among the standout characters of Season 2 is the formidable Atriox, leader of the Banished, whose cunning intellect and ruthless ambition make him a formidable foe for Master Chief and his allies. As their paths collide and alliances shift, we are treated to a riveting game of cat and mouse that keeps us guessing until the very end.<br><br>Chapter 4: Themes and Motifs<br><br>At its core, "Halo: Shadows of Fate" explores a myriad of themes and motifs that resonate with audiences on a profound level. From the nature of heroism and sacrifice to the power of redemption and forgiveness, the series grapples with weighty existential questions that transcend the boundaries of the sci-fi genre.<br><br>One of the central themes of Season 2 is the concept of fate and destiny, as characters wrestle with the idea of predestination versus free will. As Master Chief confronts his own mortality and the legacy of his actions, he is forced to confront the choices that define him and the legacy he leaves behind, leading to a poignant exploration of what it means to be human in a universe teetering on the brink of extinction.<br><br>Conclusion:<br><br>In conclusion, "Halo: Shadows of Fate" stands as a testament to the enduring legacy of the Halo franchise, offering fans a thrilling new chapter in the epic saga of Master Chief and the world he inhabits. From its stunning visuals and pulse-pounding action to its complex characters and thought-provoking themes, Season 2 delivers a truly immersive experience that leaves audiences hungry for more. As we eagerly await the next installment, we can\'t help but marvel at the depth and breadth of the Halo universe and the endless possibilities it holds for future adventures.<br></p>', '2024-02-09 04:07:51', '2024-02-09 04:07:51'),
	(9, '/uploads/378837903pxfuel(13).jpg', 'ZeroDay Unveiled: Navigating the Landscape of Cybersecurity Threats', 9, '<p>In "ZeroDay Unveiled," we embark on a journey through the shadowy world of cybersecurity threats, shining a spotlight on one of the most feared and elusive adversaries: the ZeroDay exploit. This groundbreaking exploration delves into the intricate web of vulnerabilities that lurk beneath the surface of our digital infrastructure, exposing the relentless ingenuity of hackers and the ever-present danger they pose to individuals, businesses, and governments alike.<br><br>As we unravel the complexities of the ZeroDay exploit, we uncover the mechanisms by which these stealthy attacks operate, exploiting previously unknown vulnerabilities in software and hardware to wreak havoc on unsuspecting targets. From sophisticated malware campaigns to targeted phishing attacks, the arsenal of tools at the disposal of cybercriminals is vast and ever-evolving, posing a formidable challenge to even the most vigilant defenders.<br><br>But "ZeroDay Unveiled" is more than just a catalog of threats; it\'s a call to action for individuals and organizations to take proactive steps to protect themselves from the looming specter of cyber intrusion. Through expert analysis, practical advice, and real-world case studies, we empower our readers to shore up their defenses, mitigate risk, and safeguard their digital assets against the relentless tide of cyber threats.<br><br>Join us as we peel back the layers of secrecy surrounding the ZeroDay exploit and shine a light on the dark underbelly of the digital world. In a landscape where the stakes have never been higher and the dangers never more real, knowledge is the most powerful weapon we have in the ongoing battle for cybersecurity.<br></p>', '2024-02-09 04:13:04', '2024-02-09 04:14:37');

-- Dumping structure for table mywebsite.blog_categories
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.blog_categories: ~7 rows (approximately)
REPLACE INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(3, 'One Two', 'one-two', '2024-02-04 03:54:20', '2024-02-04 03:54:20'),
	(4, 'Web Development', 'web-development', '2024-02-04 03:54:34', '2024-02-04 03:54:34'),
	(5, 'Graphic Design', 'graphic-design', '2024-02-04 03:54:41', '2024-02-04 03:54:41'),
	(6, 'System Analysis and Design', 'system-analysis-and-design', '2024-02-04 03:54:56', '2024-02-04 03:54:56'),
	(7, 'Philosophy', 'philosophy', '2024-02-04 05:00:09', '2024-02-04 05:00:09'),
	(8, 'Life style', 'life-style', '2024-02-09 04:04:51', '2024-02-09 04:04:51'),
	(9, 'Cyber Security', 'cyber-security', '2024-02-09 04:09:03', '2024-02-09 04:09:03');

-- Dumping structure for table mywebsite.blog_section_settings
DROP TABLE IF EXISTS `blog_section_settings`;
CREATE TABLE IF NOT EXISTS `blog_section_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.blog_section_settings: ~0 rows (approximately)
REPLACE INTO `blog_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
	(1, 'Creative Blog of Post', 'Overcoming Challenges: Desire gives individuals the motivation and courage to confront and overcome challenges. Whether facing formidable opponents on the battlefield or tackling obstacles in life, those with a strong desire are more likely to find creative solutions, adapt to changing circumstances, and persevere until they achieve their objectives.', '2024-02-04 13:59:52', '2024-03-07 15:19:39');

-- Dumping structure for table mywebsite.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.categories: ~6 rows (approximately)
REPLACE INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(9, 'System Analysis and Design', 'system-analysis-and-design', '2024-02-03 08:46:43', '2024-02-03 08:46:43'),
	(12, 'Software Application Development', 'software-application-development', '2024-02-03 08:48:06', '2024-02-03 08:48:06'),
	(15, 'Mobile App Development', 'mobile-app-development', '2024-03-07 14:33:36', '2024-03-07 14:33:36'),
	(16, 'Web Application Development', 'web-application-development', '2024-03-07 14:34:07', '2024-03-07 14:34:07'),
	(17, 'UI/UX Design with Figma', 'uiux-design-with-figma', '2024-03-07 14:34:22', '2024-03-07 14:34:22'),
	(18, 'System Adminstration', 'system-adminstration', '2024-03-07 14:34:51', '2024-03-07 14:34:51');

-- Dumping structure for table mywebsite.contact_section_settings
DROP TABLE IF EXISTS `contact_section_settings`;
CREATE TABLE IF NOT EXISTS `contact_section_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.contact_section_settings: ~0 rows (approximately)
REPLACE INTO `contact_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
	(1, 'Contact Me.', 'Thank you for visiting my portfolio! If you have any questions, opportunities for collaboration, or would simply like to connect, please feel free to reach out to me. I\'d love to hear from you.', '2024-02-05 17:50:24', '2024-03-07 15:20:51');

-- Dumping structure for table mywebsite.experiences
DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.experiences: ~0 rows (approximately)
REPLACE INTO `experiences` (`id`, `image`, `title`, `description`, `phone`, `email`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/835062117pngwing.com(13).png', 'My Experience', 'As a Mobile App Developer at XYZ Tech Solutions, I was responsible for designing and developing innovative mobile applications for both iOS and Android platforms. I collaborated closely with cross-functional teams to deliver high-quality software solutions that met client requirements and exceeded expectations.', '+254795478854', 'feloela101@gmail.com', '2024-02-03 16:38:29', '2024-03-07 15:10:25');

-- Dumping structure for table mywebsite.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table mywebsite.feedback
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.feedback: ~4 rows (approximately)
REPLACE INTO `feedback` (`id`, `name`, `position`, `description`, `created_at`, `updated_at`) VALUES
	(2, 'Jasper Ela', 'System Analyst', 'This is most often the case when using a public Wi-Fi hotspot, but it \r\ncan also be a corporate guest network that prompts you to agree to its \r\nacceptable use policy. Firefox tests if the connection is a captive \r\nportal by regularly connecting to \r\nhttp://detectportal.firefox.com/canonical.html.', '2024-02-03 19:22:30', '2024-02-03 19:23:16'),
	(4, 'Dr. Desmond Evergreen', 'Quantum Systems Analyst', '<p>StartFragment Dr. Evergreen is a brilliant scientist specializing in quantum computing and advanced algorithms. With a keen eye for detail and an insatiable curiosity, he navigates complex datasets and theoretical frameworks to unlock new frontiers in computational science. His work is pivotal in developing cutting-edge technologies for data encryption, artificial intelligence, and quantum teleportation. In addition to his scientific endeavors, Dr. Evergreen is a passionate advocate for STEM education and outreach, inspiring the next generation of innovators through mentorship and public speaking engagements.<br></p>', '2024-02-03 20:41:52', '2024-03-07 15:12:54'),
	(5, 'Xavier Steele', 'Quantum Technologies Analyst', 'Xavier Steele is a brilliant mind in the field of quantum technologies, specializing in the development and analysis of cutting-edge quantum computing systems. With a keen interest in the convergence of physics and computation, Xavier has contributed significantly to advancements in quantum algorithms and cryptographic protocols. Known for his innovative thinking and problem-solving skills, he is a key player in shaping the future landscape of quantum technologies.', '2024-02-03 20:44:04', '2024-02-03 20:44:04');

-- Dumping structure for table mywebsite.feedback_section_settings
DROP TABLE IF EXISTS `feedback_section_settings`;
CREATE TABLE IF NOT EXISTS `feedback_section_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.feedback_section_settings: ~0 rows (approximately)
REPLACE INTO `feedback_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
	(1, 'Feedback', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac ante et velit commodo eleifend. Fusce ullamcorper velit sit amet sapien consequat ultricies. Cras vestibulum libero ac ex sollicitudin, sed viverra justo sagittis. Sed gravida, dui nec consequat luctus, mi ipsum feugiat tellus, ac tincidunt nisi lectus sit amet ligula. Duis hendrerit libero a risus tristique, eget aliquet nulla scelerisque.', '2024-02-03 20:12:24', '2024-03-07 15:17:18');

-- Dumping structure for table mywebsite.footer_contact_infos
DROP TABLE IF EXISTS `footer_contact_infos`;
CREATE TABLE IF NOT EXISTS `footer_contact_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.footer_contact_infos: ~0 rows (approximately)
REPLACE INTO `footer_contact_infos` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
	(1, 'Ati River. Kinanie Ward,  Machakos County', '+254795478854', 'feloela101@gmail.com', '2024-02-06 05:04:16', '2024-02-06 11:18:13');

-- Dumping structure for table mywebsite.footer_help_links
DROP TABLE IF EXISTS `footer_help_links`;
CREATE TABLE IF NOT EXISTS `footer_help_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.footer_help_links: ~3 rows (approximately)
REPLACE INTO `footer_help_links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(2, 'Error 404', '#', '2024-02-06 11:32:22', '2024-02-06 11:32:22'),
	(3, 'Privacy Policy', '#', '2024-02-06 11:32:36', '2024-02-06 11:32:36'),
	(4, 'Documentation', '#', '2024-02-06 11:32:57', '2024-02-06 11:32:57'),
	(5, 'Terms and Conditions', '#', '2024-02-06 11:33:26', '2024-02-06 11:33:26');

-- Dumping structure for table mywebsite.footer_infos
DROP TABLE IF EXISTS `footer_infos`;
CREATE TABLE IF NOT EXISTS `footer_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.footer_infos: ~0 rows (approximately)
REPLACE INTO `footer_infos` (`id`, `info`, `copy_right`, `powered_by`, `created_at`, `updated_at`) VALUES
	(1, 'Thank you for visiting my portfolio!', 'Copyright 2024.', 'Ela Kali Productions', '2024-02-05 20:45:07', '2024-03-07 15:21:31');

-- Dumping structure for table mywebsite.footer_social_links
DROP TABLE IF EXISTS `footer_social_links`;
CREATE TABLE IF NOT EXISTS `footer_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.footer_social_links: ~3 rows (approximately)
REPLACE INTO `footer_social_links` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
	(3, 'fab fa-twitter', 'https://twitter.com', '2024-02-06 11:10:37', '2024-02-06 11:10:37'),
	(4, 'fab fa-facebook-f', 'https://facebook.com', '2024-02-06 11:11:02', '2024-02-06 11:11:02'),
	(5, 'fab fa-whatsapp', 'https://whatsapp.com', '2024-02-06 11:12:17', '2024-02-06 11:12:17'),
	(6, 'fab fa-linkedin-in', 'https://linkedin.com', '2024-02-06 11:12:45', '2024-02-06 11:12:45');

-- Dumping structure for table mywebsite.footer_usefull_links
DROP TABLE IF EXISTS `footer_usefull_links`;
CREATE TABLE IF NOT EXISTS `footer_usefull_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.footer_usefull_links: ~3 rows (approximately)
REPLACE INTO `footer_usefull_links` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(3, 'Blog', '#', '2024-02-06 11:29:20', '2024-02-06 11:29:20'),
	(4, 'About', '#', '2024-02-06 11:29:37', '2024-02-06 11:29:37'),
	(5, 'Home', '#', '2024-02-06 11:29:53', '2024-02-06 11:29:53'),
	(6, 'Portfolio', '#', '2024-02-06 11:30:09', '2024-02-06 11:30:09');

-- Dumping structure for table mywebsite.general_settings
DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.general_settings: ~1 rows (approximately)
REPLACE INTO `general_settings` (`id`, `logo`, `footer_logo`, `favicon`, `created_at`, `updated_at`) VALUES
	(4, '/uploads/1383213145pngwing.com(1).png', '/uploads/1493460126pngwing.com(4).png', '/uploads/1148804468pngwing.com(3).png', '2024-02-08 14:46:58', '2024-02-08 15:22:56');

-- Dumping structure for table mywebsite.heroes
DROP TABLE IF EXISTS `heroes`;
CREATE TABLE IF NOT EXISTS `heroes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.heroes: ~0 rows (approximately)
REPLACE INTO `heroes` (`id`, `title`, `sub_title`, `btn_text`, `btn_url`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Hi, am Felix Eladi', 'Acknowledging that desire is the cornerstone of accomplishment, I am propelled forward by a profound longing to learn, innovate, and transcend boundaries in the ever-evolving landscape of tech. With each challenge embraced and every obstacle conquered', 'Let\'s Code', '#', '/uploads/783592493WhatsApp Image 2024-01-29 at 22.17.26_da2f0054.jpg', '2024-01-27 04:37:46', '2024-03-07 14:10:37');

-- Dumping structure for table mywebsite.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.migrations: ~22 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_01_26_221204_create_heroes_table', 2),
	(6, '2024_01_30_095219_create_typer_titles_table', 3),
	(7, '2024_02_01_071558_create_services_table', 4),
	(9, '2024_02_01_170309_create_abouts_table', 5),
	(12, '2024_02_02_172234_create_categories_table', 6),
	(13, '2024_02_02_194856_create_portfolio_items_table', 6),
	(15, '2024_02_02_220611_create_portfolio_section_settings_table', 7),
	(16, '2024_02_03_133459_create_skill_section_settings_table', 8),
	(18, '2024_02_03_170625_create_skill_items_table', 9),
	(19, '2024_02_03_184810_create_experiences_table', 10),
	(20, '2024_02_03_210413_create_feedback_table', 11),
	(21, '2024_02_03_223316_create_feedback_section_settings_table', 12),
	(22, '2024_02_04_055826_create_blog_categories_table', 13),
	(23, '2024_02_04_064047_create_blogs_table', 14),
	(24, '2024_02_04_092700_create_blog_section_settings_table', 15),
	(25, '2024_02_05_203809_create_contact_section_settings_table', 16),
	(26, '2024_02_05_214841_create_footer_social_links_table', 17),
	(27, '2024_02_05_232228_create_footer_infos_table', 18),
	(28, '2024_02_06_074718_create_footer_contact_infos_table', 19),
	(29, '2024_02_06_081012_create_footer_usefull_links_table', 20),
	(30, '2024_02_06_084442_create_footer_help_links_table', 21),
	(31, '2024_02_06_154828_create_general_settings_table', 22),
	(32, '2024_02_07_203132_create_seo_settings_table', 23);

-- Dumping structure for table mywebsite.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table mywebsite.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table mywebsite.portfolio_items
DROP TABLE IF EXISTS `portfolio_items`;
CREATE TABLE IF NOT EXISTS `portfolio_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.portfolio_items: ~5 rows (approximately)
REPLACE INTO `portfolio_items` (`id`, `image`, `title`, `category_id`, `description`, `client`, `website`, `created_at`, `updated_at`) VALUES
	(13, '/uploads/2136981818pngwing.com(4).png', 'E- Commerce Design', 17, '<p>Custom UI Design: We create bespoke user interface designs tailored to your brand identity, audience preferences, and project goals. From clean and minimalist designs to bold and vibrant layouts, we bring your vision to life with precision and creativity.<br><br>Responsive Design: Our Figma UI designs are optimized for responsiveness, ensuring a seamless experience across devices and screen sizes. Whether it\'s desktop, tablet, or mobile, your interface will adapt flawlessly to provide users with a consistent and intuitive experience.<br><br>Collaborative Design Process: With Figma\'s collaborative features, we involve you in every step of the design process. From initial wireframes to final mockups, you\'ll have real-time access to the design iterations, allowing for feedback and revisions to ensure we exceed your expectations.<br><br>Interactive Prototyping: Using Figma\'s prototyping capabilities, we create interactive prototypes that simulate user interactions and workflows. This allows you to test and validate the usability of the interface before development, saving time and resources in the long run.<br></p>', 'Felo Ela', 'https://www.lipsum.com/', '2024-03-07 14:41:43', '2024-03-07 14:41:43'),
	(14, '/uploads/1975104786pngwing.com(3).png', 'Capture The Flag', 18, '<p>Comprehensive System Management: Our experienced team provides end-to-end system administration services, including server setup and configuration, network management, user access control, and system monitoring. We ensure the smooth operation and security of your IT infrastructure, allowing you to focus on your core business activities.<br><br>Cybersecurity Expertise: We specialize in cybersecurity best practices and techniques to protect your systems from potential threats and vulnerabilities. From implementing firewalls and intrusion detection systems to conducting regular security audits, we take proactive measures to safeguard your data and assets.<br><br>Capture the Flag (CTF) Competitions: Our team has a passion for cybersecurity challenges and actively participates in Capture the Flag (CTF) competitions. These competitions simulate real-world cybersecurity scenarios, allowing us to hone our skills in areas such as network analysis, cryptography, reverse engineering, and web exploitation.<br><br>Training and Workshops: We offer training sessions and workshops on system administration and cybersecurity topics, including CTF techniques and strategies. Whether you\'re looking to enhance your team\'s cybersecurity awareness or develop practical skills for defending against cyber threats, we provide tailored training solutions to meet your needs.<br><br>CTF Event Hosting: We organize and host Capture the Flag (CTF) events for individuals, teams, and organizations looking to test their cybersecurity skills in a competitive environment. Our custom-designed challenges cover a wide range of topics and difficulty levels, providing participants with an opportunity to showcase their expertise and learn from their peers.<br><br>Continuous Learning and Improvement: We stay up-to-date with the latest trends and <br></p>', 'CTF.org', 'https://example.com', '2024-03-07 14:43:58', '2024-03-07 14:43:58'),
	(15, '/uploads/459966721pngwing.com(2).png', 'The Blog', 12, '<p>Briefly introduce the concept of system administration and its importance in maintaining the security and functionality of IT systems.<br>Introduce the exciting world of Capture the Flag (CTF) competitions and how they serve as a platform for cybersecurity enthusiasts to test and hone their skills.<br></p>', 'Ela', 'https://example.com', '2024-03-07 14:46:30', '2024-03-07 14:46:30'),
	(16, '/uploads/1121256140pngwing.com(7).png', 'My Portfolio', 16, '<p>About Me:<br>Provide a more detailed overview of yourself, including your education, work experience, and any relevant certifications or achievements.<br>Share your career objectives and aspirations, as well as what motivates you in your field.<br></p>', 'Jasper', 'https://example.com', '2024-03-07 14:49:18', '2024-03-07 14:53:07'),
	(17, '/uploads/1514024889pngwing.com(5).png', 'Task Manager App', 15, '<p>Showcase your mobile app projects, both personal and professional, that demonstrate your skills and capabilities as a developer.<br>Include a brief description of each app, its purpose, target audience, and the technologies used in its development.<br>Provide screenshots or demo videos of the apps to give visitors a visual representation of your work.<br>If possible, include links to live app stores or repositories where visitors can download or view the apps.<br></p>', 'Felo Ela', 'https://example.com', '2024-03-07 14:51:39', '2024-03-07 14:51:39'),
	(18, '/uploads/2113336478pngwing.com(8).png', 'E- Commerce Design', 9, '<p>Design captivating user interfaces that captivate audiences and drive engagement.<br>Harness the power of visual storytelling to communicate your brand\'s message effectively.<br>Whether it\'s web or mobile, we create interfaces that leave a lasting impression and deliver results.<br></p>', 'Ela Ailo', 'https://example.com', '2024-03-07 14:56:03', '2024-03-07 14:56:03');

-- Dumping structure for table mywebsite.portfolio_section_settings
DROP TABLE IF EXISTS `portfolio_section_settings`;
CREATE TABLE IF NOT EXISTS `portfolio_section_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.portfolio_section_settings: ~0 rows (approximately)
REPLACE INTO `portfolio_section_settings` (`id`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES
	(1, 'My Portfolio', '"Investing is a game of strategy and foresight. Just as in life, those who are able to see beyond the present moment, anticipate trends, and adapt swiftly are the ones who emerge victorious. This portfolio is not merely a collection of assets; it is a reflection of your understanding of the ever-shifting currents of the market and your ability to navigate them with cunning and wisdom."', '2024-02-02 19:22:55', '2024-03-07 14:35:52');

-- Dumping structure for table mywebsite.seo_settings
DROP TABLE IF EXISTS `seo_settings`;
CREATE TABLE IF NOT EXISTS `seo_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.seo_settings: ~0 rows (approximately)
REPLACE INTO `seo_settings` (`id`, `title`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
	(1, 'One Two Three', 'ksksksk sjsjskk', 'One Three', '2024-02-07 18:08:18', '2024-02-07 18:08:18');

-- Dumping structure for table mywebsite.services
DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.services: ~6 rows (approximately)
REPLACE INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(11, 'System Analysis and Design', 'Utilize systematic approaches to analyze and design robust IT systems tailored to your business needs.\r\nFrom requirements gathering to system implementation, we guide you through every step of the process.\r\nOur expertise ensures that your systems are scalable, efficient, and aligned with your strategic objectives, driving sustainable growth and success.', '2024-03-07 14:17:37', '2024-03-07 14:17:37'),
	(12, 'Mobile App Development', 'Create innovative and user-friendly mobile applications for iOS and Android platforms.\r\nFrom concept to launch, we handle every aspect of the development process, including design, coding, and testing.\r\nOur mobile apps are built to deliver exceptional performance, usability, and reliability, ensuring a seamless experience for your users.', '2024-03-07 14:18:35', '2024-03-07 14:18:35'),
	(13, 'Web Application Development', 'Build responsive and feature-rich websites that reflect your brand identity and engage your audience.\r\nUtilizing the latest technologies and best practices, we create custom web solutions tailored to your specific goals and requirements.\r\nFrom simple landing pages to complex web applications, we deliver high-quality websites that drive results and exceed expectations.', '2024-03-07 14:19:31', '2024-03-07 14:19:31'),
	(14, 'Data Analysis', 'Unlock the power of your data through comprehensive analysis and insights.\r\nUtilize advanced analytical techniques to uncover patterns, trends, and opportunities hidden within your data.\r\nFrom data visualization to predictive modeling, we provide actionable insights that drive informed decision-making and business growth.', '2024-03-07 14:20:08', '2024-03-07 14:20:08'),
	(15, 'UI/UX Design with Figma', 'Create intuitive and visually appealing user interfaces (UI) and user experiences (UX) using Figma, a powerful design tool.\r\nCollaborate seamlessly with clients and team members in real-time, streamlining the design process and ensuring efficient communication.\r\nFrom wireframing to prototyping, we leverage Figma\'s robust features to bring your ideas to life with precision and creativity.', '2024-03-07 14:21:08', '2024-03-07 14:21:08'),
	(16, 'System Adminstration', 'Ensure the smooth operation and security of your IT infrastructure with expert system administration services.\r\nFrom network configuration to software maintenance, we handle all aspects of system management to keep your business running smoothly.\r\nOur proactive approach helps prevent downtime and security breaches, ensuring the reliability and integrity of your systems.', '2024-03-07 14:22:17', '2024-03-07 14:22:17');

-- Dumping structure for table mywebsite.skill_items
DROP TABLE IF EXISTS `skill_items`;
CREATE TABLE IF NOT EXISTS `skill_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.skill_items: ~6 rows (approximately)
REPLACE INTO `skill_items` (`id`, `name`, `percent`, `created_at`, `updated_at`) VALUES
	(2, 'Web Application Development', 50, '2024-02-03 14:55:57', '2024-02-03 14:55:57'),
	(3, 'Graphic Design', 20, '2024-02-03 14:56:09', '2024-02-03 14:56:09'),
	(4, 'Software Application Development', 55, '2024-02-03 14:56:21', '2024-02-03 14:56:21'),
	(5, 'Mobile App Development', 30, '2024-02-03 14:56:45', '2024-02-03 14:56:45'),
	(6, 'System Analysis and Design', 35, '2024-02-03 14:57:08', '2024-02-03 14:57:08'),
	(7, 'Networking', 50, '2024-02-03 14:57:34', '2024-02-03 14:57:34'),
	(8, 'Problem Solving', 45, '2024-02-03 15:36:42', '2024-03-07 15:03:28');

-- Dumping structure for table mywebsite.skill_section_settings
DROP TABLE IF EXISTS `skill_section_settings`;
CREATE TABLE IF NOT EXISTS `skill_section_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.skill_section_settings: ~0 rows (approximately)
REPLACE INTO `skill_section_settings` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'My Skills', 'Each opportunity presents a chance to expand our knowledge, skills, and experiences. Whether it\'s tackling a new project, learning a new technology, or taking on a leadership role, we embrace challenges as opportunities for growth and development.', '/uploads/1038672449pngwing.com(10).png', '2024-02-03 13:38:20', '2024-03-07 15:03:00');

-- Dumping structure for table mywebsite.typer_titles
DROP TABLE IF EXISTS `typer_titles`;
CREATE TABLE IF NOT EXISTS `typer_titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.typer_titles: ~0 rows (approximately)

-- Dumping structure for table mywebsite.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.users: ~0 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ela Kali', 'admin@gmail.com', '2024-01-20 18:47:16', '$2y$12$Sm1uDBTuyOZNEfRDb4ZNDeBdxkBP4LGvCxJ/al8NzbZLWsTP9Eolq', 'TkXo0pIhDCUd7MCY8rborHNrmnMKwkqxalbqHbBp8zuVCTnHnQYMnFH2oA3H', '2024-01-20 18:47:17', '2024-01-29 16:01:40');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
