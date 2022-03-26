-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 11:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr11_petadoption_sanja`
--
CREATE DATABASE IF NOT EXISTS `be15_cr11_petadoption_sanja` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `be15_cr11_petadoption_sanja`;

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `adopid` int(11) NOT NULL,
  `fkuserid` int(11) DEFAULT NULL,
  `adop_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`adopid`, `fkuserid`, `adop_date`) VALUES
(1, 4, '2022-03-01'),
(2, 1, '2022-02-02'),
(3, 6, '2022-03-06'),
(4, 7, '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `kind` varchar(30) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `hobby` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `fkadopid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `picture`, `kind`, `breed`, `age`, `size`, `description`, `hobby`, `location`, `fkadopid`) VALUES
(1, 'Sissy', '623e7f562ad47.jpg', 'cat', 'Sphynx', 8, 'large', 'Grey-white cat with hairless, ', 'Sunning', 'Praterstrasse 25/11', NULL),
(2, 'Bor', '623e7fd423e16.jpg', 'dog', 'Labrador', 9, 'large', 'Loyal, obedient and playful', 'swimming', 'Praterstrasse 25', NULL),
(3, 'Ranna', '623e805943375.jpg', 'snake', 'Rainbow Boa', 15, 'large', 'Rainbow boas are nocturnal and', 'swimming', 'Kloster 33', NULL),
(4, 'Radle', '623e80fb11e77.jpg', 'turtle', 'Red eared slider', 13, 'small', 'aquatic reptile with webbed fe', 'cuddling', 'Paddingtons 42', NULL),
(5, 'Cocko', '623e81824ba85.jpg', 'bird', 'Coockto', 1, 'small', 'White parrots with crests and ', 'singing', 'Drownplatz 4', NULL),
(6, 'Leo', '623e820c38e74.jpg', 'cat', 'Siamese', 1, 'large', 'Long, elegant black-grey cat, ', 'chasing mouses', 'Sinderelstreet 50', NULL),
(7, 'Matta', '623e829564956.jpg', 'cat', 'Russian Blue', 2, 'large', 'curious, calm, affectionate bu', 'People Watching', 'Paddingtons 42', NULL),
(8, 'Wuk', '623e83412face.jpg', 'dog', 'Siberian Husky', 1, 'large', 'northern black-white dog, inte', 'chasing sticks', 'Marialamergstr 32', NULL),
(9, 'Lion', '623e83eacd388.jpg', 'rabbit', 'Lionhead', 2, 'small', 'He have a wool mane encircling', 'nibbles on a carrot', 'Kettenbruckenstr 28', NULL),
(10, 'Dobby', '623e845308f0b.jpg', 'Guinea Pig', 'Peruvian', 3, 'small', 'orange long-haired breed of gu', 'cuddling', 'Paddingtons 48', NULL),
(11, 'Goldy', '623e84d132715.jpg', 'Hamster', 'Syrian Hamster', 2, 'small', ' reddish gol with a small blun', 'nibbles on a carrot', 'Praterstrasse 25/1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('user','adm') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `picture`, `phone`, `address`, `email`, `password`, `status`) VALUES
(1, 'Bob', 'Dilan', '623e794cb55e9.jpg', 664483647, 'Cossmanngasse 30/24', 'dilan@mail.com', '1c6e7e341a689ed806d6ff9ee7ac38fed4eb439b08aaa6b95a52fde4b1b26ba8', 'user'),
(2, 'Mark', 'Zippermann', '623e79afa304d.png', 2147483647, 'Klosterneuburgerstr 78', 'zippermann@mail.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'adm'),
(3, 'Susanna', 'Black', '623e8631eb068.jpg', 665928271, 'Secondstreet 23', 'black@mail.com', '5d5a598dbd33971ac00e7299a11531b23b7aede062b5f963fe5704d6463b3789', 'user'),
(4, 'Anna', 'Boombarda', '623e8680b5671.jpg', 667898989, 'Sesamgasse 23', 'boombarda@mail.com', '52455207fd82f660dbce8077259c9076e077215bf8b636815340e7b0f352c1e1', 'user'),
(5, 'Mihail', 'Pavic', '623e86b347e4c.jpg', 2147483647, 'Rootgasse 23', 'pavic@mail.com', 'eff9969e197bee9a900c67cdcd93d242336fb2d864c84e2600ee1766e7bb38af', 'user'),
(6, 'Kate', 'Groom', '623e870daef4a.jpg', 2147483647, 'Teslastreet 48', 'groom@mail.com', '2494f590138196a5d0f663121d5820de527b8f84b3065079752884df94fc5507', 'user'),
(7, 'Kate', 'Whisbelton', '623ee792d5fc8.jpg', 660483647, 'Mihaelstreet 40', 'whisbelton@mail.com', 'af5889d339fe9e2ff666895471ca9de0fc14dac4db27585448526c8cf2fad930', 'user'),
(8, 'Steph', 'Dorsch', '623ee7b189228.jpg', 660564465, 'Dorschgasse 20', 'dorsch@mail.com', 'aa7b46cf10c07ab0433bade93494254d123db38c754e627c4ddf0c1f5b6ab80b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`adopid`),
  ADD KEY `fkuserid` (`fkuserid`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkadopid` (`fkadopid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `adopid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `adoption_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `users` (`id`);

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`fkadopid`) REFERENCES `adoption` (`adopid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
