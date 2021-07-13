-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 07:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbank`
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
(1, 2, 'HUAWEI', 'HUAWEI123', 'HUAWEI@yahoo.com', '01785904633', 'HUAWEI', 'client_image/huawei_user.png'),
(5, 11, 'OPPO', 'OPPO123', 'OPPO@gmail.com', '01785904633', 'OPPO', 'client_image/oppo_user.png'),
(6, 9, 'SAMSUNG', 'samsung123', 'SAMSUNG@yahoo.com', '01785904633', 'SAMSUNG', 'client_image/samsung_user.png'),
(7, 1, 'Apple', 'Apple123', 'apple@gmail.com', '01785904633', 'APPLE', 'client_image/apple_user.jpg'),
(8, 8, 'Xiaomi', 'Xiaomi123', 'xiaomi@gmail.com', '01785904633', 'xiaomi', 'client_image/xiaomi_user.png'),
(9, 6, 'zim6', 'zim6', 'jamil@gmail.com', '01452978489', 'Priyo Shop', ''),
(10, 4, 'zim4', 'zim4', 'jamil@gmail.com', '01452978489', 'Genius Shopping Center', ''),
(11, 5, 'zim5', 'zim5', 'jamil@gmail.com', '01452978489', 'Bashundhara Super Shop', ''),
(12, 3, 'zim3', 'zim3', 'jamil@gmail.com', '01452978489', 'Tamanna Super Shop', ''),
(13, 21, 'zim21', 'zim21', 'zim@gmail.com', '01666222777', 'Alhaz Super Market', 'client_image/d50002c184038e07875609ee2ffe3f2ezim.jpg');

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
(2, 2, 'Huawei Mate 40E 4G', 60000, '20', 'product_image/5ea93324d9d849acdcbbe1a43b9f3324Huawei-Mate-40E-White.jpg', 'Mobile', '', 222),
(3, 2, 'Huawei MatePad 11 (2021)', 45000, '10', 'product_image/3b6c82184194e9b228737f5d8adcd583Huawei-MatePad-11-2021.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, June 02\r\nStatus\r\nComing soon. Exp. release 2021, July 13\r\nNetwork\r\nTechnology\r\nNo cellular connectivity\r\n2G bands\r\nN/A\r\n3G bands\r\nN/A\r\n4G bands\r\nN/A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nSIM\r\nNo\r\nOthers\r\nStylus support (magnetic)\r\nDisplay\r\nType\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize\r\n10.95 inches, 347.7 cm2\r\nResolution\r\n2560 x 1600 pixels, 16:10 ratio (~276 ppi density)\r\nMultitouch\r\nPlatform\r\nOS\r\nHarmonyOS 2.0\r\nChipset\r\nQualcomm SM8250 Snapdragon 865 5G', 2222),
(4, 2, 'Huawei Watch 3 Pro', 50000, '20', 'product_image/b915cac844a60d1788b4ece75f00b661Huawei-Watch-3-Pro.jpg', 'Smartwatch', 'Announced\r\n2021, June 02\r\nStatus\r\nAvailable. Released 2021, June 11\r\nNetwork\r\nTechnology\r\nHSPA / LTE\r\n2G bands\r\nN/A\r\n3G bands\r\nHSDPA 850 / 900 / 1800 / 1900 / 2100 / 800\r\n4G bands\r\n1, 3, 5, 6, 7, 8, 9, 18, 19, 20, 26, 38, 39, 40, 41\r\nSpeed\r\nHSPA, LTE\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n48 x 49.6 x 14 mm (1.89 x 1.95 x 0.55 in)\r\nWeight\r\n63 g (2.22 oz)\r\nBuild\r\nGlass front, ceramic back, titanium frame\r\nSIM\r\neSIM\r\nOthers\r\n50m water resistant\r\n5 ATM\r\nDisplay\r\nType\r\nAMOLED capacitive touchscreen, 16M colo', 22222),
(21, 6, 'Tomato Kg ', 30, '100', 'product_image/14b0e911b407378774528bcb804650f3images.jfif', 'vegetables', 'fresh', 6),
(22, 6, 'China Carrot', 60, '20', 'product_image/7e9f0d3b3baf0265d54bd6f72ef9db81unnamed.jpg', 'fruits', 'fresh', 666),
(24, 8, 'Xiaomi Mi Watch Revolve Active', 12000, '20', 'product_image/59a1bb13ff19261ffa64be22f614563fXiaomi-Mi-Watch-Revolve-Active.jpg', 'Smartwatch', 'Launch\r\nAnnounced\r\n2021, June 22\r\nStatus\r\nAvailable. Released 2021, June 25\r\nNetwork\r\nTechnology\r\nNo cellular connectivity\r\n2G bands\r\nN/A\r\n3G bands\r\nN/A\r\n4G bands\r\nN/A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n53.4 x 45.9 x 11.8 mm (2.10 x 1.81 x 0.46 in)\r\nWeight\r\n32 g (1.13 oz)\r\nBuild\r\nGlass front, plastic frame, plastic back\r\nSIM\r\nNo\r\nOthers\r\nWaterproof (5ATM)\r\nDisplay\r\nType\r\nAMOLED capacitive touchscreen, 16M colors\r\nSize\r\n1.39 inches, 12.5 cm2 (~51.1% screen-to-body ratio)\r\nResolution\r\n454 x 454 pixels', 88),
(25, 8, 'Xiaomi Redmi Note 10 Pro', 25000, '10', 'product_image/bd59c9c80cd0e0f37bf2aeac345f4e4bXiaomi-Redmi-Note-10-Pro-China-Blue.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, May 26\r\nStatus\r\nAvailable. Released 2021, June 02\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 18, 19, 26, 34, 38, 39, 40, 41, 42\r\n5G bands\r\n1, 3, 28, 41, 77, 78 SA/NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A (CA), 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n163.3 x 75.9 x 8.9 mm (6.43 x 2.99 x 0.35 in)\r\nWei', 888),
(26, 8, 'Xiaomi Redmi Note 8 2021', 17999, '10', 'product_image/97ddcc8681842d05e4fdba818e1f92ddXiaomi-Redmi-Note-8-2021-Neptune-Blue.jpg', 'Mobile', 'Announced\r\n2021, May 25\r\nStatus\r\nAvailable. Released 2021, May 27\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\n3G bands\r\nHSDPA 850 / 900 / 2100\r\n4G bands\r\nLTE band 1(2100), 3(1800), 5(850), 8(900), 38(2600), 40(2300), 41(2500)\r\nSpeed\r\nHSPA 42.2/11.5 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n158.3 x 75.3 x 8.4 mm (6.23 x 2.96 x 0.33 in)\r\nWeight\r\n190 g (6.70 oz)\r\nBuild\r\nGlass front (Gorilla Glass 5), glass back (Gorilla Glass 5), plastic frame\r\nSI', 8888),
(27, 9, 'Samsung Galaxy W22 5G', 260000, '100', 'product_image/7d6753f8cfdd5b23ebd7d0983678d133Samsung-Galaxy-W22-5G-Gold-Back.jpg', 'Mobile', 'Announced\r\n2021, June 22\r\nStatus\r\nComing soon. Exp. release 2021, August\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\nCDMA 800 / 1900\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nHSDPA 850 / 900 / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\nLTE (unspecified)\r\n5G bands\r\nSA/NSA/Sub6/mmWave\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A (7CA) Cat20 2000/200 Mbps, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nSIM\r\nNano-SIM and/or eSIM\r\nDisplay\r\nType\r\n', 99),
(28, 9, 'Samsung Galaxy TabS7', 60000, '10', 'product_image/cc97a461af98031dd41125ea89887f6bSamsung-Galaxy-Tab-S7-FE-Mystic-Silver.jpg', 'Mobile', '', 999),
(29, 9, 'Samsung Galaxy M12', 20000, '20', 'product_image/de9f716849fd700de5e0c9f0f1aa65abSamsung-Galaxy-M12-Blue.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, April 19\r\nStatus\r\nAvailable. Released 2021, April 30\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 12, 17, 20, 26, 28, 38, 40, 41, 66\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n164 x 75.9 x 9.7 mm (6.46 x 2.99 x 0.38 in)\r\nWeight\r\n212 g (7.48 oz)\r\nBuild\r\nGlass front, plastic back, plastic frame\r\nSIM\r\nDual SIM (Nano-SIM', 9999),
(30, 9, 'Samsung Galaxy Quantum 2', 55000, '20', 'product_image/d5a70e90dce46100195bb2da502722bcSamsung-Galaxy-Quantum-2-Violet.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, April 13\r\nStatus\r\nAvailable. Released 2021, April 23\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\n3G bands\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\nLTE (unspecified)\r\n5G bands\r\n1, 3, 7, 28, 41, 66, 78 SA/NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A (CA) Cat18 1200/150 Mbps, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n161.9 x 73.8 x 8.1 mm (6.37 x 2.91 x 0.32 in)\r\nWeight\r\n176 g (6.21 oz)\r\nSIM\r\nNano-SIM\r\nDisplay\r\nTy', 99999),
(31, 2, 'Huawei Watch 3', 35000, '20', 'product_image/3595895dd18ff82b1f7bccc7ac1ba4f3Huawei-Watch-3.jpg', 'Mobile', '', 222222),
(33, 2, 'Huawei nova 8 Pro 4G', 55000, '100', 'product_image/387def6bc3e346b2c58c80faf45c8aa3Huawei-Nova-8-Pro-5G-Qijing-Forest.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, April 26\r\nStatus\r\nAvailable. Released 2021, June 18\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 1900 / 2100\r\n4G bands\r\n1, 2, 3, 4, 5, 6, 7, 8, 9, 18, 19, 26, 34, 38, 39, 40, 41\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n163.3 x 74.1 x 7.9 mm (6.43 x 2.92 x 0.31 in)\r\nWeight\r\n184 g (6.49 oz)\r\nSIM\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nOLED cap', 0),
(34, 9, 'Samsung Galaxy M21s', 260000, '20', 'product_image/75d25695505a5ebca641915e63a7705bSamsung-Galaxy-M21s-Blue.jpg', 'Mobile', 'Announced\r\n2020, November 06\r\nStatus\r\nAvailable. Released 2020, November 06\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\nLTE\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n159.2 x 75.1 x 8.9 mm (6.27 x 2.96 x 0.35 in)\r\nWeight\r\n191 g (6.74 oz)\r\nBuild\r\nGlass front (Gorilla Glass 3), plastic back, plastic frame\r\nSIM\r\nSingle SIM (Nano-SIM) or Dual ', 0),
(36, 11, 'Oppo Reno6 Z', 60000, '100', 'product_image/7ae416b20d776cc23f9650ec917f0f14Oppo-Reno5-Z-Cosmo-Blue.jpg', 'Mobile', 'Launch\r\nAnnounced\r\nNot announced yet\r\nStatus\r\nRumored\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\nLTE\r\n5G bands\r\nSA/NSA\r\nSpeed\r\nHSPA 42.2/11.5 Mbps, LTE-A, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nSIM\r\nSingle SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nSuper AMOLED, 430 nits (typ), 800 nits (peak)\r\nSize\r\n6.43 inches, 99.8 cm2', 11),
(37, 11, 'Oppo A53s 5G', 20000, '20', 'product_image/911dca46063aa9060deb441560301e5bOppo-A53s-5G-Crystal-Blue.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, April 27\r\nStatus\r\nAvailable. Released 2021, May 07\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\n3G bands\r\nHSDPA 850 / 900 / 2100\r\n4G bands\r\nLTE\r\n5G bands\r\nSA/NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n163.9 x 75.7 x 8.4 mm (6.45 x 2.98 x 0.33 in)\r\nWeight\r\n186 g (6.56 oz)\r\nSIM\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize\r\n6.5 inches, 10', 111),
(38, 11, 'Oppo Band Style', 3000, '150', 'product_image/c15f23638d6394dc48ee94e37431eb85Oppo-Band-Style.jpg', 'Smartwatch', 'Launch\r\nAnnounced\r\n2021, March\r\nStatus\r\nComing soon. Exp. release 2021, March\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nBuild\r\nPlastic Polycarbonate\r\nDisplay\r\nType\r\nAMOLED capacitive touchscreen\r\nSize\r\n1.1 inches\r\nResolution\r\n126 x 294 pixels\r\nMultitouch\r\nPlatform\r\nOS\r\nAndroid 4.4 (KitKat)\r\nChipset\r\n-\r\nMemory\r\nCard slot\r\nNo\r\nInternal\r\n-\r\nRAM\r\n-\r\nSound\r\nAlert types\r\nVibration, Ringtones\r\nLoudspeaker\r\nNo\r\nConnectivity\r\nWLAN\r\nNo\r\nBluetooth\r\nYes, v4.2 LE\r\nGPS\r\nNo\r\nNFC\r\nFM radio\r\nUSB\r\nNo\r\nInfrared port\r\nFeatu', 1111),
(39, 11, 'Oppo A54', 20000, '60', 'product_image/f333fb04a024b3b488dbd2106a720472Oppo-A54-Starry-Blue.jpg', 'Mobile', 'Announced\r\n2021, March 26\r\nStatus\r\nAvailable. Released 2021, April 01\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 34, 38, 39, 40, 41\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n163.6 x 75.7 x 8.4 mm (6.44 x 2.98 x 0.33 in)\r\nWeight\r\n192 g (6.77 oz)\r\nSIM\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nIPS LCD capacitive touchscreen, 16M co', 11111),
(40, 11, 'Oppo Reno5 K', 40000, '100', 'product_image/d726deb5d7ffc9db68cff12a338eec70Oppo-Reno5-K-Aurora-Blue.jpg', 'Mobile', 'Announced\r\n2021, February 25\r\nStatus\r\nAvailable. Released 2021, March 05\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / CDMA2000 / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 2100\r\nCDMA2000 1x\r\n4G bands\r\nLTE\r\n5G bands\r\nSA/NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n159.1 x 73.4 x 7.9 mm (6.26 x 2.89 x 0.31 in)\r\nWeight\r\n172 g or 180 g (6.07 oz)\r\nBuild\r\nGlass front (Gorilla Glass 5), glass back, aluminum frame\r\nSIM', 111111),
(41, 11, 'Oppo Reno5 Lite', 32000, '100', 'product_image/ab9c7526447691a1208036c376f0973aOppo-Reno5-F.jpg', 'Mobile', 'Announced\r\n2021, March 23\r\nStatus\r\nAvailable. Released 2021, March 23\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 2100\r\nCDMA2000 1x\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 12, 17, 18, 19, 20, 26, 28, 38, 40, 41, 66\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n160.1 x 73.4 x 7.8 mm (6.30 x 2.89 x 0.31 in)\r\nWeight\r\n172 g (6.07 oz)\r\nSIM\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nAMOLED', 1111111),
(42, 9, 'Samsung Galaxy Fit2', 10000, '100', 'product_image/f86ffe838a903d31c955f8951ea0f244Samsung-Galaxy-Fit2-Scarlet.jpg', 'Mobile', 'Announced\r\n2020, September 02\r\nStatus\r\nComing soon. Exp. release 2020, September 11\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nSIM\r\nMaterials Polycarbonate / Wrist Silicone\r\nDisplay\r\nType\r\nAMOLED On-cell capacitive touchscreen, 24bit colors depth\r\nSize\r\n1.1 inches\r\nResolution\r\n126 x 294 pixels\r\nMultitouch\r\nFeatures\r\n2.5D tempered glass, Anti-fingerprint coating\r\nSingle touch button (wake up, go back)\r\n450 nits brightness\r\nPlatform\r\nOS\r\nAndroid 4.4\r\nChipset\r\n-\r\nCPU\r\n-\r\nMemory\r\nCard slot\r\nNo\r\nInternal\r\n16 M', 0),
(43, 1, 'Apple iPad Pro 12.9 (2021)', 130000, '10', 'product_image/7bef7385e3ef52c2807c2f2230907328Apple-iPad-Pro-12.9-2021.jpg', 'others', 'Launch\r\nAnnounced\r\n2021, April 20\r\nStatus\r\nAvailable. Released 2021, May 21\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\nCDMA 800 / 1900\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 11, 12, 13, 14, 17, 18, 19, 20, 21, 25, 26, 28, 29, 30, 32, 34, 38, 39, 40, 41, 42, 46, 48, 66, 71 - A2301\r\n5G bands\r\n1, 2, 3, 5, 7, 8, 12, 20, 25, 28, 38, 40, 41, 66, 71, 77, 78, 79, 260, 261 SA/NSA/Sub6/mm', 0),
(44, 1, 'Apple Watch SE', 35000, '10', 'product_image/84fdb17df3f6e38d4f60502333c0d511Apple-Watch-SE-Red.jpg', 'Smartwatch', 'Launch\r\nAnnounced\r\n2020, September 15\r\nStatus\r\nAvailable. Released 2020, September 18\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands\r\nHSDPA 850 / 1700(AWS) / 1900 / 2100 - USA, LATAM, Canada\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100 - Global\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 12, 13, 17, 18, 19, 25, 26, 39, 40, 41, 66 - USA, LATAM, Canada\r\n1, 2, 3, 4, 5, 7, 8, 18, 19, 20, 25, 26, 28, 39, 40, 41, 66 - Global\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE\r\nGPRS\r\nEDGE\r\nBody\r\nD', 0),
(45, 1, 'Apple Watch Series 6', 39000, '20', 'product_image/37b0ae538b28a0ab4f155c5a64cfd684Apple-Watch-Series-6-Stainless-Steel-Baltic-Blue.jpg', 'Smartwatch', 'Launch\r\nAnnounced\r\n2020, September 15\r\nStatus\r\nAvailable. Released 2020, September 18\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\n3G bands\r\nHSDPA 850 / 1700(AWS) / 1900 / 2100 - USA, LATAM, Canada\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100 - Global\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 12, 13, 17, 18, 19, 25, 26, 39, 40, 41, 66 - USA, LATAM, Canada\r\n1, 2, 3, 4, 5, 7, 8, 18, 19, 20, 25, 26, 28, 39, 40, 41, 66 - Global\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE\r\nGPRS\r\nEDGE\r\nBody\r\nD', 0),
(46, 1, 'Apple iPhone 12 Pro', 146000, '20', 'product_image/57e5620e5debd0b1f2e28ac28d3d85c2Apple-iPhone-12-Pro-Graphite.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2020, October 13\r\nStatus\r\nAvailable. Released 2020, October 23\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\nCDMA 800 / 1900\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 12, 13, 14, 17, 18, 19, 20, 25, 26, 28, 29, 30, 32, 34, 38, 39, 40, 41, 42, 46, 48, 66, 71 - A2341\r\n1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 28, 30, 32, 34, 38, 39, 40, 41, 42, 46, 48, 66 -', 0),
(47, 1, 'Apple iPhone 12', 118000, '20', 'product_image/9be3de282f1ffc9859ac3e8c119a4f6eApple-iPhone-12-Red.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2020, October 13\r\nStatus\r\nAvailable. Released 2020, October 23\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900\r\nCDMA 800 / 1900\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 12, 13, 14, 17, 18, 19, 20, 25, 26, 28, 29, 30, 32, 34, 38, 39, 40, 41, 42, 46, 48, 66, 71 - A2176\r\n1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 28, 30, 32, 34, 38, 39, 40, 41, 42, 46, 48, 66 -', 0),
(48, 1, 'Apple iPhone 11', 68000, '20', 'product_image/0e6ba1a8cf5db1035d997ccc33e40efeApple-iPhone-11-Purple.jpg', 'Mobile', 'Announced\r\n2019, September\r\nStatus\r\nAvailable. Released 2019, September\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / EVDO / LTE\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM) - for China\r\nCDMA 800 / 1900\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1xEV-DO\r\n4G bands\r\nLTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 11(1500), 12(700), 13(700), 17(700), 18(800), 19(800), 20(800), 21(1500), 25(1900), 26(850), 28(700), 29(700), 30(2300), 32', 0),
(49, 8, 'Xiaomi Redmi 9 Dual Camera', 12999, '50', 'product_image/4decdae5db8427431e3941f60d25bf76Xiaomi-Redmi-9C-Sunrise-Orange.jpg', 'Mobile', '', 0),
(50, 8, 'Xiaomi Redmi K40 Gaming', 55000, '20', 'product_image/3b323468ffe4606ed65e5e63d6b3f30fXiaomi-Redmi-K40-Gaming-Black.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2021, April 27\r\nStatus\r\nAvailable. Released 2021, April 30\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / CDMA2000 / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\nCDMA2000 1x\r\n4G bands\r\n1, 2, 3, 4, 5, 7, 8, 12, 17, 18, 19, 20, 26, 28, 34, 38, 39, 40, 41, 42\r\n5G bands\r\n1, 3, 7, 8, 20, 28, 38, 41, 77, 78 NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n161.9 x 76.9 x 8.3 mm (6.3', 0),
(51, 8, 'Xiaomi Redmi 20X', 15000, '20', 'product_image/64e261dcfc1752ed6ffcdeb8338e594bXiaomi-Redmi-Note-10-5G-Nighttime-Blue.jpg', 'Mobile', 'Launch\r\nAnnounced\r\nNot announced yet\r\nStatus\r\nRumored\r\nNetwork\r\nTechnology\r\nGSM / CDMA / HSPA / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2\r\nCDMA 800\r\n3G bands\r\nHSDPA 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\nLTE\r\n5G bands\r\nSA/NSA\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A, 5G\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n-\r\nWeight\r\n-\r\nSIM\r\nDual SIM (Nano-SIM, dual stand-by)\r\nDisplay\r\nType\r\nIPS LCD capacitive touchscreen, 16M colors\r\nSize\r\n6.5 inches, 102.0 cm2\r\nResolution\r\n1080 x 2400 pixels,', 0),
(52, 6, 'Vatika Hair Oil', 200, '20', 'product_image/f3fe3cde69bd6e1204e22581697e9d33vatika.jpg', 'rice-oil', 'authentic', 0),
(53, 6, 'Yellow-Capsicum', 20, '20', 'product_image/e79884724f503a57c2d7bf0e4f433fa5Yellow-Capsicum.jpg', 'vegetables', 'fresh', 0),
(54, 6, 'Teer  Soyabean Oil', 510, '20', 'product_image/7876f624868a173c4702ac3829f5e5c1teer oil.jpg', 'rice-oil', 'authentic', 0),
(55, 6, 'Prawn', 400, '20', 'product_image/ec074c3c767fc12b862d7f3b0c2141a8Chingri.jpg', 'meat-fish', 'deshi', 0),
(56, 4, 'Amul Ice-cream', 30, '20', 'product_image/bec9c4fee01910ee1f4f1b102d741152Ice cream 2.png', 'others', 'Yummy', 0),
(57, 4, 'Vanila Cup Ice-cream', 30, '20', 'product_image/5cb26be835b4a1b7e001699ce15260beice cream.jfif', 'fruits', '', 0),
(58, 4, 'Vanila Ice-cream', 30, '20', 'product_image/2a323f5c175d602b3ddefd9d1bcd2f95Ice cream 3.png', 'others', 'yummy', 0),
(59, 4, 'Coca Cola', 100, '20', 'product_image/ae9921356da02df8892a7bad925b1127cock.jpg', 'others', 'very cold', 0),
(60, 4, 'Mountain-Dew', 30, '20', 'product_image/e19a6db192175af5bcd285462aefb26dmountain-dew.webp', 'others', 'very cold', 0),
(61, 4, '7up', 30, '20', 'product_image/ac79ecd4c6248fc87ba110b2876b55327up.jfif', 'others', 'very cold', 0),
(62, 5, 'Bashmoti Rice', 100, '20', 'product_image/47bcd6d4ee6c6363e58e352f16190092basmati-rice-1-kg.webp', 'rice-oil', 'fresh', 0),
(63, 5, 'Hilsha fish', 200, '20', 'product_image/271c7016fe4e176d3132c9e862bc71f9hilsa.jpg', 'meat-fish', 'fresh', 0),
(64, 5, 'Meat', 500, '10', 'product_image/245a79ad87de3995ab98cd159d2f2d90red Meat.jpg', 'meat-fish', 'fresh', 0),
(65, 5, 'Beef', 400, '20', 'product_image/33466a7ed7005fb482e4c68fd274c4bbbeaf-steaks.jpg', 'meat-fish', 'fresh', 0),
(66, 5, 'Teer Sugar', 30, '10', 'product_image/bd0f1fd00433db122988ed8303200012teer_sugar.jpg', 'others', 'new', 0),
(67, 5, 'Garlic', 100, '20', 'product_image/04965b8c47666beed94404adb341c301Garlic2.jpg', 'fruits', 'local', 0),
(68, 3, 'Chicken-Leg', 120, '100', 'product_image/84f17d91f25a43446d098f2f8c9009cbChicken-Leg.jpg', 'meat-fish', 'fresh', 0),
(69, 3, 'Goose', 200, '20', 'product_image/6e45d51e508f2612488ed8a4122d7edfraw-goose.jpg', 'meat-fish', 'fresh and deshi', 0),
(70, 3, 'Mixed Capsicum', 50, '60', 'product_image/8c6d13fa2194fccec9fbf57d1cead828capsicum mixed.jpg', 'vegetables', 'fresh', 0),
(71, 3, 'Span Olive Oil', 100, '20', 'product_image/fa18f09e958dfd48c4a1ac48eb73c8adspan olive hair oil.jpg', 'rice-oil', 'new', 0),
(72, 3, 'Red Chili', 20, '20', 'product_image/563bdc4509493df3706341fdc8a8f52dred chili.jpg', 'vegetables', 'Fresh', 0),
(73, 3, 'Puredistance M Master Perfume', 200, '10', 'product_image/2fc5211ccd83f1797a6f995060004295master-perfume.png', 'others', 'Cool and small for easy carrying ', 0),
(74, 2, 'Huawei Mate 30E Pro 5G', 85000, '10', 'product_image/bd3c6ed22eaedf2bf9237cd7bfebcd9aHuawei-Mate-30E-Pro-5G-Emerald-Green.jpg', 'Mobile', 'Launch\r\nAnnounced\r\n2020, October 22\r\nStatus\r\nAvailable. Released 2020, November 01\r\nNetwork\r\nTechnology\r\nGSM / HSPA / LTE / 5G\r\n2G bands\r\nGSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)\r\n3G bands\r\nHSDPA 800 / 850 / 900 / 1700(AWS) / 1900 / 2100\r\n4G bands\r\n1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 17, 18, 19, 20, 26, 28, 34, 38, 39, 40, 41\r\n5G bands\r\n1, 3, 28, 41, 77, 78, 79 NSA/Sub6\r\nSpeed\r\nHSPA 42.2/5.76 Mbps, LTE-A, 5G (2+ Gbps DL)\r\nGPRS\r\nEDGE\r\nBody\r\nDimensions\r\n158.1 x 73.1 x 8.8 mm (6', 0),
(75, 25, 'green Capcicum', 40, '5', 'product_image/999cdfcb0f5f5319f916434577283490capsicum green.jpg', 'vegetables', 'fresh', 0),
(76, 25, 'yellow capsicum', 40, '5', 'product_image/e79884724f503a57c2d7bf0e4f433fa5Yellow-Capsicum.jpg', 'vegetables', 'fresh', 0),
(77, 24, 'Koromcha', 45, '40', 'product_image/f419701a54f3dbb7f8456ac473872ba4koromca.jpg', 'fruits', 'fresh', 0),
(78, 24, 'Garlic', 160, '5', 'product_image/04965b8c47666beed94404adb341c301Garlic2.jpg', 'vegetables', 'deshi', 0),
(79, 23, 'Prawn', 450, '10', 'product_image/ec074c3c767fc12b862d7f3b0c2141a8Chingri.jpg', 'fish', '', 0),
(80, 23, 'Hilsha', 800, '5', 'product_image/271c7016fe4e176d3132c9e862bc71f9hilsa.jpg', 'fish', 'fresh', 0),
(81, 22, 'Ice-cream', 45, '5', 'product_image/a079a9213f99bd3fc3585a4343cc3234Ice cream 1.jfif', 'others', 'cool', 0),
(82, 21, '7up', 80, '4', 'product_image/f83a0dd401a9978b91f940743c6f75f07up.jfif', 'others', 'cool', 0),
(83, 21, 'Red meat', 550, '4', 'product_image/4e813f896f70a4442f900ab2449780d9red Meat.jpg', 'meat-fish', 'fresh', 0),
(84, 20, 'Lal Shak', 15, '5', 'product_image/dc251c1b1767363ed649ca669f1cd28bRED-SPINACH-(à¦²à¦¾à¦²-à¦¶à¦¾à¦à¦•).png', 'vegetables', 'fresh', 0),
(85, 20, 'Onion', 45, '5', 'product_image/f00b08b0458524807cee7ab04fabefb31578668031.jpg', 'vegetables', 'new', 0),
(86, 21, 'Dressed goose', 4, '550', 'product_image/008f2de236c2085779e6ec9ee675b6c9raw-goose.jpg', 'meat-fish', 'deshi', 0),
(87, 22, 'Perfume', 330, '4', 'product_image/4b6d0d84d8b6e4a65c17591c938f6cd5master-perfume.png', 'fruits', 'cool', 0),
(88, 22, 'Jira Rice', 55, '10', 'product_image/ea7fb710bf55141862b7ff7eadf0b2bbrice.jpg', 'rice-oil', 'fresh', 0),
(89, 23, 'Leg Piece Chicken', 220, '10', 'product_image/84f78fa07bd6af0a74dafed0b218f6f3Chicken-Leg.jpg', 'meat-fish', 'farm', 0),
(90, 20, 'Potato', 18, '10', 'product_image/b243ad11f5ad7eddf0b5fddbbe5a262683-diamond-potato-3.jpg', 'vegetables', 'new', 0),
(91, 25, 'red capsicum', 45, '4', 'product_image/1ed6270eb9ee4797644c419d281406c0Capsicum red.jpg', 'fruits', 'fresh', 0),
(92, 26, 'Donuts', 80, '10', 'product_image/dbc02541fd4c5d800b6d0517abc1fc1fDonuts.png', 'sweets', 'yammy', 0),
(93, 26, 'Mixed Sweets', 550, '45', 'product_image/154c842d9adee29cb8bdded7ee421f190002g8wz.jpeg', 'sweets', 'tasty', 0),
(94, 26, 'Vegan Jelly', 330, '10', 'product_image/d75fbdbfa9909eeaa8f0ef423f478c64vegan-jelly-recipe-2.jpg', 'sweets', 'Sweety', 0),
(95, 24, 'Biscuits', 80, '4', 'product_image/11cc00b4100e428577286f95c05044e4biscuits.jpg', 'sweets', 'crancy', 0),
(96, 27, 'Sondesh', 220, '10', 'product_image/86df909929b9a837a37ada76ac3596398-5.jpg', 'sweets', 'yammy', 0),
(97, 27, 'Laddu', 220, '45', 'product_image/4c0d4008bb0e95bb4c7b916ea5652130misti.jpg', 'sweets', 'sweets', 0),
(98, 27, 'Cocacola', 80, '45', 'product_image/6fd38b0b8b4d5b6e9707cc29404fcf6ccock.jpg', 'sweets', 'cool', 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(200) DEFAULT NULL,
  `r_CategoryImage` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`r_id`, `r_name`, `r_CategoryImage`, `location`, `lat`, `lng`, `s_id`) VALUES
(1, 'Apple', '', 'Basundhora', 23.813891, 90.423467, 1),
(2, 'HUAWEI', '2.jpg', '2 Banani Bridge, Dhaka 1212', 23.791441, 90.40997, 2),
(3, 'Unimart', '3.jpg', 'Gulshan Centre Point, Dhaka 1212', 23.795931, 90.414934, 2),
(4, 'Genius Shopping Center', '', 'Basundhora', 23.812171, 90.422345, 3),
(5, 'Paramount Super Shop', '', 'Shop-1A031, 1st Floor, Gulshan DCC Corner, Jamuna Future Park, Bashundhara R/a, Dhaka 1229', 23.814047, 90.423417, 4),
(6, 'Agora Gulshan', '', '37, RM Center, Plot-5, 101 Gulshan Ave, Dhaka 1212', 23.789861, 90.415988, 3),
(8, 'Xiaomi', '', 'Ka-54, 3 Bashundhara Rd, Dhaka 1229', 23.812207, 90.423111, 1),
(9, 'SAMSUNG', '', '41 DIT II Cir, Dhaka 1212, Gulshan', 23.795516, 90.413499, 3),
(11, 'OPPO', '', '3A, H, R-4 Green Rd, Dhaka 1205', 23.742224, 90.383819, 1),
(20, 'SHWAPNO EXPRESS Fani', '3.jpg', 'Feni Mizan Road', 23.013801, 91.39969, 2),
(21, 'Alhaz Super Market', '', 'Grand Trank Rd, Feni', 23.01659, 91.392134, 3),
(22, 'S K Super Shop', '', 'Grand Trank Rd, Feni', 23.01671, 91.391903, 4),
(23, 'Jalalia Sweets Shop', '', 'Grand Trank Rd, Feni', 23.015356, 91.393191, 4),
(24, 'Shuvo Variety Store', '', 'DB Rd, Kachari Bazar, Gaibandha', 25.3147526, 89.5423966, 1),
(25, 'Orient kitchen', '', 'College Road, Polash Para, Gaibandha', 22.8087816, 89.24671909999999, 3),
(26, 'Astha Sweets', '', 'Road 1/2, Polash Para, Gaibandha', 25.3247534, 89.5323975, 2),
(27, 'Eat & Meet', '', 'Road 12/1, Hokers, Gaibandha', 25.3347544, 89.5223955, 4),
(30, 'feni super shop', '21.jpg', 'feni', 23.016643, 91.392136, 2);

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
(25, 'uchchwasdas', 'uchchwas.das@northsouth.edu', '202cb962ac59075b964b07152d234b70', 'bashundhara', '+01834856800', 0, '', '');

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
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
