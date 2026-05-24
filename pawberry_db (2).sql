-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2026 at 01:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawberry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `contact`, `address`, `username`, `user_id`) VALUES
(1, 'James Talagon', '099705082000', 'Antipolo City', 'james', 2),
(2, 'Myca Nicole', '12345', 'aaa', 'Myca', 0),
(3, 'Charmy Abanto', '11111', 'Antipolo City', 'Charmy', 0),
(5, 'Kim C. Briones', '639123456789', 'Pasig City', 'KimBriones', 36),
(6, 'Jamestry Sanchez. Talagon', '639975471987', 'Testtryaddress', 'Jamestry', 37),
(7, 'Mik M. Mik', '639123456789', 'Antipolo City', 'Mik', 38),
(8, 'Mik', '11', '11', 'Mik', 1),
(9, 'Abanto, Lyan Sj.', '639999999999', 'Antipolo City', 'Lyan', 1),
(10, 'Boy, Ellie B', '632222222222', 'Sssss', 'Ellie', 1),
(11, 'Juan S. Pedro', '631231231231', 'Pedro in', 'Juanies', 39);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `total`, `order_date`, `customer_id`) VALUES
(1, 150, '2026-05-21 16:19:43', 1),
(2, 150, '2026-05-21 16:19:48', 1),
(3, 150, '2026-05-21 16:31:54', 1),
(4, 300, '2026-05-21 16:32:22', 1),
(5, 150, '2026-05-21 17:50:40', NULL),
(6, 300, '2026-05-21 17:53:00', 2),
(7, 150, '2026-05-21 18:01:41', NULL),
(8, 0, '2026-05-21 18:08:26', NULL),
(9, 150, '2026-05-21 18:09:20', NULL),
(10, 935, '2026-05-22 13:10:16', NULL),
(11, 980, '2026-05-22 13:52:18', NULL),
(12, 1930, '2026-05-22 16:00:21', NULL),
(13, 1960, '2026-05-22 16:14:31', NULL),
(14, 980, '2026-05-22 16:29:30', NULL),
(15, 980, '2026-05-22 17:51:21', NULL),
(16, 980, '2026-05-22 18:00:46', NULL),
(17, 980, '2026-05-22 18:03:37', NULL),
(18, 980, '2026-05-22 18:07:17', NULL),
(19, 980, '2026-05-22 18:10:33', NULL),
(20, 980, '2026-05-22 18:14:44', NULL),
(21, 2780, '2026-05-23 10:55:01', NULL),
(22, 1870, '2026-05-23 11:20:01', NULL),
(23, 2820, '2026-05-23 11:32:01', NULL),
(24, 980, '2026-05-23 12:03:07', NULL),
(25, 980, '2026-05-23 12:06:08', NULL),
(26, 980, '2026-05-23 13:35:18', NULL),
(27, 980, '2026-05-23 13:50:49', 5),
(28, 980, '2026-05-23 18:21:22', NULL),
(29, 2110, '2026-05-24 11:25:43', NULL),
(30, 4010, '2026-05-24 13:20:57', NULL),
(31, 980, '2026-05-24 13:37:21', 3),
(32, 980, '2026-05-24 13:37:41', 3),
(33, 950, '2026-05-24 13:41:50', 6),
(34, 2940, '2026-05-24 13:46:41', NULL),
(35, 980, '2026-05-24 14:33:03', 5),
(36, 1700, '2026-05-24 17:16:27', 5),
(37, 1960, '2026-05-24 18:09:40', NULL),
(38, 1695, '2026-05-24 18:18:35', NULL),
(39, 1690, '2026-05-24 18:21:30', NULL),
(40, 875, '2026-05-24 18:27:52', NULL),
(41, 1760, '2026-05-24 19:01:08', NULL),
(42, 1960, '2026-05-24 19:06:46', NULL),
(43, 1760, '2026-05-24 19:09:27', NULL),
(44, 915, '2026-05-24 19:09:58', NULL),
(45, 2090, '2026-05-24 19:12:40', NULL),
(46, 95, '2026-05-24 19:16:58', NULL),
(47, 980, '2026-05-24 19:19:38', NULL),
(48, 980, '2026-05-24 19:22:41', NULL),
(49, 980, '2026-05-24 19:23:10', 2),
(50, 980, '2026-05-24 19:24:33', NULL),
(51, 980, '2026-05-24 19:26:42', NULL),
(52, 980, '2026-05-24 19:27:04', 2),
(53, 65, '2026-05-24 19:27:21', 6),
(54, 3005, '2026-05-24 19:30:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_backup`
--

CREATE TABLE `orders_backup` (
  `order_id` varchar(20) NOT NULL,
  `total` double DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `subtotal`) VALUES
(1, 4, 3, 2, 300),
(2, 5, 3, 1, 150),
(3, 6, 3, 2, 300),
(4, 7, 4, 1, 0),
(5, 7, 3, 1, 150),
(6, 8, 4, 1, 0),
(7, 9, 3, 1, 150),
(8, 11, 1, 1, 980),
(9, 12, 1, 1, 980),
(10, 12, 4, 1, 950),
(11, 13, 1, 1, 980),
(12, 13, 2, 1, 980),
(13, 14, 1, 1, 980),
(14, 15, 1, 1, 980),
(15, 16, 1, 1, 980),
(16, 17, 1, 1, 980),
(17, 18, 1, 1, 980),
(18, 19, 1, 1, 980),
(19, 20, 1, 1, 980),
(20, 21, 1, 1, 980),
(21, 21, 4, 1, 950),
(22, 21, 18, 1, 850),
(23, 22, 1, 1, 980),
(24, 22, 5, 1, 890),
(25, 23, 1, 1, 980),
(26, 23, 4, 1, 950),
(27, 23, 5, 1, 890),
(28, 24, 1, 1, 980),
(29, 25, 2, 1, 980),
(30, 26, 3, 1, 980),
(31, 27, 1, 1, 980),
(32, 28, 1, 1, 980),
(33, 29, 1, 2, 1960),
(34, 29, 8, 1, 65),
(35, 29, 41, 1, 85),
(36, 30, 1, 1, 980),
(37, 30, 2, 1, 980),
(38, 30, 3, 1, 980),
(39, 30, 44, 1, 370),
(40, 30, 45, 1, 420),
(41, 30, 46, 1, 195),
(42, 30, 16, 1, 85),
(43, 31, 3, 1, 980),
(44, 32, 1, 1, 980),
(45, 33, 4, 1, 950),
(46, 34, 1, 3, 2940),
(47, 35, 3, 1, 980),
(48, 36, 18, 2, 1700),
(49, 37, 1, 1, 980),
(50, 37, 2, 1, 980),
(51, 38, 1, 1, 980),
(52, 38, 7, 1, 650),
(53, 38, 8, 1, 65),
(54, 39, 1, 1, 980),
(55, 39, 7, 1, 650),
(56, 39, 13, 1, 60),
(57, 40, 7, 1, 650),
(58, 40, 9, 1, 65),
(59, 40, 10, 1, 65),
(60, 40, 17, 1, 95),
(61, 41, 1, 1, 980),
(62, 41, 7, 1, 650),
(63, 41, 8, 1, 65),
(64, 41, 9, 1, 65),
(65, 42, 1, 1, 980),
(66, 42, 7, 1, 650),
(67, 42, 8, 1, 65),
(68, 42, 9, 1, 65),
(69, 42, 15, 1, 115),
(70, 42, 16, 1, 85),
(71, 43, 1, 1, 980),
(72, 43, 7, 1, 650),
(73, 43, 8, 1, 65),
(74, 43, 9, 1, 65),
(75, 44, 7, 1, 650),
(76, 44, 8, 1, 65),
(77, 44, 15, 1, 115),
(78, 44, 16, 1, 85),
(79, 45, 1, 1, 980),
(80, 45, 3, 1, 980),
(81, 45, 10, 1, 65),
(82, 45, 11, 1, 65),
(83, 46, 17, 1, 95),
(84, 47, 1, 1, 980),
(85, 48, 2, 1, 980),
(86, 49, 1, 1, 980),
(87, 50, 2, 1, 980),
(88, 51, 1, 1, 980),
(89, 52, 1, 1, 980),
(90, 53, 10, 1, 65),
(91, 54, 8, 1, 65),
(92, 54, 1, 3, 2940);

-- --------------------------------------------------------

--
-- Table structure for table `order_details_backup`
--

CREATE TABLE `order_details_backup` (
  `id` int(11) NOT NULL DEFAULT 0,
  `order_id` varchar(20) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `subcategory` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `category`, `subcategory`) VALUES
(1, 'Royal Canin Breed Health Nutrition Pug 1.5kg Dog Dry Food', 980, 13, 'Dog', 'Dry Food'),
(2, 'Royal Canin Breed Health Nutrition Pomeranian 1.5kg Dog Dry Food', 980, 44, 'Dog', 'Dry Food'),
(3, 'Royal Canin Breed Health Nutrition Shih Tzu 1.5kg Dog Dry Food', 980, 45, 'Dog', 'Dry Food'),
(4, 'Royal Canin Breed Health Nutrition Dachshund 1.5kg Dog Dry Food', 950, 46, 'Dog', 'Dry Food'),
(5, 'Royal Canin Size Health Nutrition Puppy 1.5kg Dog Dry Food', 890, 48, 'Dog', 'Dry Food'),
(6, 'Royal Canin Size Health Nutrition Adult 1.5kg Dog Dry Food', 850, 50, 'Dog', 'Dry Food'),
(7, 'Royal Canin Localized Health Nutrition Aspin (Pinoy Dog) 1.5kg Dog Dry Food', 650, 43, 'Dog', 'Dry Food'),
(8, 'Royal Canin Breed Health Nutrition Pug 85g Dog Wet Food', 65, 43, 'Dog', 'Wet Food'),
(9, 'Royal Canin Breed Health Nutrition Pomeranian 85g Dog Wet Food', 65, 46, 'Dog', 'Wet Food'),
(10, 'Royal Canin Breed Health Nutrition Shih Tzu 85g Dog Wet Food', 65, 47, 'Dog', 'Wet Food'),
(11, 'Royal Canin Breed Health Nutrition Dachshund 85g Dog Wet Food', 65, 49, 'Dog', 'Wet Food'),
(12, 'Royal Canin Size Health Nutrition Puppy 85g Dog Wet Food', 60, 50, 'Dog', 'Wet Food'),
(13, 'Royal Canin Size Health Nutrition Adult 85g Dog Wet Food', 60, 49, 'Dog', 'Wet Food'),
(14, 'Royal Canin Localized Health Nutrition Aspin (Pinoy Dog) 85g Dog Wet Food', 50, 50, 'Dog', 'Wet Food'),
(15, 'Pedigree Dentastix Dental Treats for Medium Dogs 98g', 115, 48, 'Dog', 'Treats'),
(16, 'Pedigree Meat Jerky Stix Grilled Liver Flavor 80g', 85, 47, 'Dog', 'Treats'),
(17, 'JerHigh Strip Chicken Flavor Dog Treats 70g', 95, 48, 'Dog', 'Treats'),
(18, 'KONG Classic Durable Natural Rubber Chew Toy (Medium)', 850, 47, 'Dog', 'Toys'),
(19, 'Durable Braided Cotton Rope Tug Toy for Dogs', 180, 50, 'Dog', 'Toys'),
(20, 'Squeaky Plush Bone Dog Stuffingless Toy', 220, 50, 'Dog', 'Toys'),
(21, 'Bearing Tick and Flea Dog Shampoo 600ml', 380, 50, 'Dog', 'Hygiene'),
(22, 'Pet Grooming Tender Soft Wet Wipes 80wipes', 120, 50, 'Dog', 'Hygiene'),
(23, 'Deo-Sheet Super Premium Unscented Pee Pads 50pcs', 750, 50, 'Dog', 'Hygiene'),
(24, 'Royal Canin Breed Health Nutrition Persian 1.5kg Cat Dry Food', 1050, 50, 'Cat', 'Dry Food'),
(25, 'Royal Canin Breed Health Nutrition Siamese 1.5kg Cat Dry Food', 1020, 50, 'Cat', 'Dry Food'),
(26, 'Royal Canin Breed Health Nutrition Maine Coon 1.5kg Cat Dry Food', 1080, 50, 'Cat', 'Dry Food'),
(27, 'Royal Canin Breed Health Nutrition Sphynx 1.5kg Cat Dry Food', 1120, 50, 'Cat', 'Dry Food'),
(28, 'Royal Canin Feline Health Nutrition Kitten 1.5kg Cat Dry Food', 920, 50, 'Cat', 'Dry Food'),
(29, 'Royal Canin Feline Health Nutrition Adult 1.5kg Cat Dry Food', 880, 50, 'Cat', 'Dry Food'),
(30, 'Royal Canin Localized Health Nutrition Puspin (Pinoy Cat) 1.5kg Cat Dry Food', 680, 50, 'Cat', 'Dry Food'),
(31, 'Royal Canin Breed Health Nutrition Persian 85g Cat Wet Food', 80, 50, 'DOG', 'DRY FOOD'),
(32, 'Royal Canin Breed Health Nutrition Siamese 85g Cat Wet Food', 70, 50, 'Cat', 'Wet Food'),
(33, 'Royal Canin Breed Health Nutrition Maine Coon 85g Cat Wet Food', 70, 50, 'Cat', 'Wet Food'),
(34, 'Royal Canin Breed Health Nutrition Sphynx 85g Cat Wet Food', 75, 50, 'Cat', 'Wet Food'),
(35, 'Royal Canin Feline Health Nutrition Kitten 85g Cat Wet Food', 65, 50, 'Cat', 'Wet Food'),
(36, 'Royal Canin Feline Health Nutrition Adult 85g Cat Wet Food', 65, 50, 'Cat', 'Wet Food'),
(37, 'Royal Canin Localized Health Nutrition Puspin (Pinoy Cat) 85g Cat Wet Food', 55, 50, 'Cat', 'Wet Food'),
(38, 'Ciao Churu Tuna with Collagen Liquid Cat Treat 4x14g', 110, 50, 'Cat', 'Treats'),
(39, 'Ciao Churu Chicken Fillet Liquid Cat Treat 4x14g', 110, 50, 'Cat', 'Treats'),
(40, 'Temptations Cat Treats Tasty Chicken Flavor 85g', 140, 50, 'Cat', 'Treats'),
(41, 'Catnip Filled Feather Mouse Chaser Toy', 85, 49, 'Cat', 'Toys'),
(42, '3-Tier Turntable Cat Roller Toy with Moving Balls', 290, 50, 'Cat', 'Toys'),
(43, 'Interactive Laser Pointer LED Light Pet Toy', 150, 50, 'Cat', 'Toys'),
(44, 'Kit Cat Soya Clump Flushable Tofu Litter Original 7L', 370, 49, 'Cat', 'Hygiene'),
(45, 'Joypet Waterless Foaming Dry Clean Shampoo for Cats 200ml', 420, 49, 'Cat', 'Hygiene'),
(46, 'Bioline Cat Ear Care Drops Cleaner 50ml', 195, 49, 'Cat', 'Hygiene');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `fav_pet` varchar(50) DEFAULT NULL,
  `fav_food` varchar(50) DEFAULT NULL,
  `fav_color` varchar(50) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'Cashier',
  `full_name` varchar(150) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customer_id`, `username`, `password`, `fav_pet`, `fav_food`, `fav_color`, `role`, `full_name`, `contact_number`, `address`) VALUES
(2, NULL, 'james', '8e3ed5cc6c819a27493ef482d7be003d1290eeb7a2b73c8e5e51b0824a4fbc97', 'dog', 'idk', 'red', 'USER', '', '', ''),
(4, NULL, 'admin', '240AA35A7E0D6945A4915154CD742414740C812AE2D25718A1A20A53E3487541', NULL, NULL, NULL, 'ADMIN', '', '', ''),
(5, NULL, 'Ellieboy', 'd8fdae653cd63e74d3fb4a2ef1990944c80968c8b52218e0410c9d5ec4886a94', 'dog', 'chicken', 'blue', 'USER', 'Ellieboy', '111', 'qqq'),
(6, NULL, 'MYCANICOLEe', '1445bbd1616763c58a64942677147afc865895270b04355e80267245023468d4', 'AA', 'AA', 'AA', 'USER', 'Myca ', '11111', 'aaaa'),
(20, NULL, 'qwezxc', '84568a115b5352272233ca3ce024bb23e1467efcf0b0025237c74402eb3a381f', 'zxcas', 'asdqwe', 'qweasd', 'USER', 'qwe', '123123', 'zxc'),
(34, NULL, 'qweqe', '1a0b1078ad190fdf1191fd4045d75fe5ada26999bde5121d3844aed5110ee7e4', 'qwe', 'qwe', 'qwe', 'USER', 'qwe', '2312', 'qwe'),
(35, NULL, 'Mikmik', '4bb4b68a834276e8cc3ca653729c82690d742847f51897d25711adb0767cec7d', 'AAA', 'AAA', 'AAA', 'USER', 'mikimik', '11111', 'mik'),
(36, NULL, 'KimBriones', 'efa0241b1038654ce6e8b9aedfcd20a4b447a0efc75847a0d08ff4e2405ea16b', 'Cat', 'Idk', 'Pink', 'USER', 'Kim C. Briones', '639123456789', 'Pasig City'),
(37, NULL, 'Jamestry', '4197afaea2894474e027fcb25d6b8fabe0d5e9de8d0acbdbd55bc6c4f10b935d', 'Try1', 'Try2', 'Try3', 'USER', 'Jamestry Sanchez. Talagon', '639975471987', 'Testtryaddress'),
(38, NULL, 'Mik', '4bb4b68a834276e8cc3ca653729c82690d742847f51897d25711adb0767cec7d', 'Dog', 'Idk', 'Blue', 'USER', 'Mik M. Mik', '639123456789', 'Antipolo City'),
(39, NULL, 'Juanies', '8e3ed5cc6c819a27493ef482d7be003d1290eeb7a2b73c8e5e51b0824a4fbc97', 'Dog', 'Cat', 'Pig', 'USER', 'Juan S. Pedro', '631231231231', 'Pedro in');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_user_register` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    /* Only copy if the role is 'USER' (ignores ADMIN accounts) */
    IF NEW.role = 'USER' THEN
        INSERT INTO customers (name, contact, address, username, user_id) 
        VALUES (NEW.full_name, NEW.contact_number, NEW.address, NEW.username, NEW.id);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sales_report`
-- (See below for the actual view)
--
CREATE TABLE `v_sales_report` (
`order_id` int(11)
,`order_date` datetime
,`product_name` varchar(100)
,`quantity` int(11)
,`unit_price` double
,`subtotal` double
,`order_total` double
);

-- --------------------------------------------------------

--
-- Structure for view `v_sales_report`
--
DROP TABLE IF EXISTS `v_sales_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sales_report`  AS SELECT `o`.`order_id` AS `order_id`, `o`.`order_date` AS `order_date`, `p`.`name` AS `product_name`, `od`.`quantity` AS `quantity`, `p`.`price` AS `unit_price`, `od`.`subtotal` AS `subtotal`, `o`.`total` AS `order_total` FROM ((`orders` `o` join `order_details` `od` on(`o`.`order_id` = `od`.`order_id`)) join `products` `p` on(`od`.`product_id` = `p`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_customer` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_user_customer` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_user_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
