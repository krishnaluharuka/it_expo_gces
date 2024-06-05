-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 11:28 PM
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
-- Database: `hi5treasures`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `about_us` mediumtext NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `insta_link` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `viber_link` varchar(255) NOT NULL,
  `whatsapp_link` varchar(255) NOT NULL,
  `extra_info` mediumtext NOT NULL,
  `motto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `company_name`, `company_logo`, `about_us`, `location`, `email`, `phone`, `insta_link`, `fb_link`, `viber_link`, `whatsapp_link`, `extra_info`, `motto`) VALUES
(1, 'Hi5treasures._.pkr', 'logo.jpg', 'Delivering happiness through the gifts....Designed with style and love....We do delivery all over Nepal....In a fast-paced world where meaningful moments with loved ones can slip through our fingers and the demands of daily life often conceal the things that truly matter, Hi5treasures is your partner in nurturing genuine human connections that you dearly crave. For 5 wonderful years, we have not only added extra sparkle to numerous celebrations but have also touched many souls and treasured countless relationships. Our journey has always walked hand in hand with your evolving needs and changing tastes. And every gift within our collection, whether it be a bouquet, or a personalised keepsake, has carried a story of love, gratitude, and affection.\r\n\r\n The heart of Hi5treasures remains unwavering in its commitment to satisfy its customers...After all, we do not just deliver gifts; we facilitate the expression of your feelings and the forging of deep ties with those you cherish. This promise has been our guiding light for years, it shines with even more warmth to help you keep that flame of love blazing!!!', 'Pokhara', 'hi5treasures.pkr@gmail.com', '9846907548', 'https://www.instagram.com/hi5treasures._.pkr', 'https://www.facebook.com/hi5treasures', 'viber://chat?number=9846907548', 'https://wa.me/9846907548', 'Gifts That Speak the Language of Love!!!....\r\nThere is no better way of expressing love to your dearest one than through thoughtful gifts! The language of love is a universal one, and we all know that sometimes words alone are not enough. What is more, the best way to show someone you love them is by giving them something that truly conveys the feelings you have for them. And what better way to do so than with gifts that express your affection? At Hi5treasures, we understand these sentiments and bring you a wide range of exquisite gifts online. From beautiful flowers to tempting chocolates and emotional handicraft items to meaningful gifts and personalized items, we have got all your gifting needs covered. Whether it is for birthdays, anniversaries, or special occasions like Mothers Day, Fathers Day, Friendship Day, Dashain, Tihar and Valentines Day, Hi5treasures has the perfect gift selection, to make your loved ones feel cherished. Our commitment to quality and customer satisfaction is evident in every gift we deliver. With our extensive collection of romantic flowers, personalized items, and convenient same-day delivery on valentine gifts, Hi5treasures is your ideal gifting platform for every memorable occasion.', 'feed your soul');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`product_id`, `quantity`, `ip_address`, `user_id`) VALUES
(11, 1, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Bouquet'),
(2, 'Hamper'),
(3, 'Frame'),
(4, 'Mug'),
(5, 'Exploision Box'),
(6, 'Message Jar'),
(7, 'Corporate Gifts'),
(8, 'Scrapbook'),
(9, 'Tower'),
(13, 'Doll'),
(15, 'Letters');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply` text NOT NULL,
  `reply_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `username`, `message`, `message_time`, `reply`, `reply_time`, `is_read`, `is_seen`) VALUES
(1, 'Krishna', 'I need a bouquet', '2024-05-19 16:27:33', 'what type of bouquet would you like to have...?', '2024-05-19 16:31:19', 1, 1),
(2, 'Krishna', 'i need chocolate bouquet...', '2024-05-19 16:33:31', 'ok up to when do you need?', '2024-05-20 01:30:02', 1, 1),
(3, 'Sunil', 'I need a bouquet...', '2024-05-20 01:52:32', 'ok..of which flower do you need', '2024-05-20 01:53:27', 1, 1),
(4, 'Sunil', 'Red Roses', '2024-05-20 02:48:44', 'how many roses bouquet do u need', '2024-05-23 08:34:24', 1, 1),
(5, 'aashish', 'Hi, I have received the product. Thank you', '2024-05-21 09:27:07', 'We are please to hear this', '2024-05-21 09:31:54', 1, 1),
(6, 'Kusum', 'hello, help me find a gift for my mom', '2024-05-21 09:58:43', 'would you like to gift frame to your mother', '2024-05-21 10:00:27', 1, 1),
(7, 'Kusum', 'yes', '2024-05-21 10:50:50', 'i am ghj', '2024-05-21 10:53:29', 1, 1),
(8, 'Sunil', 'how much does it cost?', '2024-05-23 01:26:05', '', '2024-05-23 08:34:34', 1, 0),
(9, 'Manoj', 'I need a teddy without chocolates', '2024-05-23 15:24:53', 'Ok which colour teddy do you need?', '2024-05-23 15:28:31', 1, 1),
(13, 'Prakriti Sharma', 'I need a bouquet', '2024-05-23 18:20:39', 'Which bouquet do you need?', '2024-05-23 18:21:16', 1, 1),
(15, 'Prakriti Sharma', 'under 1000', '2024-05-23 18:37:59', 'ok...which color rose do you need?', '2024-05-23 18:46:56', 1, 1),
(16, 'Prakriti Sharma', 'Red', '2024-05-23 18:47:31', '', '2024-05-23 18:47:31', 0, 1),
(17, 'Krishna', 'i want to keep a small note with the flower, is it possible?', '2024-05-24 11:38:53', 'Yes for sure...what would you like to write in your message?', '2024-05-24 16:34:53', 1, 1),
(18, 'Krishna', 'so how much does the gypsy cost? if we take a dozen of bouquet', '2024-05-24 16:33:21', 'you will get 5% discount', '2024-05-24 16:35:24', 1, 1),
(19, 'Krishna', 'I need the bouquet within two days..', '2024-05-24 16:36:24', 'Sure...', '2024-05-24 16:41:47', 1, 1),
(20, 'Krishna ', 'thank you', '2024-05-25 09:26:31', '', '2024-05-25 09:26:31', 0, 1),
(21, 'Krishna', 'I need to write a message..', '2024-05-26 14:30:14', 'What message would you like to write..', '2024-05-26 14:31:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback`, `date`) VALUES
(1, 2, 'Thank you for making my day so special....', '2024-05-19 16:24:56'),
(2, 4, 'I liked the way you do the small detailings of each moment....Thank you', '2024-05-20 01:51:34'),
(3, 5, 'The experience of shopping with hi5treasures was amazing. ', '2024-05-21 09:26:09'),
(4, 9, 'Thank you for your remarkable service.', '2024-05-24 15:37:32'),
(5, 10, 'Thank you!', '2024-05-24 15:59:27'),
(6, 8, 'It was just wow experience.', '2024-05-24 16:02:16'),
(7, 11, 'Gorgeous aani beautifully decorated book\r\nThankyou so much❤️', '2024-05-24 16:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 2, 998533833, 11, 1, 'pending'),
(2, 4, 178557446, 11, 2, 'pending'),
(3, 4, 134275301, 11, 1, 'pending'),
(4, 5, 1165536771, 11, 1, 'pending'),
(5, 6, 561038403, 12, 400, 'pending'),
(6, 4, 839024094, 10, 3, 'pending'),
(7, 4, 1594759180, 11, 400, 'pending'),
(8, 4, 732599866, 17, 1, 'pending'),
(9, 2, 111678117, 14, 1, 'pending'),
(10, 2, 541028527, 13, 2, 'pending'),
(11, 2, 575709435, 15, 1, 'pending'),
(12, 2, 1775465652, 17, 1, 'pending'),
(13, 7, 890566141, 13, 1, 'pending'),
(14, 7, 779993117, 19, 1, 'pending'),
(15, 7, 1937867251, 11, 1, 'pending'),
(16, 7, 664100614, 15, 1, 'pending'),
(17, 2, 1575797388, 13, 2, 'pending'),
(18, 9, 1673232980, 11, 1, 'pending'),
(19, 10, 944472724, 11, 1, 'pending'),
(20, 8, 55360520, 14, 1, 'pending'),
(21, 11, 1530539969, 19, 1, 'pending'),
(22, 2, 14809604, 14, 1, 'pending'),
(23, 2, 189857819, 13, 5, 'pending'),
(24, 2, 1018401251, 16, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(11, 'Mini Album', '25 photos...', ' handmade, scrapbook, handmadegifts, love, giftideas, gift, gifts, giftsforhim, craft, art, birthdaygift, surprisebox, anniversarygift, handmadecards, giftbox, scrapbooking, birthday, handmadewithlove, photos, crafts, anniversarygifts, explosionboxes, gif', 0, 'photobox2.jpg', 'photobox.jpg', 'photobox2.jpg', 550, '2024-05-23 01:07:48', 'true'),
(13, 'Gypsy Bouquet', 'gypsy bouquet will be white in color...they will look just wow...', 'gypsy, flower, bouquet, gypsy bouquet', 1, 'gypsy1.jpg', 'gypsy.jpg', 'gypsy1.jpg', 800, '2024-05-23 00:39:17', 'true'),
(14, 'Religious Frame', 'These gifts are the one that keeps on giving.', 'photoframes, photoframe, giftideas gift, homedecor, frame, photography, giftsforhim, handmadegifts, love, art, handmade, personalisedgifts, anniversarygift, photo, anniversarygifts, pictureframes, giftforher, birthday, customizedgifts, birthdaygift', 3, 'frame9.jpg', 'frame7.jpg', 'frame8.jpg', 1500, '2024-05-23 00:40:46', 'true'),
(15, 'Chocolate Hamper', 'This delightful hamper of chocolate will add memories that go beyond just a day. This unique hamper of chocolate is sure to leave them aww-struck and win you a special place in their heart.', 'chocolate, hamper, gifts, corporate gifts', 0, 'hamper1.jpg', 'hamper6.jpg', 'hamper3.jpg', 3500, '2024-05-23 01:13:19', 'true'),
(16, 'Teddy Bear', 'Cute dolls add an extra pinch of sweetness in life!', 'teddy, doll, gift, baby, pink, brown, soft, beautiful, asthetic', 13, 'teddycombo.jpg', 'teddy1.jpg', 'teddy.jpg', 3500, '2024-05-23 00:49:59', 'true'),
(17, 'Eiffel Tower', 'One tower, many memories.', 'tower, eiffel tower, photos, photos, chocolate, ring, surprise, couple ring, purpose, purposal, cute, cute gifts', 9, 'tower1.jpg', 'tower3.jpg', 'eiffeltower.jpg', 1100, '2024-05-23 00:53:26', 'true'),
(18, 'Cake Box', 'This delightful box of chocolate will add memories that go beyond just a day. ', 'chocolate, chocoboxt, cake, cake tower, chocolates, chocolate, friendship, love, chocolatelovers, chocolatecake, yummy, sweet, food, cake, delicious, chocolovers, foodie, sweets, chocolatelove, chocolateaddict, darkchocolate, dessert, gifts, birthday', 5, 'customizedbox2.jpg', 'customizedbox4.jpg', 'customizedbox3.jpg', 2100, '2024-05-23 00:57:19', 'true'),
(19, 'Scrapbook', 'This book has messages with lots of emotions and memories', 'photos, book, memories, birthday, anniversary, him, her', 8, 'scrapbook.jpg', 'scrapbook2.jpg', 'letter1.jpg', 1800, '2024-05-23 01:00:19', 'true'),
(20, 'Letter', 'This unique and emotional is sure to leave him/her aww-struck.', 'letter, message, emotion, him ,her, letters, messages, feelings', 15, 'letter2.jpg', 'letter3.jpg', 'letter1.jpg', 999, '2024-05-23 01:06:12', 'true'),
(21, '52 messages jar', 'Messages filled with emotions, feelings and memories..', 'message jar, messages, emotions, emotional, message', 6, '52messagejar3.jpg', '52messagejar4.jpg', 'messagejar.jpg', 1100, '2024-05-24 02:12:31', 'true'),
(22, 'Customized Mug', 'A sip with sweet sweet memories', '#mug, mug, ', 0, 'mug1.jpg', 'mug2.jpg', 'mug4.jpg', 1100, '2024-05-24 16:39:21', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(1, 2, 550, 998533833, 1, '2024-05-19 16:26:28', 'Complete'),
(2, 4, 3500, 178557446, 2, '2024-05-20 01:55:55', 'Complete'),
(3, 4, 1750, 134275301, 2, '2024-05-20 02:48:25', 'pending'),
(4, 5, 550, 1165536771, 1, '2024-05-21 09:24:40', 'Complete'),
(5, 6, 49200, 561038403, 1, '2024-05-21 10:49:35', 'pending'),
(6, 4, 3600, 839024094, 1, '2024-05-21 21:25:14', 'pending'),
(7, 4, 700000, 1594759180, 2, '2024-05-23 00:36:01', 'pending'),
(8, 4, 1100, 732599866, 1, '2024-05-23 01:58:07', 'pending'),
(9, 2, 2300, 111678117, 2, '2024-05-23 08:17:32', 'pending'),
(10, 2, 1600, 541028527, 1, '2024-05-23 09:46:18', 'Complete'),
(11, 2, 3500, 575709435, 1, '2024-05-23 14:07:12', 'pending'),
(12, 2, 1100, 1775465652, 1, '2024-05-23 14:12:02', 'pending'),
(13, 2, 0, 432430509, 0, '2024-05-23 14:16:09', 'pending'),
(14, 7, 800, 890566141, 1, '2024-05-23 15:24:16', 'Complete'),
(15, 7, 1800, 779993117, 1, '2024-05-23 16:38:59', 'pending'),
(16, 7, 550, 1937867251, 1, '2024-05-23 16:46:36', 'pending'),
(17, 7, 3500, 664100614, 1, '2024-05-23 17:08:29', 'pending'),
(18, 7, 0, 332504961, 0, '2024-05-23 17:19:52', 'pending'),
(19, 2, 1600, 1575797388, 1, '2024-05-24 11:39:46', 'Complete'),
(20, 9, 550, 1673232980, 1, '2024-05-24 15:37:50', 'Complete'),
(21, 10, 550, 944472724, 1, '2024-05-24 15:59:10', 'Complete'),
(22, 8, 1500, 55360520, 1, '2024-05-24 16:01:03', 'Complete'),
(23, 11, 1800, 1530539969, 1, '2024-05-24 16:10:08', 'Complete'),
(24, 2, 2300, 14809604, 2, '2024-05-24 16:41:15', 'Complete'),
(25, 2, 4000, 189857819, 1, '2024-05-25 09:27:21', 'Complete'),
(26, 2, 12900, 1018401251, 2, '2024-05-26 14:32:19', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(1, 1, 998533833, 550, 'Mobile Banking', '2024-05-19 16:26:28'),
(2, 2, 178557446, 3500, 'esewa', '2024-05-20 01:55:55'),
(3, 4, 1165536771, 550, 'Pay offline', '2024-05-21 09:24:39'),
(4, 10, 541028527, 1600, 'Mobile Banking', '2024-05-23 09:46:16'),
(5, 14, 890566141, 800, 'Mobile Banking', '2024-05-23 15:24:16'),
(6, 19, 1575797388, 1600, 'esewa', '2024-05-24 11:39:45'),
(7, 20, 1673232980, 550, 'Mobile Banking', '2024-05-24 15:37:49'),
(8, 21, 944472724, 550, 'esewa', '2024-05-24 15:59:10'),
(9, 22, 55360520, 1500, 'esewa', '2024-05-24 16:01:03'),
(10, 23, 1530539969, 1800, 'esewa', '2024-05-24 16:10:08'),
(11, 24, 14809604, 2300, 'Cash on delivery', '2024-05-24 16:41:15'),
(12, 25, 189857819, 4000, 'Mobile Banking', '2024-05-25 09:27:20'),
(13, 26, 1018401251, 12900, 'Mobile Banking', '2024-05-26 14:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `verify_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`, `user_type`, `verify_token`, `created_at`) VALUES
(1, 'Arohi Mittal', 'arohimittal00@gmail.com', '$2y$10$eaKJKZQmEGmbRRA9YPj6TO.oBfQlPSgerr3SN340mDrLhsYeE73Ti', 'admin2.jpg', '::1', 'pokhara', '9846907548', 'Admin', '', '2024-06-01 01:33:29'),
(2, 'Krishna', 'krishna@gmail.com', '$2y$10$dlZh1DRbcOUgPN1MEtkmWuCpiUOydlIQq9V8Y3quzoaM3BxINHYgy', 'reviews4.png', '::1', 'pkr', '9869141935', 'User', '', '2024-06-01 01:33:29'),
(4, 'Sunil', 'sunil4mamata@gmail.com', '$2y$10$DDCmsVVzu96KWvU1ILOeAO.al0MVmkiUpECat0UV1q5tpeoeIKReK', 'reviews2.jpg', '::1', 'pokhara', '9846024225', 'User', '', '2024-06-01 01:33:29'),
(5, 'aashish', 'ashishchapain86@gmail.com', '$2y$10$zrNGe3m4DySbJvKTcnhUye84ewvPY2jWYJ64FYjyTknBTvxFgpdBO', 'reviews2.jpg', '::1', 'Masbar. 7 Pokhara Kaski', '9840221385', 'User', '', '2024-06-01 01:33:29'),
(6, 'Kusum', 'kusum@gmail.com', '$2y$10$qzm178/2vpORKamLDIFqXuBVdYhg7kQ55Uj8F4GEDcqjRm5co3fKi', 'reviews4.png', '::1', 'pokhara', '987654321', 'User', '', '2024-06-01 01:33:29'),
(7, 'Manoj', 'manoj@gmail.com', '$2y$10$Zb.s0wJYDmyUAaK87Xa3p.N/VorHkPrsgfHXy8MaVb0qe7.q0BABS', 'reviews2.jpg', '::1', 'pokhara', '9846083083', 'User', '', '2024-06-01 01:33:29'),
(8, 'Prakriti Sharma', 'prakriti@gmail.com', '$2y$10$IeQZTbcYdSuJzounsEBSReFwYpUrIfw2Apa8ZFZM.Ugktlmqt3vZ2', 'reviews4.png', '::1', 'pokhara', '9869141355', 'User', '', '2024-06-01 01:33:29'),
(9, 'Prijan Shrestha', 'prijan@gmail.com', '$2y$10$d3znf3/otntcgbN.aP5HROXje1LPM.jJD89xjz6/GD/7q/IR82VLe', 'reviews2.jpg', '::1', 'pokhara', '9876545678', 'User', '', '2024-06-01 01:33:29'),
(10, 'Shreya Bharati', 'shreya@gmail.com', '$2y$10$ngCCA1brkvztthlOw2nZ8ed6Gk6MeZ/aGqNUiRggE8NzaJhstD2LG', 'reviews4.png', '::1', 'pokhara', '9876756565', 'User', '', '2024-06-01 01:33:29'),
(11, 'Kabita Magar', 'kabita@gmail.com', '$2y$10$EL1OA7UsuMkLPAAJdGzgLulZl7XLrGbuWe/UgXxbSbhFbVOqSfcwa', 'reviews4.png', '::1', 'pokhara', '9876765656', 'User', '', '2024-06-01 01:33:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
