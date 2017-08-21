-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 20, 2017 at 08:10 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `camping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id` int(11) NOT NULL,
  `fld_trip_id` text NOT NULL,
  `fld_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campgrounds`
--

CREATE TABLE `tbl_campgrounds` (
  `id` int(11) NOT NULL,
  `fld_name` text,
  `fld_address` text,
  `fld_phone` text,
  `fld_website` text,
  `fld_latitude` text,
  `fld_longitude` text,
  `fld_search_keywords` text,
  `fld_memo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campgrounds`
--

INSERT INTO `tbl_campgrounds` (`id`, `fld_name`, `fld_address`, `fld_phone`, `fld_website`, `fld_latitude`, `fld_longitude`, `fld_search_keywords`, `fld_memo`) VALUES
(1, 'Max V Shaul State Park, NY', 'MAX V. SHAUL STATE PARK\r\nPO BOX 23 RT 30\r\nFULTONHAM  NY  12071', '(518)827-4711', '', '42.547246', '-74.410901', NULL, ''),
(2, 'Macedonia Brook State Park, CT', 'MACEDONIA BROOK STATE PARK\r\n159 MACEDONIA BROOK ROAD\r\nKENT  CT  06757', '(860)927-3238', '', '41.770739', '-73.497237', 'creek, outhouse, ', 'this place has outhouses, no toilets.  Ranger mentioned that site 23 was a good isolated one.  '),
(3, 'Ricketts Glen State Park, PA', 'RICKETTS GLEN STATE PARK\r\n695 STATE ROUTE 487\r\nBENTON  PA  17814', '(570)477-5675', '', '41.329386', '-76.291256', NULL, ''),
(4, 'Lake Taghkanic State Park, NY', 'LAKE TAGHKANIC STATE PARK\r\n1528 State Route 82\r\nANCRAM  NY  12502-9731', '(518)851-3631', '', '42.095560', '-73.707537', NULL, ''),
(5, 'Clarence Fahnestock State Park, NY', 'CLARENCE FAHNESTOCK STATE PARK\r\nRte 301\r\nCARMEL  NY  10512', '(845)225-7207', '', '41.465073', '-73.823481', NULL, ''),
(6, 'Dingmans Campground, Delaware Water Gap, PA', 'Delaware Water Gap-Pocono Mountain KOA\r\n227 Hollow Road\r\nEast Stroudsburg  PA  18302', '(570) 223-8000', 'koa.com', '41.051168', '-75.080703', NULL, ''),
(7, 'Wildwood State Park, NY', 'WILDWOOD STATE PARK\r\nPO Box 518 790 Hulse Landing Road\r\nWADING RIVER  NY  11792-0518', '(631)929-4314', '', '40.963217', '-72.797588', 'beach, beach rocks, no fire ring, ', 'no fire ring, one has to bring their own fire pit. '),
(8, 'Putnam Pond, NY', 'PUTNAM POND\r\n763 Putts Pond Rd.\r\nTICONDEROGA  NY  12883', '(518)585-7280', '', '43.837084', '-73.571718', NULL, ''),
(9, 'Wells State Park, MA', 'Wells State Park\r\nP.O. Box 602\r\nSTURBRIDGE  MA  01566-0602', '(508)347-9257', '', '42.148983', '-72.066066', NULL, ''),
(10, 'Henderson Beach State Park, FL', 'HENDERSON BEACH SP\r\n17000 EMERALD COAST PARKWAY\r\nDESTIN  FL  32541', '(850)837-7550', '', '30.384075', '-86.437663', 'beach, sand', ''),
(11, 'Stephens State Park, NJ', 'STEPHENS STATE PARK\r\n800 Willow Grove Street\r\nHackettstown  NJ  07840', '(908) 852-3790', '', '40.872302', '-74.808693', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people`
--

CREATE TABLE `tbl_people` (
  `id` int(11) NOT NULL,
  `fld_first_name` text,
  `fld_last_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_people`
--

INSERT INTO `tbl_people` (`id`, `fld_first_name`, `fld_last_name`) VALUES
(1, 'Juan', 'Gutierrez'),
(2, 'Mary', 'Dohne'),
(3, 'Krshnaa', 'Fitch'),
(4, 'Kelsey', 'Stamps'),
(5, 'Sonia', 'Avila'),
(6, 'Lashaun', 'Ellis'),
(7, 'Heather', 'Alexander'),
(8, 'Nadia', 'Samuelson');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_x_trip`
--

CREATE TABLE `tbl_people_x_trip` (
  `id` int(11) NOT NULL,
  `fld_trip_id` int(11) NOT NULL,
  `fld_person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photos`
--

CREATE TABLE `tbl_photos` (
  `id` int(11) NOT NULL,
  `fld_trip_id` int(11) NOT NULL,
  `fld_file` text NOT NULL,
  `fld_date_taken` text,
  `fld_description` text,
  `fld_private` text,
  `fld_search_keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photos`
--

INSERT INTO `tbl_photos` (`id`, `fld_trip_id`, `fld_file`, `fld_date_taken`, `fld_description`, `fld_private`, `fld_search_keywords`) VALUES
(3, 1, 'IMGP4117_1720db8e8164ac.JPG', '2009-04-30', 'test', '', 'test'),
(4, 1, 'IMGP4119_258881f240a23d.JPG', '2009-04-30', '', 'private', ''),
(5, 1, 'IMGP4120_40388b29920d03.JPG', '2009-04-30', '', 'private', ''),
(6, 1, 'IMGP4121_1605b85481311e.JPG', '2009-04-30', '', '', ''),
(7, 1, 'IMGP4122_675784aa036221.JPG', '2009-04-30', '', '', ''),
(8, 1, 'IMGP4123_93734737165bec.JPG', '2009-04-30', '', '', ''),
(9, 1, 'IMGP4124_97775bc00cd75f.JPG', '2009-04-30', '', 'private', ''),
(10, 1, 'IMGP4125_61729cf38ce1fa.JPG', '2009-04-30', '', 'private', ''),
(11, 1, 'IMGP4126_15977d02b87d76.JPG', '2009-04-30', '', 'private', ''),
(12, 1, 'IMGP4130_97270ca738cbda.JPG', '2009-04-30', '', 'private', ''),
(13, 1, 'IMGP4131_54540967ce1fec.JPG', '2009-04-30', '', 'private', ''),
(14, 1, 'IMGP4132_59208df0eef8b4.JPG', '2009-04-30', '', 'private', ''),
(15, 1, 'IMGP4134_351620f4e036eb.JPG', '2009-04-30', '', 'private', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trips`
--

CREATE TABLE `tbl_trips` (
  `id` int(11) NOT NULL,
  `fld_campground_id` text,
  `fld_trip_number` text,
  `fld_arrival_date` text,
  `fld_departure_date` text,
  `fld_site_number` text,
  `fld_latitude` text,
  `fld_longitude` text,
  `fld_search_keywords` text,
  `fld_memo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trips`
--

INSERT INTO `tbl_trips` (`id`, `fld_campground_id`, `fld_trip_number`, `fld_arrival_date`, `fld_departure_date`, `fld_site_number`, `fld_latitude`, `fld_longitude`, `fld_search_keywords`, `fld_memo`) VALUES
(1, '1', '1', '2009-04-30', '2009-05-02', '40', '41.463146', '-73.823366', '', '    camp site name: Max V. Shaul State Park\r\n    camp site #: 6\r\n    State: Fultonham, NY\r\nhow long?: 2 nights\r\n    Menu: July 3 - hotdogs grilled over the fire with pineapple and chips, smores\r\n             July 4 - we ate out at the BBQ place nearby.\r\n\r\n    Weather: warm, but comfortable, some rain at night but clear during the day\r\n    What should we do differently next time: go hiking up Vromans Nose, maybe pick a different campsite, but ours was pretty nice.\r\n\r\n    How long to get there: 3+ hours, I think. Less to come back because we left very early in the AM.\r\n\r\n    easy directions?: yes! very nice drive... drove back to the city early in the morning and it went much much faster!\r\n\r\n    how much was car?: $390.43 (including 90 extra miles at $.45/mile)\r\n\r\nhow much was site?: $19/ night + $9 online reservation fee\r\n\r\n    dates we went: Friday, July 3 - Sunday, July 5, 2009\r\n    what type of vehicle?: yellow mini cooper from zipcar\r\n\r\ngear: new tent, new sleeping pad for Juan, fuel tablets\r\n\r\nslept on top old coleman sleping bag fully unzipped with a sheet and blanket.\r\n\r\nbought one pack of firewood from home depot and used it up the first night. bought firewood from the park office but it was wet and hard to light and we vowed the buy a little axe to chop it up into smaller pieces and to but dry firewood at home depot in the future.\r\n'),
(2, '2', '2', '2009-08-21', '2009-08-23', '22', '41.776290', '-73.494858', '', ''),
(3, '3', '3', '2009-09-25', '2009-09-27', '23', '41.341365', '-76.299540', '', ''),
(4, '4', '4', '2009-10-09', '2009-10-11', 'G4', '42.095453', '-73.702639', '', ''),
(5, '5', '5', '2009-11-20', '2009-11-21', '', '41.464562', '-73.823340', '', 'only one night.  sat night she told me she had cheated. we went back to brooklyn after that. '),
(6, '6', '6', '2010-02-27', '2010-02-28', '12', '41.209943', '-74.872531', '', 'after we got engaged.  winter camping, stayed only one night.'),
(7, '7', '7', '2010-04-02', '2010-04-04', 'B021', '40.962190', '-72.801983', '', ''),
(8, '8', '8', '2010-07-02', '2010-07-04', '46', '43.843717', '-73.571557', '', ''),
(9, '9', '9', '2010-07-16', '2010-07-18', '33', '42.146244', '-72.053532', '', ''),
(10, '2', '10', '2010-08-20', '2010-08-22', '14', '41.776091', '-73.495676', '', ''),
(11, '5', '11', '2010-12-10', '2010-12-11', '19', '41.463146', '-73.823366', '', 'it was cold and Krshnaa did not have a good sleeping bag...'),
(12, '10', '12', '2011-03-30', '2011-04-01', '37', '30.385842', '-86.435781', '', ''),
(13, '2', '13', '2012-05-04', '2012-05-06', '30', '41.784171', '-73.488680', '', ''),
(14, '2', '14', '2012-07-03', '2012-07-05', '30', '41.784171', '-73.488680', '', ''),
(15, '5', '15', '2012-10-26', '2012-10-28', '14', '', '', '', ''),
(16, '5', '16', '2013-11-08', '2013-11-09', '', '', '', '', 'it was too cold, we left after one night.'),
(17, '11', '17', '2014-10-10', '2014-10-12', '35', '40.873086', '-74.808222', '', ''),
(18, '11', '18', '2015-10-23', '2015-10-25', '27', '', '', '', ''),
(19, '11', '19', '2016-10-21', '2016-10-23', '27', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_campgrounds`
--
ALTER TABLE `tbl_campgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people`
--
ALTER TABLE `tbl_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_x_trip`
--
ALTER TABLE `tbl_people_x_trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trips`
--
ALTER TABLE `tbl_trips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_campgrounds`
--
ALTER TABLE `tbl_campgrounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_people`
--
ALTER TABLE `tbl_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_people_x_trip`
--
ALTER TABLE `tbl_people_x_trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_photos`
--
ALTER TABLE `tbl_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_trips`
--
ALTER TABLE `tbl_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;