-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 11:34:18
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h5_1903`
--
CREATE DATABASE IF NOT EXISTS `h5_1903` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `h5_1903`;

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL COMMENT '商品id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `price` double NOT NULL COMMENT '商品价格',
  `num` int(255) NOT NULL COMMENT '商品库存',
  `pic` varchar(255) NOT NULL COMMENT '商品图片',
  `details` varchar(255) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(9, '推荐~冬装文艺复古羊羔绒高领保暖棉衣男韩版宽松加… 转手原因，买回来不喜欢但当时懒得退了，而且衣服有点掉毛，比较烦；淘宝', 39, 70, '../img/40.jpg', ''),
(8, '妙侣2017新款厚底罗马凉鞋女夏季细带松糕底软妹… 颜色分类:黑色,尺码:37\r\n上脚超级显白，但是有轻微脱胶现象，\r\n已经', 28, 70, '../img/41.jpg', ''),
(7, '迪奥粉红魅惑淡香水 用了一点点 专柜购入 50毫升', 200, 70, '../img/42.jpg', ''),
(5, '专柜正品施华洛世奇2019新款红色可爱小螃蟹项链锁骨链女54 感兴趣的话给我留言吧！', 90, 70, '../img/43.jpg', ''),
(6, '雪纺刺绣连衣裙S.M.L：420包邮 ♥️♥️高端定制，春夏新款欧美高端大牌走秀款，重工钉珠飞鸟刺绣礼服百褶雪纺连衣裙，', 294, 70, '../img/44.jpg', ''),
(4, '小米2充电宝 成色如图，寄充电宝比较贵 因为有电池。所以我卖25不包邮', 25, 70, '../img/45.jpg', ''),
(0, '无线路由器 多买了，无线路由器全新未用过，只拆开过，江浙沪可包邮', 70, 70, '../img/46.jpg', ''),
(3, 'Nike 耐克官方 NIKE CORTEZ BA… 颜色分类:102白/黑,尺码:37.5码', 230, 70, '../img/47.jpg', ''),
(1, '新贝电动吸奶器 感兴趣的话给我留言吧！', 35, 70, '../img/48.jpg', ''),
(2, '诚信卷闸门 合肥诚信门业是专业生产卷帘门与车库门的生产商,是集设计、生产制作、安装、维修服务为一体的专业卷帘门厂家,本公', 182, 70, '../img/49.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` double NOT NULL,
  `num` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL COMMENT '用户',
  `users_name` varchar(20) NOT NULL COMMENT '用户名',
  `users_email` varchar(30) NOT NULL COMMENT '邮箱',
  `users_pwd` varchar(30) NOT NULL COMMENT '密码',
  `users_sex` tinyint(2) NOT NULL COMMENT '性别'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_pwd`, `users_sex`) VALUES
(10015, 'wangwu', 'wangwu@163.com', '123456', 1),
(10013, 'zhangsan', 'zhangsan@163.com', '123456', 1),
(10010, '99999', '123456', '123456456', 1),
(10011, '123', '123456@163.com', '123', 1);

-- --------------------------------------------------------

--
-- 表的结构 `userss`
--

CREATE TABLE `userss` (
  `id` int(20) NOT NULL,
  `users_name` varchar(255) NOT NULL,
  `users_pwd` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userss`
--

INSERT INTO `userss` (`id`, `users_name`, `users_pwd`) VALUES
(1, 'zhangsan', 123456),
(2, '123123', 123123),
(3, '123456789', 123123123),
(4, '147', 123),
(5, '159', 123),
(6, '123123123', 123),
(7, '12345679812', 123456),
(8, '753', 123),
(9, '963', 123),
(10, '158', 123),
(11, '758', 123),
(12, '23156465', 12312313),
(13, '1', 1),
(14, '12', 123123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户', AUTO_INCREMENT=10016;
--
-- 使用表AUTO_INCREMENT `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(20) NOT NULL,
  `users_email` int(30) NOT NULL,
  `users_pwd` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`users_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
