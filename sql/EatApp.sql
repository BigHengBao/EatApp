
/**EatApp database**/
-- 1.新建数据库
CREATE DATABASE IF NOT EXISTS eatapp DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- 2.1、用户表
CREATE TABLE IF NOT EXISTS `my_user`(
   `user_id` INT UNSIGNED AUTO_INCREMENT,
   `user_account` VARCHAR(10) NOT NULL,
   `user_password` VARCHAR(20) NOT NULL,
   `user_real_name` VARCHAR(20) NOT NULL,
   `user_sex` INT NOT NULL,
   `user_phone` VARCHAR(20) NOT NULL,
   `user_address` VARCHAR(50) ,
   `active` INT NOT NULL,
   `user_level` INT NOT NULL,
   `user_image` VARCHAR(80) NOT NULL,
   `user_write` VARCHAR(30),
   PRIMARY KEY ( `user_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--  2.2、管理员表
CREATE TABLE IF NOT EXISTS `my_admin`(
   `admin_id` INT UNSIGNED AUTO_INCREMENT,
   `admin_account` VARCHAR(10) NOT NULL,
   `admin_password` VARCHAR(20) NOT NULL,
   `admin_real_name` VARCHAR(20) NOT NULL,
   `admin_sex` INT NOT NULL,
   `admin_phone` VARCHAR(20) NOT NULL,
   `admin_address` VARCHAR(50) ,
   `active` INT NOT NULL,
   `admin_level` INT NOT NULL,
   `admin_image` VARCHAR(80) NOT NULL,
   PRIMARY KEY ( `admin_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.3、产品表
CREATE TABLE IF NOT EXISTS `product`(
   `product_id` INT UNSIGNED AUTO_INCREMENT,
   `product_name` VARCHAR(30) NOT NULL,
   `product_price` DOUBLE NOT NULL,
   `discount` DOUBLE NOT NULL,
   `size` INT NOT NULL,
   `taste` VARCHAR(20) NOT NULL,
   `product_image` VARCHAR(80) NOT NULL,
   `type` VARCHAR(20) NOT NULL,
   `material` VARCHAR(30) NOT NULL,
   PRIMARY KEY ( `product_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.4、用户订单表
CREATE TABLE IF NOT EXISTS `user_order`(
   `order_id` INT UNSIGNED AUTO_INCREMENT,
   `user_id` INT NOT NULL,
   `total` DOUBLE NOT NULL,
   `status` INT NOT NULL,
   `create_time` TIMESTAMP NOT NULL,
   `finish_time` TIMESTAMP NOT NULL,
   `ok_time` TIMESTAMP NOT NULL,
   PRIMARY KEY ( `order_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.5、商品评论表
CREATE TABLE IF NOT EXISTS `comments`(
   `comments_id` INT UNSIGNED AUTO_INCREMENT,
   `user_id` INT NOT NULL,
   `content` VARCHAR(30) NOT NULL,
   `addtime` TIMESTAMP NOT NULL,
   `active` INT NOT NULL,
   `product_id` INT NOT NULL,
   PRIMARY KEY ( `comments_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.6、订单细节表
CREATE TABLE IF NOT EXISTS `user_order_detail`(
   `order_id` INT UNSIGNED AUTO_INCREMENT,
   `product_id` INT NOT NULL,
   `product_num` INT NOT NULL,
   `price` DOUBLE NOT NULL,
   `total` DOUBLE NOT NULL,
   PRIMARY KEY ( `order_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.7、用户收藏表
CREATE TABLE IF NOT EXISTS `collection`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `product_id` INT NOT NULL,
   `user_id` INT NOT NULL,
   `price` DOUBLE NOT NULL,
   `addtime` TIMESTAMP NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2.8、商品分类表
CREATE TABLE IF NOT EXISTS `product_type`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `type_name` VARCHAR(20) NOT NULL,
   `type_num` INT NOT NULL,
   `type_image` VARCHAR(80) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 3.1、设置每个表的id从一开始
ALTER  TABLE  my_user auto_increment 1000; 
ALTER  TABLE  my_admin auto_increment 2000; 
ALTER  TABLE  product auto_increment 3000; 
ALTER  TABLE  user_order auto_increment 4000; 
ALTER  TABLE  comments auto_increment 5000; 
ALTER  TABLE  user_order_detail auto_increment 6000; 
ALTER  TABLE  collection auto_increment 7000; 
ALTER  TABLE  product_type auto_increment 8000; 