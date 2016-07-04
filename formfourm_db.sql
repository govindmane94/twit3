-- phpMyAdmin SQL Dump
-- version 2.6.1-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 10, 2014 at 07:42 AM
-- Server version: 4.1.10
-- PHP Version: 5.0.4
-- 
-- Database: `fourm_db`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `id` smallint(6) NOT NULL default '0',
  `name` text NOT NULL,
  `description` text NOT NULL,
  `position` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` VALUES (3, 'Entertainment', 'Good', 3);
INSERT INTO `categories` VALUES (1, 'Programming', 'New Programmig', 1);
INSERT INTO `categories` VALUES (2, 'music', 'adasdasdsa', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `pm`
-- 

CREATE TABLE `pm` (
  `id` bigint(20) NOT NULL default '0',
  `id2` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `user1` bigint(20) NOT NULL default '0',
  `user2` bigint(20) NOT NULL default '0',
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL default '0',
  `user1read` varchar(3) NOT NULL default '',
  `user2read` varchar(3) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `pm`
-- 

INSERT INTO `pm` VALUES (1, 1, 'hello', 3, 2, 'adasdasdasd', 1393906918, 'yes', 'yes');
INSERT INTO `pm` VALUES (2, 1, 'qsdqad', 3, 2, 'adasdad', 1393906925, 'yes', 'yes');
INSERT INTO `pm` VALUES (3, 1, 'sss', 2, 3, 'acdasdasd', 1393906994, 'yes', 'yes');
INSERT INTO `pm` VALUES (1, 2, '', 2, 0, 'sdasd', 1393907004, '', '');
INSERT INTO `pm` VALUES (2, 2, '', 2, 0, 'asasd', 1393907014, '', '');
INSERT INTO `pm` VALUES (6, 1, 'Hi', 3, 2, 'good morning', 1394417450, 'yes', 'yes');
INSERT INTO `pm` VALUES (6, 2, '', 2, 0, 'ok', 1394417474, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `topics`
-- 

CREATE TABLE `topics` (
  `parent` smallint(6) NOT NULL default '0',
  `id` int(11) NOT NULL default '0',
  `id2` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `message` longtext NOT NULL,
  `authorid` int(11) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  `timestamp2` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `topics`
-- 

INSERT INTO `topics` VALUES (1, 1, 2, '', 'asdadasd', 2, 1393906355, 1393906355);
INSERT INTO `topics` VALUES (1, 3, 1, 'vc##', 'adasdasd', 3, 1393906445, 1394417415);
INSERT INTO `topics` VALUES (2, 2, 2, '', 'sadasdsadad', 3, 1393906455, 1393906455);
INSERT INTO `topics` VALUES (2, 2, 1, 'L1', 'asdasdasdasd', 2, 1393906375, 1393906455);
INSERT INTO `topics` VALUES (1, 1, 1, 'C', 'C language', 2, 1393906348, 1393907156);
INSERT INTO `topics` VALUES (1, 3, 2, '', 'sadasdasdas', 2, 1393906508, 1393906508);
INSERT INTO `topics` VALUES (1, 1, 3, '', 'dssdasd', 4, 1393907156, 1393907156);
INSERT INTO `topics` VALUES (1, 4, 1, 'J', 'a', 3, 1394416077, 1394416077);
INSERT INTO `topics` VALUES (1, 3, 3, '', 'frefre', 3, 1394417415, 1394417415);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL default '0',
  `username` varchar(255) NOT NULL default '',
  `password` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `avatar` text NOT NULL,
  `signup_date` int(10) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'amit', 'amit123', 'amit123@gmail.com', 'asdasd', 0);
INSERT INTO `users` VALUES (2, 'raj', '2e8460f4b941efacdc6949646516b4f288b5b423', 'raj123@Aa.com', 'a', 1393862401);
INSERT INTO `users` VALUES (3, 'priya', 'cb249fbbf53c7980fa8c6007f0c685f5c718de14', 'amit@gmail.com', 'a', 1393862806);
INSERT INTO `users` VALUES (4, 'husen', '6ca7a1b910a8f5aa9a56bc63971689c119df2271', 'mhusen.j@gmail.com', 'Husen', 1393907142);
