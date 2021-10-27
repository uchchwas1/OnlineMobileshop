-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 07:13 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `c_id` int(5) NOT NULL,
  `r_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `r_name` varchar(50) NOT NULL,
  `pro_pic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`c_id`, `r_id`, `name`, `pass`, `email`, `contact`, `r_name`, `pro_pic`) VALUES
(1, 2, 'exchange', '1234', 'Exchange@yahoo.com', '01763256435', 'Exchange HUB', 'client_image/398854de52274c0cf2ca1628ee1f2292IMG_20181109_194247_745.jpg'),
(5, 11, 'Jamil', 'jamil123', 'jamil@gmail.com', '01342367971', 'Agora', 'client_image/ed469f1f1c33f3eb2308c9413c3844c669438227_358553351723522_4383299624929067008_n.jpg'),
(6, 9, 'pran1', 'pran1', 'pran@yahoo.com', '01452978489', 'Paramount Super Shop', ''),
(7, 1, 'Gadget', 'Gadget', 'GadgetGea@gmail.com', '01452978489', 'Gadget & Gear (G&G)', ''),
(8, 8, 'SAMSUNG', 'SAMSUNG', 'SAMSUNG@gmail.com', '01452978489', 'SAMSUNG', 'client_image/fa666797e74786fc0d876bb2d98cb0ceuchchwas-bb_600x600.jpeg'),
(9, 6, 'zim6', 'zim6', 'jamil@gmail.com', '01452978489', 'Priyo Shop', ''),
(10, 4, 'HEAWEI', 'HEAWEI', 'HEAWEI@gmail.com', '01452978489', 'HEAWEI, Jamuna', 'client_image/4630dcc5eeed81f61972cf937da663aa3YcF.jpg'),
(11, 5, 'Xiaomi', 'Xiaomi', 'Xiaomi@gmail.com', '01452978489', 'Xiaomi', 'client_image/a0b672a6174400b05393d2d734b444deXiaomi-Poco-M3-Pro-5G-image.jpg'),
(12, 3, 'zim3', 'zim3', 'jamil@gmail.com', '01452978489', 'Tamanna Super Shop', ''),
(13, 21, 'zim21', 'zim21', 'zim@gmail.com', '01666222777', 'Sneha Telecom', 'client_image/d50002c184038e07875609ee2ffe3f2ezim.jpg'),
(14, 22, 'uchch', '123', '123@gmail.com', '01785904633', 'Mobile Gallery Feni', ''),
(15, 23, 'tirtha', '123', '123@gmail.com', '01785904633', 'Smart mobile media', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(5) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `items` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_qty` varchar(5) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_catagory` varchar(50) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `r_id`, `items`, `price`, `product_qty`, `product_image`, `product_catagory`, `product_desc`, `code`) VALUES
(21, 6, 'Tomato Kg ', 30, '100', 'product_image/14b0e911b407378774528bcb804650f3images.jfif', 'vegetables', 'fresh', 6),
(22, 6, 'China Carrot', 60, '20', 'product_image/7e9f0d3b3baf0265d54bd6f72ef9db81unnamed.jpg', 'fruits', 'fresh', 666),
(24, 8, 'SAMSUNG RX9', 16999, '20', 'product_image/832777b626e1a731a93f077fc8a1419cWalton-Primo-RX9-image.jpg', 'Mobile', '', 88),
(25, 8, 'SAMSUNG i32', 6000, '10', 'product_image/bc5f83bb543fdec154f50d9ddc6c9484Symphony-i32-image.jpg', 'Mobile', '', 888),
(26, 8, 'SAMSUNG Note 10', 15990, '10', 'product_image/a89363afe78eb93eec191f57f6a0c1dfInfinix-Note-10-image.jpg', 'Mobile', '', 8888),
(27, 9, 'Cucumber', 20, '100', 'product_image/c6f4b578a71096a5723715ad8cd12dbdCucumber_SupremoHybrid1-Burpee.jpg', 'fruits', 'fresh', 99),
(28, 9, 'Chilli Green', 20, '10', 'product_image/fb20dab4afa849ffbcbef4d57566f780green chili.jpg', 'vegetables', 'spicy', 999),
(29, 9, 'Diamond Aloo (Potato)', 20, '20', 'product_image/ae8ffd9e81be1f12144050c9c616a9d983-diamond-potato-3.jpg', 'vegetables', 'new', 9999),
(30, 9, 'Lal Shak', 15, '20', 'product_image/dc251c1b1767363ed649ca669f1cd28bRED-SPINACH-(à¦²à¦¾à¦²-à¦¶à¦¾à¦à¦•).png', 'vegetables', 'new', 99999),
(34, 9, 'Ice-cream', 30, '20', 'product_image/a079a9213f99bd3fc3585a4343cc3234Ice cream 1.jfif', 'others', 'Very cold', 0),
(36, 11, 'Jamrul', 60, '100', 'product_image/ccf2c015e74b83d86537200a2ae975c1Jamrul.jpg', 'fruits', 'nice', 11),
(37, 11, 'Coconut ', 50, '20', 'product_image/62da64c2fe073c30a0a91d328a8eb82bfresh-green-coconut-diamond-316.jpg', 'fruits', 'fresh', 111),
(38, 11, 'Orange', 120, '150', 'product_image/521c2bfde2e7daeec00baf68f79d6ef1orange.jpg', 'fruits', 'juicy', 1111),
(39, 11, 'Guava', 40, '60', 'product_image/0d1a4180df961f0200257fd3c3436377igcxrqsxi.jpg', 'fruits', 'fresh', 11111),
(40, 11, 'Apple', 50, '100', 'product_image/46a8b2d3ce470b15684b142901b3586cpexels-photo-102104.jpeg', 'fruits', 'foreign', 111111),
(41, 11, 'koromca', 60, '100', 'product_image/f419701a54f3dbb7f8456ac473872ba4koromca.jpg', 'fruits', 'fresh', 1111111),
(42, 9, 'Indian Onion', 60, '100', 'product_image/f00b08b0458524807cee7ab04fabefb31578668031.jpg', 'vegetables', 'new', 0),
(43, 1, 'Xiaomi Poco M3 Pro', 23999, '10', 'product_image/2fce0526653a11a7c8b8575021821bfdXiaomi-Poco-M3-Pro-5G-image.jpg', 'Mobile', 'Xiaomi Poco M3 Pro 5G comes with 6.5 inches Full HD+ IPS LCD screen. It has a center punch-hole front camera design. The device is protected by a 3rd generation Gorilla Glasses in the front. The back camera is of triple 48+2+2 MP with PDAF, ultrawide, LED flash, dedicated macro camera, HDR, depth sensor etc. and 4K video recording. The front camera is of 8 MP. Poco M3 Pro 5G comes with 5000 mAh battery with a 18W Fast Charging. It has 6 GB RAM, up to 2.2 GHz octa-core CPU and Mali-G57 MC2 GPU. I', 0),
(44, 1, 'ZTE Nubia Alpha', 30000, '10', 'product_image/1651171fb57f982c7d0d679585dd93efZTE-Nubia-Alpha-black.jpg', 'Smart Watch', 'ZTE Nubia Alpha comes with 4.01 inches AMOLED screen. It has a wearable smartphone design. The single main camera is of 5 MP with f/2.2, 25mm (wide), 1.12Âµm etc. and up to 10 seconds video recording option. ZTE Nubia Alpha comes with 500 mAh battery with up to 48 hours stand-by time. It has 1 GB RAM, 1.1 GHz quad-core CPU and Adreno 304 GPU. It is powered by Qualcomm Snapdragon Wear 2100 chipset. The device comes with 8 GB internal storage and no MicroSD slot.\r\n\r\nAmong other features, there is ', 0),
(45, 1, 'OnePlus Nord 2 5G', 50000, '20', 'product_image/923010ec0f12f87dc946a4824dd25116OnePlus-Nord-2-5G-image.jpg', 'Mobile', 'Xiaomi Poco M3 comes with 6.53 inches Full HD+ IPS LCD screen. It has a waterdrop notch front camera design. The device is protected by a 3rd generation Gorilla Glass in the front. The back camera is of triple 48+2+2 MP with PDAF, f/1.8 aperture, LED flash, dedicated macro camera, HDR, depth sensor etc. and Full HD video recording. The front camera is of 8 MP. Poco M3 comes with 6000 mAh big battery with 18W Fast Charging support. It has 4 GB RAM, up to 2.0 GHz octa-core CPU and Adreno 610 GPU. ', 0),
(46, 1, 'itel Vision 2s', 8690, '20', 'product_image/5e0ab8cfd248988d916dc83f185c5f40itel-Vision-2s-image.jpg', 'Mobile', 'itel Vision 2s comes with 6.52 inches HD+ IPS LCD screen. It has a Full-View waterdrop notch design. The back camera is of dual 8+0.3 MP with autofocus, LED flash etc. features and Full HD video recording. The front camera is of 5 MP. itel Vision 2s comes with 5000 mAh battery. It has 2 GB RAM, 1.6 GHz octa-core CPU and PowerVR GE8322 GPU. It is powered by a UniSoC SC9863A (28 nm) chipset. The device comes with 32 GB internal storage and shared MicroSD slot. There is a back-mounted fingerprint s', 0),
(47, 1, 'Realme C21Y', 12490, '20', 'product_image/5f061842c93ed1d5c25999610754a499Realme-C21Y-image.jpg', 'Mobile', 'Realme C21Y comes with 6.5 inches HD+ IPS LCD screen. It has a full-view waterdrop notch design. The back camera is of triple 13+2+2 MP with PDAF, LED flash, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 5 MP. Realme C21Y comes with 5000 mAh big battery and 10W fast charging. It has 4 GB RAM, up to 2.3 GHz octa-core CPU and Mali G52 GPU. It is powered by a Unisoc T610 (12 nm) chipset. The device comes with 64 GB internal storage and dedicated Micro', 0),
(48, 1, 'Samsung Galaxy A52s', 42499, '20', 'product_image/3ab697829135768d4c81df6a208032fcSamsung-Galaxy-A52s-5G-image.jpg', 'Mobile', 'Samsung Galaxy A52s 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A52s 5G comes with 4500 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by a Qualcomm Snapdragon 720G (8 nm) chipset. The device comes wi', 0),
(49, 8, 'SAMSUNG SE', 55000, '50', 'product_image/d024d7fc2f03975fde51c137713e3f7dZTE-Nubia-Alpha-black.jpg', 'Mobile', '', 0),
(50, 8, 'Samsung Galaxy M02s', 20000, '20', 'product_image/d178f1f68b2c624f8c445d786757c397Realme-C21Y-image.jpg', 'Mobile', 'Infinix Note 10 comes with 6.95 inches Full HD+ screen. It has a punch-hole front camera design. The back camera is of triple 48+2+2 Megapixel with PDAF, monochrome camera, depth sensor, quad-LED flash, HDR etc. and Quad HD video recording. The front camera is of 16 MP. Infinix Note 10 comes with 5000 mAh battery with 18W fast charging solution. It has 6 GB RAM, up to 2 GHz octa-core CPU and Mali-G52 MC2 GPU. It is powered by a Mediatek Helio G85 (12 nm) chipset. The device comes with 128 GB int', 0),
(51, 8, 'SAMSUNG 40E 4G', 50000, '20', 'product_image/30789618637cc8144e44bd88c18e9e8a3YcF.jpg', 'Mobile', '', 0),
(52, 6, 'Vatika Hair Oil', 200, '20', 'product_image/f3fe3cde69bd6e1204e22581697e9d33vatika.jpg', 'rice-oil', 'authentic', 0),
(53, 6, 'Yellow-Capsicum', 20, '20', 'product_image/e79884724f503a57c2d7bf0e4f433fa5Yellow-Capsicum.jpg', 'vegetables', 'fresh', 0),
(54, 6, 'Teer  Soyabean Oil', 510, '20', 'product_image/7876f624868a173c4702ac3829f5e5c1teer oil.jpg', 'rice-oil', 'authentic', 0),
(55, 6, 'Prawn', 400, '20', 'product_image/ec074c3c767fc12b862d7f3b0c2141a8Chingri.jpg', 'meat-fish', 'deshi', 0),
(56, 4, 'Huawei Y7p', 30000, '20', 'product_image/11b0437528eef689da45e9bf66ca73e6Huawei-Y7p.jpg', 'Mobile', 'Huawei Y7p comes with 6.39 inches HD+ screen. It has a full-view minimal notch design. The back camera is of triple 48+8+2 MP with LED flash, PDAF, ultrawide, depth sensor etc. and Full HD video recording. The front camera is of 8 MP. Huawei Y7p comes with 4000 mAh battery with 10W fast charging. It has 4 GB RAM, up to 2.2 GHz octa-core CPU and Mali-G51 MP4 GPU. It is powered by a Hisilicon Kirin 710F (12 nm) chipset. The device comes with 64 GB internal storage and shared MicroSD slot. There is', 0),
(57, 4, 'Huawei Y6p', 3000, '20', 'product_image/b5008db1a7f98719c947bd1bb292e7f7Huawei-Y6p.jpg', 'Mobile', 'Huawei Y6p comes with 6.3 inches HD+ screen. It has a Full-View waterdrop notch design. The back camera is of triple 13+5+2 MP with PDAF, LED flash, ultrawide, depth sensor etc. features and Full HD video recording option. The front camera is of 8 MP. Huawei Y6p comes with 5000 mAh battery and 10W fast charging. It has 3 GB RAM, up to 2 GHz octa-core CPU and PowerVR GE8320 GPU. It is powered by Mediatek Helio P22 (12 nm) chipset. The device comes with 64 GB internal storage and dedicated MicroSD', 0),
(58, 4, 'Huawei Y7 Pro', 12000, '20', 'product_image/d203bd317691afb8670c68451b5ca1f6Huawei-Y7-Pro-2019-Black.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(62, 5, 'Xiaomi Poco M3 Pro 5G', 23999, '20', 'product_image/48adcab13023f109876cf65274e8e728Xiaomi-Poco-M3-Pro-5G-image.jpg', 'Mobile', 'Xiaomi Poco M3 Pro 5G comes with 6.5 inches Full HD+ IPS LCD screen. It has a center punch-hole front camera design. The device is protected by a 3rd generation Gorilla Glasses in the front. The back camera is of triple 48+2+2 MP with PDAF, ultrawide, LED flash, dedicated macro camera, HDR, depth sensor etc. and 4K video recording. The front camera is of 8 MP. Poco M3 Pro 5G comes with 5000 mAh battery with a 18W Fast Charging. It has 6 GB RAM, up to 2.2 GHz octa-core CPU and Mali-G57 MC2 GPU. I', 0),
(63, 5, 'Xiaomi Poco M2', 14999, '20', 'product_image/5485e660c2281e55ceb85df9b8a90ec7Xiaomi-Poco-M2-Reloaded-image.jpg', 'Mobile', 'Xiaomi Poco M2 Reloaded comes with 6.53 inches Full HD+ IPS LCD screen. It has a waterdrop notch front camera design. The device is protected by a 3rd generation Gorilla Glass in the front. The back camera is of quad 13+8+5+2 MP with PDAF, f/1.8 aperture, LED flash, dedicated macro camera, HDR, depth sensor etc. and Full HD video recording. The front camera is of 8 MP. Poco M2 Reloaded comes with 5000 mAh battery with 18W Fast Charging support. It has 4 GB RAM, up to 2.0 GHz octa-core CPU and Ma', 0),
(64, 5, 'Xiaomi Mi 11 Lite', 29999, '10', 'product_image/d2c68fbcc7ff6667c643a1bd8ebfa3baXiaomi-Poco-M3.jpg', 'Mobile', 'Xiaomi Poco M2 Reloaded comes with 6.53 inches Full HD+ IPS LCD screen. It has a waterdrop notch front camera design. The device is protected by a 3rd generation Gorilla Glass in the front. The back camera is of quad 13+8+5+2 MP with PDAF, f/1.8 aperture, LED flash, dedicated macro camera, HDR, depth sensor etc. and Full HD video recording. The front camera is of 8 MP. Poco M2 Reloaded comes with 5000 mAh battery with 18W Fast Charging support. It has 4 GB RAM, up to 2.0 GHz octa-core CPU and Ma', 0),
(65, 5, 'Xiaomi Mi 11 Lite', 29999, '20', 'product_image/ddffcb976e0270063efa051fe7b68547Xiaomi-Mi-11-Lite-image.jpg', 'Mobile', 'Xiaomi Mi 11 Lite comes with 6.55 inches Full HD+ AMOLED screen. It has a Full-View punch-hole design. The display is protected by 5th generation Gorilla Glass. The back camera is of triple 64+8+5 MP with PDAF, dual-LED flash, 119Âº ultrawide, dedicated macro camera, etc. and 4K video recording. The front camera is of 16 MP. Mi 11 Lite comes with 4250 mAh battery with 33W fast charging. It has 6 or 8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by a Qualcomm Snapdragon 7', 0),
(68, 3, 'Chicken-Leg', 120, '100', 'product_image/84f17d91f25a43446d098f2f8c9009cbChicken-Leg.jpg', 'meat-fish', 'fresh', 0),
(69, 3, 'Goose', 200, '20', 'product_image/6e45d51e508f2612488ed8a4122d7edfraw-goose.jpg', 'meat-fish', 'fresh and deshi', 0),
(70, 3, 'Mixed Capsicum', 50, '60', 'product_image/8c6d13fa2194fccec9fbf57d1cead828capsicum mixed.jpg', 'vegetables', 'fresh', 0),
(71, 3, 'Span Olive Oil', 100, '20', 'product_image/fa18f09e958dfd48c4a1ac48eb73c8adspan olive hair oil.jpg', 'rice-oil', 'new', 0),
(72, 3, 'Red Chili', 20, '20', 'product_image/563bdc4509493df3706341fdc8a8f52dred chili.jpg', 'vegetables', 'Fresh', 0),
(73, 3, 'Puredistance M Master Perfume', 200, '10', 'product_image/2fc5211ccd83f1797a6f995060004295master-perfume.png', 'others', 'Cool and small for easy carrying ', 0),
(75, 25, 'green Capcicum', 40, '5', 'product_image/999cdfcb0f5f5319f916434577283490capsicum green.jpg', 'vegetables', 'fresh', 0),
(76, 25, 'yellow capsicum', 40, '5', 'product_image/e79884724f503a57c2d7bf0e4f433fa5Yellow-Capsicum.jpg', 'vegetables', 'fresh', 0),
(77, 24, 'Koromcha', 45, '40', 'product_image/f419701a54f3dbb7f8456ac473872ba4koromca.jpg', 'fruits', 'fresh', 0),
(78, 24, 'Garlic', 160, '5', 'product_image/04965b8c47666beed94404adb341c301Garlic2.jpg', 'vegetables', 'deshi', 0),
(79, 23, 'Samsung Galaxy A52s', 12000, '10', 'product_image/3ba0a0383c9311df60e7e2e003113706Symphony-i32-image.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(80, 23, 'Huawei Mate 40E 4G', 80000, '5', 'product_image/d6dd7521b8f68213a2953e66602843a0Huawei-Y7-Pro-2019-Black.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(81, 22, 'Realme C21Y', 18000, '5', 'product_image/11f54e4ccc1978d2f8757fb549254e65Realme-C21Y-image.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(82, 21, 'Samsung Galaxy Fit2', 80000, '4', 'product_image/7ffe8e5649c25e2a5baca2a3e6900180ZTE-Nubia-Alpha-black.jpg', 'Smart Watch', '', 0),
(83, 21, 'Samsung Galaxy M02s', 55000, '4', 'product_image/c0e1cc4ba89af6f765b7e5ca95c72a7dInfinix-Note-10-image.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(84, 20, 'Lal Shak', 15, '5', 'product_image/dc251c1b1767363ed649ca669f1cd28bRED-SPINACH-(à¦²à¦¾à¦²-à¦¶à¦¾à¦à¦•).png', 'vegetables', 'fresh', 0),
(85, 20, 'Onion', 45, '5', 'product_image/f00b08b0458524807cee7ab04fabefb31578668031.jpg', 'vegetables', 'new', 0),
(86, 21, 'Huawei Mate 30E Pro 5G', 4, '55000', 'product_image/94bc731fd2154264d7ae2ce27729dd1aHuawei-Y7p.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(87, 22, 'Xiaomi Poco M3 Pro 5G', 33000, '4', 'product_image/f2217612346f5cda80244f990144e7e3Xiaomi-Poco-M3-Pro-5G-image.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(88, 22, 'Samsung Galaxy A52s', 55000, '10', 'product_image/42967edc44c0358fb3b360e92a49767fSamsung-Galaxy-A52s-5G-image.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(89, 23, 'Xiaomi Poco M3 Pro 5G', 22000, '10', 'product_image/94f54ebf5fc378551f876c2f052489e9Xiaomi-Poco-M3.jpg', 'Mobile', 'Huawei Y7 Pro 2019 comes with a so-called dewdrop notch display. The notch looks similar to a drop of dew thatâ€™s why itâ€™s called like this or this observation of nature inspired the design idea. It also comes with a small LED notification light which is hidden above the front camera. The display is a large 6.26 inches HD+ one with decent quality. The backside is made of plastic, but it has a polished ceramic-like texture which looks pleasant especially in the Aurora Blue version. The design ', 0),
(90, 20, 'Potato', 18, '10', 'product_image/b243ad11f5ad7eddf0b5fddbbe5a262683-diamond-potato-3.jpg', 'vegetables', 'new', 0),
(91, 25, 'red capsicum', 45, '4', 'product_image/1ed6270eb9ee4797644c419d281406c0Capsicum red.jpg', 'fruits', 'fresh', 0),
(92, 26, 'Donuts', 80, '10', 'product_image/dbc02541fd4c5d800b6d0517abc1fc1fDonuts.png', 'sweets', 'yammy', 0),
(93, 26, 'Mixed Sweets', 550, '45', 'product_image/154c842d9adee29cb8bdded7ee421f190002g8wz.jpeg', 'sweets', 'tasty', 0),
(94, 26, 'Vegan Jelly', 330, '10', 'product_image/d75fbdbfa9909eeaa8f0ef423f478c64vegan-jelly-recipe-2.jpg', 'sweets', 'Sweety', 0),
(95, 24, 'Biscuits', 80, '4', 'product_image/11cc00b4100e428577286f95c05044e4biscuits.jpg', 'sweets', 'crancy', 0),
(96, 27, 'Sondesh', 220, '10', 'product_image/86df909929b9a837a37ada76ac3596398-5.jpg', 'sweets', 'yammy', 0),
(97, 27, 'Laddu', 220, '45', 'product_image/4c0d4008bb0e95bb4c7b916ea5652130misti.jpg', 'sweets', 'sweets', 0),
(98, 27, 'Cocacola', 80, '45', 'product_image/6fd38b0b8b4d5b6e9707cc29404fcf6ccock.jpg', 'sweets', 'cool', 0),
(99, 2, 'Samsung Galaxy A52s', 45000, '20', 'product_image/808f6dd0fc3c524563fdbaff35c9338bSamsung-Galaxy-A52s-5G-image.jpg', 'Mobile', 'Samsung Galaxy A52s 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A52s 5G comes with 4500 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by a Qualcomm Snapdragon 720G (8 nm) chipset. The device comes wi', 0),
(100, 2, 'OnePlus Nord 2 5G', 35000, '20', 'product_image/05ce302d2001ea6914d04ef39a30236dOnePlus-Nord-2-5G-image.jpg', 'Mobile', 'Samsung Galaxy A52s 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A52s 5G comes with 4500 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by a Qualcomm Snapdragon 720G (8 nm) chipset. The device comes wi', 0),
(101, 2, 'ZTE Nubia Alpha', 35000, '10', 'product_image/42eb663385afaaa2ff201c95a28157d2itel-Vision-2s-image.jpg', 'Mobile', 'Samsung Galaxy A52s 5G comes with 6.5 inches Full HD+ Super AMOLED screen. It has a center punch-hole front camera design. The back camera is of Quad 64+12+5+5 with PDAF, OIS, ultrawide, depth sensor, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 32 MP. Galaxy A52s 5G comes with 4500 mAh battery with 25W fast charging. It has 8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by a Qualcomm Snapdragon 720G (8 nm) chipset. The device comes wi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `s_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `r_name` varchar(200) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`s_id`, `r_id`, `r_name`, `location`, `lat`, `lng`) VALUES
(1, 1, 'Gadget & Gear (G&G)', 'Bashundhara', 23.813891, 90.423467),
(1, 2, 'Exchange HUB', 'Bashundhara R/A, Jamuna, Dhaka 1212', 23.791441, 90.40997),
(3, 3, 'Huawei, Suvastu', 'Suvastu, Dhaka 1212', 23.795931, 90.414934),
(1, 4, 'HEAWEI, Jamuna', 'Bashundhara R/A', 23.812171, 90.422345),
(1, 5, 'XIAOMI', 'Jamuna Future Park, Bashundhara R/a, Dhaka 1229', 23.814047, 90.423417),
(2, 6, 'Apple Gadgets', 'Bashundhara City, panthpoth', 23.7506, 90.390604),
(1, 8, 'SAMSUNG', 'Ka-54, Jamuna future park, Dhaka 1229', 23.812207, 90.423111),
(3, 9, 'Gadget Duniya', 'Shopping Complex, Suvastu Nazar Valley', 23.7895817, 90.4231543),
(3, 11, 'Mobile Mart', 'Shop No-4/125, Suvastu Najar Valley', 23.7895817, 90.4231543),
(3, 20, 'A.T Telecom', 'Office 4-8, 4th Floor, Suvastu Nazar Valley', 23.7895817, 90.4231543),
(5, 21, 'Sneha Telecom', '1st Floor, Mohipal Plaza, Shahid Shahidullah Kaisar Rd, Mohipal', 23.0093262, 91.3803802),
(5, 22, 'Mobile Gallery Feni', '1st Floor, Mohipal Plaza, Shahid Shahidullah Kaisar Rd, Mohipal', 23.0093262, 91.3803802),
(5, 23, 'Smart mobile media', 'MohipalPlaza, Feni', 23.0093262, 91.3803802),
(4, 24, 'Maya Telecom', 'Shop No-558, 4th Floor, Motalib Plaza', 23.7421021, 90.3900484),
(4, 25, 'Western Mobile Gallery', ' Shop 523/b, Motalib Plaza, 4th Floor', 23.7421021, 90.3900484),
(4, 26, 'Alap Telecom', '509, 4th Floor, Motalib Plaza', 23.7421021, 90.3900484),
(2, 27, 'S.R. Mobile BD', 'Shop-44, Level-5, Block-B, Basundhara City', 23.7506, 90.390604),
(2, 30, 'Rio International', 'bashundhara city ', 23.7506, 90.390604);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `r_id` int(11) NOT NULL,
  `order_details` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`, `contact`, `r_id`, `order_details`, `status`) VALUES
(22, 'jamil', 'jamil@gmail.com', '0e2cc23df7e37a854499f9d918b0219d', 'basundhara', '+01826210857', 11, '[{\"Shop_ID\":\"11\",\"item_name\":\"Jamrul\",\"item_price\":\"60\",\"item_quantity\":\"1\"}]', 'Shipped'),
(23, 'uchchwas', 'uchchwas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'basundhara', '+01826210857', 11, '[{\"Shop_ID\":\"11\",\"item_name\":\"Coconut \",\"item_price\":\"50\",\"item_quantity\":\"1\"}]', 'Delivered'),
(24, 'pran', 'pran@gmail.com', 'eb7f6212f3c4c2b175e968080dd5eb17', 'gaibandha', '+01342444777', 2, '[{\"Shop_ID\":\"2\",\"item_name\":\"Red Capsicum\",\"item_price\":\"30\",\"item_quantity\":\"1\"}]', 'Pending'),
(25, 'uchchwasdas', 'uchchwas.das@northsouth.edu', '202cb962ac59075b964b07152d234b70', 'bashundhara', '+01834856800', 0, '', ''),
(26, 'tirtha', 'uchchwasdasdev@gmail.com', '202cb962ac59075b964b07152d234b70', 'Bashundhara R/A', '+01785904633', 8, '[{\"Shop_ID\":\"8\",\"item_name\":\"SAMSUNG i32\",\"item_price\":\"6000\",\"item_quantity\":\"1\"},{\"Shop_ID\":\"8\",\"item_name\":\"Realme C21Y\",\"item_price\":\"12490\",\"item_quantity\":\"1\"}]', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
