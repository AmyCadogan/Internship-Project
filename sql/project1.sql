CREATE DATABASE IF NOT EXISTS `project1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project1`;

DROP TABLE IF EXISTS `devicenames`;
CREATE TABLE `devicenames` (
`slno` int(11) PRIMARY KEY,
  `devicename` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `tempstatus` varchar(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Devices(product_name,product_price) VALUES
('1','',''),
('2','5000'),
('3','4000'),
('4','6000'),
('5','7000');

DROP TABLE IF EXISTS `temparaturestudy`;
CREATE TABLE IF NOT EXISTS `temparaturestudy` (
  `slno` int(11) FOREIGN KEY,
  `temp` int(11) NOT NULL,
  `time` time FOREIGN KEY,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `temparaturestudy` (`slno`, `temp`, `time`) VALUES
(0, 23, '13:54:43'),
(0, 1318, '14:17:12'),
(10023, 1318, '14:19:46'),
(514, 5672, '14:20:16');
