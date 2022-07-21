-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: nov. 22, 2021 la 06:55 PM
-- Versiune server: 10.4.21-MariaDB
-- Versiune PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `supermarket`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `brand`
--

CREATE TABLE `brand` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `brand`
--

INSERT INTO `brand` (`ID`, `Brand`, `Status`) VALUES
(1, 'Apple', 'Active'),
(2, 'Samsung', 'Active'),
(3, 'Asus', 'Active'),
(4, 'Acer', 'Active'),
(5, 'MSI', 'Active'),
(6, 'Huawei', 'Active'),
(7, 'LG', 'Active'),
(8, 'JBL', 'Active'),
(9, 'Nikon', 'Active'),
(10, 'Canon', 'Active');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `category`
--

INSERT INTO `category` (`ID`, `Category`, `Status`) VALUES
(1, 'Mobile', 'Active'),
(2, 'Accessories', 'Active'),
(3, 'Laptop', 'Active'),
(4, 'Audio', 'Active'),
(5, 'Tv', 'Active'),
(6, 'Photo/Video', 'Active');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Product` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Cate_ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  `Cost_Price` int(11) NOT NULL,
  `Retail_Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Barcode` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `product`
--

INSERT INTO `product` (`ID`, `Product`, `Description`, `Cate_ID`, `Brand_ID`, `Cost_Price`, `Retail_Price`, `Quantity`, `Barcode`, `Status`) VALUES
(1, 'iPhone 13', 'Mini, 64GB', 1, 1, 650, 700, 499, 1001, 'Active'),
(2, 'iPhone 13', 'Mini, 128GB	', 1, 1, 750, 800, 500, 1002, 'Active'),
(3, 'iPhone 13', '128GB', 1, 1, 850, 900, 500, 1003, 'Active'),
(4, 'iPhone 13', '256GB', 1, 1, 950, 1000, 500, 1004, 'Active'),
(5, 'iPhone 13', 'Pro, 256GB', 1, 1, 1050, 1100, 499, 1005, 'Active'),
(6, 'iPhone 13', 'Pro, 512GB', 1, 1, 1150, 1200, 500, 1006, 'Active'),
(7, 'iPhone 13', 'Pro Max, 512GB', 1, 1, 1250, 1300, 500, 1007, 'Active'),
(8, 'iPhone 13', 'Pro Max, 1TB', 1, 1, 1350, 1400, 500, 1008, 'Active'),
(9, 'Fold 3', '128GB', 1, 2, 1300, 1400, 500, 1009, 'Active'),
(10, 'S21', 'Ultra, 256GB', 1, 2, 1050, 1100, 500, 1010, 'Active'),
(11, 'Airpods', 'Pro', 2, 1, 200, 300, 500, 1011, 'Active'),
(12, 'Buds', 'Plus', 2, 2, 100, 150, 500, 1012, 'Active'),
(13, 'Macbook', 'Air M1, 256GB', 3, 1, 1100, 1200, 500, 1013, 'Active'),
(14, 'Macbook', 'Pro M1, 1TB', 3, 1, 1500, 1700, 499, 1014, 'Active');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `Grandtotal` int(11) NOT NULL,
  `Cash` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `sales`
--

INSERT INTO `sales` (`ID`, `Date`, `User`, `Grandtotal`, `Cash`, `Balance`) VALUES
(1, '2021/22/22', 'Razvan', 2800, 2800, 0),
(2, '2021/49/22', 'Razvan', 700, 1000, 300);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `salesitems`
--

CREATE TABLE `salesitems` (
  `ID` int(11) NOT NULL,
  `Sales_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Sales_Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `salesitems`
--

INSERT INTO `salesitems` (`ID`, `Sales_ID`, `Product_ID`, `Sales_Price`, `Quantity`, `Total_Price`) VALUES
(1, 1, 1005, 1100, 1, 1100),
(2, 1, 1014, 1700, 1, 1700),
(3, 2, 1001, 700, 1, 700);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `staffs`
--

CREATE TABLE `staffs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `Father` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `DOJ` varchar(255) NOT NULL,
  `Salary` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `staffs`
--

INSERT INTO `staffs` (`ID`, `Name`, `DOB`, `Father`, `Gender`, `Qualification`, `Address`, `Designation`, `DOJ`, `Salary`, `Status`) VALUES
(1, 'Razvan', '2002/04/20', 'G.', 'Male', 'Diploma', 'Romania', 'Manager', '2021/11/22', '15000', 'Active');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `user`
--

INSERT INTO `user` (`ID`, `Username`, `Password`, `Status`) VALUES
(1, 'Razvan', '123', 'Active');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `salesitems`
--
ALTER TABLE `salesitems`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `brand`
--
ALTER TABLE `brand`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pentru tabele `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `salesitems`
--
ALTER TABLE `salesitems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `staffs`
--
ALTER TABLE `staffs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
