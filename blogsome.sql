-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2018 at 01:34 PM
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
-- Database: `blogsome`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_author` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `created_at`, `updated_at`, `post_author`) VALUES
(1, 'Fusce non tellus ex', 'Fusce non tellus ex', '2018-08-14 19:42:50', '2018-08-14 19:42:50', 4),
(2, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec aliquam sem. Vestibulum quis eros augue. Maecenas nec lacinia tellus. Donec aliquet venenatis justo sit amet pretium. Donec sodales non dolor sit amet volutpat. Praesent tempus venenatis risus, a gravida mauris luctus ac. Morbi nulla quam, tristique varius varius eu, mollis euismod purus.\r\n\r\nCurabitur fermentum dignissim metus sit amet malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin congue nisi enim, quis scelerisque odio dapibus vitae. Aliquam efficitur diam vitae nibh vulputate, eget porta lorem convallis. Cras sed tortor nibh. Duis sit amet augue ipsum. Aenean pretium luctus urna, at condimentum est tincidunt a. Donec dapibus lacinia faucibus.', '2018-08-15 10:22:53', '2018-08-15 10:22:53', 5),
(3, 'Proin ac orci enim', 'Proin ac orci enim. Nullam vel enim non dui porttitor luctus vel elementum magna. Nam egestas ipsum quis est elementum, a mollis risus suscipit. Nunc lobortis tristique libero nec imperdiet. Donec malesuada felis bibendum, accumsan erat in, aliquet nisi. Vestibulum imperdiet enim et nisl dapibus imperdiet. In ac purus ultrices, laoreet sapien et, viverra dolor. Donec ullamcorper nisl sit amet efficitur commodo. Fusce posuere rhoncus mi quis gravida. Vestibulum pulvinar, nunc id elementum tempor, dui sem fermentum quam, eu tincidunt ligula augue at arcu.', '2018-08-15 10:23:17', '2018-08-15 10:23:17', 5),
(4, 'Quisque porta blandit quam, eget tristique nisi sollicitudin ac', 'In leo nisi, faucibus eleifend sapien nec, maximus blandit purus. Nunc venenatis libero ornare purus molestie, et molestie nunc iaculis. Integer consequat laoreet odio ut tincidunt. Nam eget viverra justo. Curabitur condimentum lectus et tellus pulvinar, porta sodales ante rutrum. Suspendisse quam neque, ultrices sit amet convallis id, vulputate id felis. Vivamus eget orci ut lectus lacinia ultrices nec sit amet leo. Aliquam efficitur pharetra sapien eget rhoncus. Maecenas ut metus sed enim ultricies fringilla. Duis eu ultricies ipsum, ac tincidunt sem. Donec ultrices vel elit et hendrerit. Ut lacus enim, mollis vel tristique at, convallis nec lorem. Cras eget lectus aliquet sem posuere luctus sed sed diam. Vivamus ac tellus elit.\r\n\r\nVestibulum at turpis finibus, lobortis augue tincidunt, efficitur lectus. Quisque porta blandit quam, eget tristique nisi sollicitudin ac. Phasellus eget erat et risus vehicula aliquet eget vel ante. Curabitur placerat risus et rutrum pellentesque. Proin sit amet augue non purus mattis interdum. Etiam nisl libero, fringilla eget ipsum ac, dignissim fermentum nunc. Nulla interdum, enim eu lacinia tempus, mi turpis mollis tortor, eu placerat nulla nulla in quam. Praesent mi mauris, tristique quis nisi vehicula, porta dictum ex. Duis libero justo, vehicula sed velit a, ultricies iaculis urna. Praesent facilisis venenatis malesuada. Vivamus ut risus interdum, vehicula odio quis, venenatis leo. Praesent turpis urna, vulputate eu malesuada vitae, accumsan a libero. Nunc non tincidunt mi, in hendrerit justo. Phasellus gravida ornare sagittis. Vestibulum tempus erat ac mi rutrum, varius varius nibh lacinia. Nam efficitur ultricies lacus, in bibendum ligula interdum at.', '2018-08-15 10:23:55', '2018-08-15 10:23:55', 6),
(5, 'Vestibulum lobortis suscipit nisl', 'Vestibulum lobortis suscipit nisl, in scelerisque neque scelerisque ut. Duis nec condimentum lectus. Praesent nec luctus justo. Donec ut scelerisque lacus. Maecenas dictum augue tellus, ut pharetra sapien volutpat tempor. Curabitur ligula magna, bibendum et convallis nec, tempor vel est. Sed iaculis quam quam, et porttitor sapien aliquam a. Cras consectetur fringilla nisi. Ut quis sagittis odio, non pharetra turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc leo dui, varius eget magna non, condimentum pulvinar turpis. Ut blandit dapibus risus, nec interdum purus fermentum vel.', '2018-08-15 10:24:17', '2018-08-15 10:24:17', 6),
(6, 'Fusce placerat suscipit posuere', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque massa nunc, malesuada ut dignissim a, viverra feugiat libero. Morbi vestibulum ac nunc in lacinia. Vestibulum ultricies, lectus non aliquam consequat, quam mi mollis eros, ut feugiat nunc velit in felis. Proin diam quam, auctor sed vestibulum id, malesuada vitae tortor. Ut eu efficitur ex. Mauris sodales sagittis mi ac tristique. Fusce sit amet nisi placerat massa tincidunt viverra. In in massa et nisi vulputate posuere ac sed diam. Aliquam accumsan interdum elit, et finibus dolor feugiat vel. Nunc quis massa rhoncus, viverra nibh vitae, cursus purus.\r\n\r\nNam hendrerit accumsan ipsum. Morbi volutpat ante nisl. Suspendisse tellus odio, ultrices ut tristique ut, cursus quis ex. Praesent placerat lorem lacinia eros mattis dictum sed pharetra erat. Pellentesque euismod tristique dolor ut pellentesque. Sed auctor feugiat sapien vitae ullamcorper. Sed ornare augue et scelerisque auctor. Praesent dapibus dui ut purus euismod elementum. Donec mattis risus at arcu molestie, ac tristique tellus ultricies. Donec lacus lacus, dictum at consectetur eget, blandit ac ipsum.\r\n\r\nNulla blandit porttitor est, at cursus justo rhoncus id. Ut mauris tortor, hendrerit sed mauris at, tincidunt faucibus lectus. Phasellus sit amet faucibus nulla, a mattis eros. In blandit nibh eu nibh hendrerit tempus. Praesent sed libero nulla. Fusce sed ante vel orci mollis venenatis. Quisque mollis nec eros non porta. In libero neque, faucibus sit amet ultrices eget, auctor in nisi. Suspendisse pharetra nulla sed ipsum faucibus congue. Donec vel vulputate mi, vitae luctus erat. Vivamus et nisl vitae diam porttitor consequat sed in nibh.\r\n\r\nSuspendisse rhoncus dui ut tellus viverra pellentesque vitae et nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum magna felis, convallis eu libero sed, dapibus ullamcorper nunc. Maecenas a fermentum dui. Quisque interdum eleifend egestas. Nunc congue et velit vel varius. Pellentesque tristique sodales purus nec fermentum.\r\n\r\nFusce placerat suscipit posuere. Aliquam dui tellus, sollicitudin ac maximus vel, convallis a nunc. Suspendisse euismod elit odio, vel facilisis sem sollicitudin non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mollis nunc leo. Proin pulvinar odio purus, eu volutpat leo sagittis quis. Suspendisse at libero et odio dictum rutrum non id est. Phasellus bibendum, nunc ac convallis tincidunt, orci leo ultrices urna, commodo ornare enim neque eget erat. Vestibulum vulputate convallis mi a elementum. Suspendisse potenti. Curabitur egestas efficitur pulvinar. Nullam fringilla erat in tellus varius, eget tempor lorem lobortis. Suspendisse lorem nibh, vulputate sit amet metus non, egestas suscipit lacus.', '2018-08-15 10:24:58', '2018-08-15 10:24:58', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(50) DEFAULT NULL,
  `user_last_name` varchar(50) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`user_email`),
  KEY `Active` (`user_is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first_name`, `user_last_name`, `username`, `user_email`, `password`, `created_at`, `updated_at`, `user_is_active`) VALUES
(4, 'Tonislav', 'Atanasov', 'darighteous1', 'tonislav.atanasov@gmail.com', '$2y$10$xyHpiQvyHHtXXjlsAarZkeWEy5Hd/RyKVo4kkAIxtYkZ2XN6JhLJi', '2018-08-14 18:43:01', '2018-08-14 18:43:01', 1),
(5, 'Joel', 'Embiid', 'user1', 'jembiid@none.none', '$2y$10$iAUwbW1UexElQnaR/PZ0meM0zi5V.QAp6VPZrrz.v.MEQTO9emP32', '2018-08-15 10:20:41', '2018-08-15 10:20:41', 1),
(6, 'Lauri', 'Markkanen', 'user2', 'lauri@none.none', '$2y$10$EnppzpvaU3tjtKSk1OeXy.APHU22fOikZ7jcw0V4hWSgIT2ZYjuu6', '2018-08-15 10:21:15', '2018-08-15 10:21:15', 1),
(7, 'admin', 'admin', 'admin', 'admin@none.none', '$2y$10$0cUOmQuoJ0ZdLciI0Pj1Be8luQpne0sRE4C0j4dn3A87xMFVIdMfa', '2018-08-15 10:21:32', '2018-08-15 10:21:32', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `author` FOREIGN KEY (`post_author`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
