-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 06:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_marvel`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `Character_Name` char(25) NOT NULL,
  `Superhero_Name` char(25) DEFAULT NULL,
  `Actor_name` char(25) DEFAULT NULL,
  `Favourite_Weapon` varchar(50) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`Character_Name`, `Superhero_Name`, `Actor_name`, `Favourite_Weapon`, `Image`, `Description`) VALUES
('Bruce Banner', 'Hulk', 'Mark Ruffalo', 'His Rage Body', 'hulk.jpg', ' Dr. Bruce Banner lives a life caught between the soft-spoken scientist he is always been and the green monster by his rage. Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green called the Hulk.'),
('Dr. Stephen Strange', 'Doctor Strange', 'Bennedict Cumberbatch', 'Time Stone', 'Dr.jpg', 'Doctor Stephen Strange is a fictional character appearing in American comic books published by Marvel Comics. Doctor Strange serves as Sorcerer Supreme, the primary protector of Earth against magical and mystical threats.'),
('Natasha Romanoff', 'Black Widow', 'Scarlett johanson', 'Dual batons', 'BW.jpg', 'Natasha was born in Stalingrad (now Volgograd), Russian SFSR, USSR. The first and best-known Black Widow is a Russian agent trained as a spy, martial artist, and sniper, and outfitted with an arsenal of high-tech weaponry, including a pair of wrist-mounted energy weapons dubbed her Widows Bite. '),
('Peter Parker', 'Spiderman', 'Tom Holland', 'Spider Web', 'spidy.jpg', 'Spider-Man is a superhero appearing in American comic books published by Marvel\r\nComics. Created by writer-editor Stan Lee and artist Steve Ditko, he first appeared in the anthology comic book Fantasy #15 (August 1962) in the Silver Age of Comic Books.'),
('Steve Rogers', 'Captain America', 'Chris Evans', 'Sheild', 'cap.jpg', 'Captain America is the alter ego of Steve Rogers, a frail young artist enhanced to the peak of human by an experimental super- serum after joining the military to aid the United States government efforts in World War II .'),
('Thor Odinson', 'Thor', 'Chris Hemsworth', 'Mjölnir', 'thor.webp', 'Thor (Old Norse: Þórr) is the Norse god of thunder, the sky, and agriculture. He is the son of Odin, chief of the gods, and Odin consort Jord  and husband of the fertility goddess Sif, who is the mother of his son Modi and daughter Thrud his other son, Magni.'),
('Tony Stark', 'Ironman', 'Robert Downy Jr.', 'Iron Armour', 'ironman.jpg', 'Iron Man is a fictional superhero who wears a suit of armor. His alter ego is Tony Stark. He was created by Stan Lee, Jack Kirby and Larry ieber for Marvel Comics in Tales of #39 in the year 1963 and ppears in their books. Ironman is the most popular character');

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `Text` varchar(500) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`Text`, `Image`) VALUES
('We created this website for marvel fans to know about marvel characterswhom they love. You can contact us on \" Contact Us \" page if you have any query or demand to include something that you want.\r\n\r\nEnjoy your day. Hope you liked our website', 'aboutus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `book_tickets`
--

CREATE TABLE `book_tickets` (
  `Ticket_id` bigint(20) UNSIGNED NOT NULL,
  `User_id` bigint(20) UNSIGNED NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Movie_id` bigint(20) UNSIGNED NOT NULL,
  `Movie_image` varchar(255) NOT NULL,
  `Book_date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `Position` int(2) NOT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`Position`, `Image`) VALUES
(1, 'marvel.jpg'),
(2, 'marvel.jpg'),
(3, 'marvel2.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(255) NOT NULL,
  `Discount_Amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `User_id`, `Product_id`, `Quantity`, `Price`, `Discount_Amount`) VALUES
(10, 2, 12905, 1, 1599, 0),
(11, 2, 17494, 1, 5999, 200);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Address` varchar(50) DEFAULT NULL,
  `Phone` int(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Address`, `Phone`, `Email`, `Text`) VALUES
('RK University, Rajkot', 1876567876, 'abhuj145@rku.ac.in', 'Ask freely if you have any doubt or query. You can give us feedback about the website.\r\nAnd you are also allowed to give suggestion to improve the website');

-- --------------------------------------------------------

--
-- Table structure for table `contact_msg`
--

CREATE TABLE `contact_msg` (
  `id` int(5) NOT NULL,
  `Name` char(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `deleted` text NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_msg`
--

INSERT INTO `contact_msg` (`id`, `Name`, `Email`, `Message`, `deleted`) VALUES
(1, 'Bhuwan', 'bhuwan@gmail.com', 'Hello', 'No'),
(2, 'Bhuwan', 'bhuwan@gmail.com', 'Hello', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `Product_id` bigint(20) NOT NULL,
  `Product_name` varchar(200) DEFAULT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) DEFAULT NULL,
  `Category` char(25) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `deleted` text NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`Product_id`, `Product_name`, `Quantity`, `Price`, `Category`, `Image`, `deleted`) VALUES
(11345, 'Marvel oversized T-shirt in very Low Cost', 99, 1199, 'clothing', '653f62cb6e0ec_panther_tshirt.jpg', 'Yes'),
(12245, 'Marvel Avengers Ironman hoody with Arc Reactor(Glows in dark) in low price', 8, 1999, 'cosplay', 'ironHood.jpg', 'No'),
(12305, 'Dare Devil Mask Matt Murdock Cosplay Adult Red PVC Halloween Helmet', 0, 2999, 'cosplay', 'dMask.jpg', 'No'),
(12333, 'Marvel Spiderman Cosplay Costume for adult in low price', 4, 5599, 'cosplay', 'sp_Cos.jpg', 'No'),
(12345, 'Marvel Avengers Endgame \"Iron Man Mark : 50\" 1:6 Scale 32cm Tall Limited Collectible Statue', 2, 2999, 'Toy', 'iToy.jpg', 'No'),
(12346, 'Mist Multicolor Marvel Thor Axe-Hammer & Mjolnir- Hammer Stormbreaker Key Case (Pack Of 2)', 10, 599, 'accessories', 'hammer.jpg', 'No'),
(12347, 'Buy Marvel Titan Hero Hulk Figure (12 Inches, Multicolour) Online at Low Prices in India \r\n', 0, 2599, 'Toy', 'h.toy.jpg', 'No'),
(12348, 'Buy Marvel Legends Captain America Shield Online at Low Prices in India', 10, 5999, 'collection', 'capToy.jpg', 'No'),
(12385, 'Buy Marvel Legends Series Infinity Gauntlet Articulated Electronic Fist, For Adults Online at Low Prices in India', 7, 3999, 'collection', 'gountlet.jpg', 'No'),
(12645, 'Buy Marvel Black Panther Marvel Spike Collar Cosplay Necklace and jwellery', 10, 999, 'accessories', 'bPanther.jpg', 'No'),
(12905, 'Buy Marvel Guardians of the Galaxy Dancing Groot RC Online at Low Prices in India', 3, 1599, 'Toy', 'groot.jpg', 'No'),
(14345, 'Spiderman suit printed full sleeve T-shirt', 10, 1499, 'clothing', 'spTshirt.jpg', 'No'),
(17494, 'Eye of Agamoto from doctor strange (Only few available)', 100, 5999, 'accessories', 'Eye.jpg', 'No'),
(19045, 'Marvel Tessaract which glows in dark prefered for decoration', 9, 2999, 'collection', 'tess.jpg', 'No'),
(62345, 'Doctor Stranges cosplay costume for Halloween limited edition', 0, 3299, 'cosplay', 'Dr_Cos.jpg', 'No'),
(62346, 'Marvel Fans Keychain Stainless Steel Metal Use Keyring Perfect key chain for all bike, car, bags, school bag trending marvel keychain', 99, 499, 'accessories', '653f5c97be901_iron_man keychain.jpg', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `Character_Name` char(25) DEFAULT NULL,
  `Image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`Character_Name`, `Image`) VALUES
('Avg', 'avengers1.jpg'),
('Avg', 'avengers2.jpg'),
('Avg', 'avengers3.jpg'),
('Black Widow', 'black widow.jpg'),
('Black Panther', 'blackpanther.jpg'),
('Bucky', 'bucky.jpg'),
('Cap', 'ca1.jpg'),
('Clint', 'clint.jpg'),
('Clint', 'clint1.jpg'),
('Clint', 'clint2.jpg'),
('CAvsBP', 'CvsBP.jpg'),
('CvsI', 'CvsI.jpg'),
('Doc', 'dr1.jpg'),
('Gamora', 'gamora.jpg'),
('Hulk', 'hulk1.jpg'),
('Hulk', 'hulk2.jpg'),
('ironman', 'ironman.jpg'),
('Ironman', 'ironman_cap.jpg'),
('Logan', 'logan.jpg'),
('loki', 'loki.jpg'),
('loki', 'loki1.jpg'),
('SpiderMan', 'miles.jpg'),
('Rocket', 'rocket.jpg'),
('Spider', 'spider1.jpg'),
('Thanos', 'thanos.jpg'),
('thanos', 'thanos1.jpg'),
('Thor', 'thor1.jpg'),
('Thor', 'thor2.jpg'),
('Ultron', 'ultron.jpg'),
('wanda', 'wanda.jpg'),
('wanda', 'wanda1.jpg'),
('Wanda', 'wanda2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `index_text`
--

CREATE TABLE `index_text` (
  `Text0` varchar(255) DEFAULT NULL,
  `Text1` varchar(255) DEFAULT NULL,
  `Text2` varchar(255) DEFAULT NULL,
  `Text3` varchar(255) DEFAULT NULL,
  `Text4` varchar(255) DEFAULT NULL,
  `Text5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_text`
--

INSERT INTO `index_text` (`Text0`, `Text1`, `Text2`, `Text3`, `Text4`, `Text5`) VALUES
('Marvel', 'Marvel Avengers', 'The Avengers are a fictional team of superheroes that appears in American comic books published by Marvel Comics.\r\n', 'The Avengers are a fictional team of superheroes that appears in American comic books published by Marvel Comics. The team made its debut in The Avengers, created by writer-editor Stan Lee and artist/co-plotter Jack Kirby.', 'The Avengers are an all-star ensemble cast of established superhero characters from the Marvel Comics portfolio. Diegetically, these superheroes usually operate independently but occasionally assemble as a team to tackle especially formidable villains.', 'The Avengers were created to create a new line of books to sell and to cross-promote Marvel Comics characters. An Iron Man fan might buy an Avengers book because Iron Man appears in them,  Thor, who appears in the same book as Iron Mans friend and comrade');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_08_28_045344_create_registration', 2),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_Name` varchar(50) DEFAULT NULL,
  `Release_Date` varchar(20) DEFAULT NULL,
  `Status` char(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `Movie_ID` int(5) NOT NULL,
  `available_tickets` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_Name`, `Release_Date`, `Status`, `pic`, `Movie_ID`, `available_tickets`, `Price`) VALUES
('Deadpool-3', '2024-12-05', 'Deleted', 'mov5.jpg', 32108, 99, 500),
('Spiderman: Across the Multiverse', '2023-06-02', 'Upcoming', 'mov6.jpg', 32109, 10, 500),
('Doctor Strange: Multiverse of Madness', '2022-05-06', 'Available', 'mov3.jpg', 32110, 10, 500),
('Guardians of the Galaxy: Vol-3', '2023-05-05', 'Available', 'mov2.jpg', 32111, 6, 500),
('Antman: Quantamania', '2023-02-17', 'Available', 'mov1.jpg', 32112, 0, 500),
('Interstellar', '2024-06-29', 'Upcoming', '653f55d994d1c_wall2.jpg', 32113, 55, 499);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `Offer_ID` int(11) NOT NULL,
  `Coupon` varchar(255) NOT NULL,
  `Discount_amount` int(11) NOT NULL,
  `Expiry_Date` varchar(255) NOT NULL,
  `Minimum_price` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'Unused'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`Offer_ID`, `Coupon`, `Discount_amount`, `Expiry_Date`, `Minimum_price`, `Status`) VALUES
(1, 'hululu01', 500, '2023-11-03', 1000, 'Used'),
(2, 'hululu02', 500, '2023-10-03 15:24:16', 1000, 'Unused'),
(3, 'hululu03', 500, '2023-12-03 15:24:16', 1000, 'Unused'),
(4, 'hululu04', 600, '2023-12-03 15:24:16', 1000, 'Used'),
(5, 'hululu05', 1000, '2023-12-03 15:24:16', 2000, 'Used'),
(7, 'hululu07', 100, '2023-12-03 15:24:16', 1000, 'Unused'),
(8, 'hululu08', 200, '2023-12-03 15:24:16', 1000, 'Used'),
(9, 'hululu00', 1000, '2023-11-04', 5000, 'Unused');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Discount_Amount` int(11) NOT NULL,
  `Delivery_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `Product_id`, `User_id`, `Quantity`, `Price`, `Discount_Amount`, `Delivery_status`) VALUES
(25, 19045, 2, 1, 2999, 0, 'Delivered'),
(27, 62345, 2, 3, 3299, 0, 'Pending'),
(28, 12905, 2, 1, 1599, 0, 'Pending'),
(29, 12385, 2, 3, 3999, 0, 'Delivered'),
(30, 12905, 2, 1, 1599, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(10) NOT NULL,
  `OTP` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `Expire_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `OTP`, `email`, `created_at`, `Expire_date`) VALUES
(46, 206949, 'krishnugupta593@gmail.com', '2023-09-27 09:54:16', '2023-09-27 10:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Mobile_No` varchar(10) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Profile_Pic` varchar(255) DEFAULT 'Deafult.png',
  `Status` char(10) DEFAULT NULL,
  `Role` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `Bio` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Username`, `Email`, `Password`, `Mobile_No`, `Gender`, `Profile_Pic`, `Status`, `Role`, `id`, `Bio`) VALUES
('Amarjit Bhuj', 'amarjitbhuj606@gmail.com', 'Amarit@123', '1231231234', 'Male', 'users/650c7cc0cae12_Screenshot 2023-09-18 132419.png', 'Active', 'Admin', 1, ''),
('Krishnu Gupta', 'jack@gmail.com', 'Krishnu@1234', '1234567890', 'Female', 'users/653e0cf90fa98_Screenshot (14).png', 'Active', 'User', 2, 'Hey there! \r\nMy name is krishnu,\r\n\r\n😒'),
('Raghunath Yadav', 'official.ryadav777@gmail.com', '111', '9812919285', 'Male', 'users/6513c5e62ad7f_wallpaperflare.com_wallpaper (19).jpg', 'Active', 'Admin', 3, ''),
('krishnu', 'kgupta750@rku.ac.in', '111', '1234567890', 'Male', 'users/6512c54b39430_Screenshot 2023-09-18 132025.png', 'Active', 'User', 15, ''),
('Krishnu', 'john@gmail.com', 'Hello@1234', '1234567890', 'Male', 'users/65106d701ec59_wallpaperflare.com_wallpaper (6).jpg', 'Inactive', 'User', 17, NULL),
('krishnu Gupta', 'krishnugupta593@gmail.com', 'Krishnu@123', '1234567890', 'Male', 'users/6513c2d79a8c5_Screenshot 2023-09-18 131832.png', 'Deleted', 'User', 18, 'hgdfkfhk'),
('Jack', 'hello.123@gmail.com', '12345678', '9876543210', 'M', 'Default.png', 'Deleted', 'User', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_rating`
--

CREATE TABLE `review_rating` (
  `Rating_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Rating` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `deleted` text NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_rating`
--

INSERT INTO `review_rating` (`Rating_id`, `Product_id`, `Description`, `Rating`, `User_id`, `deleted`) VALUES
(1, 3, 'Good product', 3, 5, 'No'),
(6, 19045, 'k xa', 4, 2, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_book`
--

CREATE TABLE `ticket_book` (
  `Ticket_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Movie_id` int(11) NOT NULL,
  `Movie_picture` varchar(255) NOT NULL,
  `Ticket_date` varchar(255) NOT NULL,
  `Time` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_book`
--

INSERT INTO `ticket_book` (`Ticket_id`, `User_id`, `Quantity`, `Movie_id`, `Movie_picture`, `Ticket_date`, `Time`) VALUES
(4, 2, 1, 32112, 'mov1.jpg', '2023-11-02', '1PM');

-- --------------------------------------------------------

--
-- Table structure for table `top_movies`
--

CREATE TABLE `top_movies` (
  `Movie_Name` varchar(50) DEFAULT NULL,
  `Release_Date` varchar(20) DEFAULT NULL,
  `Total_Gross` int(255) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Movie_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_movies`
--

INSERT INTO `top_movies` (`Movie_Name`, `Release_Date`, `Total_Gross`, `Image`, `Movie_ID`) VALUES
('Spider-Man: No Way Home', '2021-12-17', 1921847111, 'mov9.jpg', 12219),
('Avengers: Infinity War', '2018-04-27', 2048359754, 'mov8.jpg', 12220),
('Avengers: Endgame', '2019-04-26', 2147483647, 'mov7.jpg', 12221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`Character_Name`);

--
-- Indexes for table `book_tickets`
--
ALTER TABLE `book_tickets`
  ADD PRIMARY KEY (`Ticket_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`Position`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `contact_msg`
--
ALTER TABLE `contact_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`Image`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`Offer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_rating`
--
ALTER TABLE `review_rating`
  ADD PRIMARY KEY (`Rating_id`);

--
-- Indexes for table `ticket_book`
--
ALTER TABLE `ticket_book`
  ADD PRIMARY KEY (`Ticket_id`);

--
-- Indexes for table `top_movies`
--
ALTER TABLE `top_movies`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_tickets`
--
ALTER TABLE `book_tickets`
  MODIFY `Ticket_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_msg`
--
ALTER TABLE `contact_msg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `franchise`
--
ALTER TABLE `franchise`
  MODIFY `Product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62347;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `Movie_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32114;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `Offer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `review_rating`
--
ALTER TABLE `review_rating`
  MODIFY `Rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_book`
--
ALTER TABLE `ticket_book`
  MODIFY `Ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
