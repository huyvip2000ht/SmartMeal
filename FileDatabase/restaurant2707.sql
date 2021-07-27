/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : restaurant

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 27/07/2021 17:24:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `AccountId` int(0) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PhoneNumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RoleId` int(0) NOT NULL,
  `Salary` int(0) NOT NULL,
  `AddDate` date NOT NULL,
  PRIMARY KEY (`AccountId`) USING BTREE,
  UNIQUE INDEX `username`(`Username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'huyvip2000ht', '123123123', 'Trần Nguyễn Quang Huy', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (2, 'ahihi', 'qweqweqwe', 'Trần Nguyễn Quang Huy', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (3, 'dwdwdw', 'dqwqd', 'Trần Nguyễn Quang Huy', 'qwdqwd', 0, 213123, '2021-04-14');
INSERT INTO `account` VALUES (6, 'huyvip2000ht123', '123123123', 'Trần Nguyễn Quang Huy', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (8, 'huyvip2000ht23', '12312323', 'Trần Nguyễn Quang Huy', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (12, 'huyvip2000htas', '123123123', '', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (13, 'huyvip2000htadss', '123123123', '', '0964404975', 0, 3000000, '0001-01-01');
INSERT INTO `account` VALUES (14, 'huyvip2000htadssss', '123123123', '', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (15, 'huyvip2000htadsdsssss', '123123123', '', '0964404975', 0, 3000000, '2021-04-14');
INSERT INTO `account` VALUES (16, 'huyvip2000htadsdssss', '123123123', '', '0964404975', 0, 3000000, '2021-04-15');
INSERT INTO `account` VALUES (18, 'huyvip2000htadsd4234ssss', '$2a$11$rbLrgRJvEkVZyGTabKsjKOvla4gBmGMUjuxKAQAZm0DlZw.PIyDnS', '', '0964404975', 1, 3000000, '2021-04-16');
INSERT INTO `account` VALUES (19, 'huyvip2000htadsd4234ss', '$2a$11$0UEK9UmNXK8OSg2LOY9Vr.jzw6fl8AjoxmwoJCAAYf5Bn923Qs2ua', '', '0964404975', 1, 3000000, '2021-04-17');
INSERT INTO `account` VALUES (20, 'huyvip2000hsd4234ss', '$2a$11$4Pu1SuyegJ8gwTPRmhTYteoHgHZlQGBkeLbsy2LDDr61C2/nSaAF2', 'Trần Huy', '0964404975', 1, 3000000, '2021-04-17');
INSERT INTO `account` VALUES (21, 'huycsacsc', '$2a$11$vAN7Qe9sRAkIJGl5QfzNpeCoxJdxytpzZaMsbStJfbe.sPv80Qb0G', 'dsad asdasd adsda', '123123123', 1, 3000000, '2021-05-26');
INSERT INTO `account` VALUES (22, 'string', '$2a$11$4mxEXzQburfbgNlPkj4Ku.B/bJqy6dd5xANJgHXekcYV8vySohoLe', 'string', 'string', 0, 0, '2021-06-24');
INSERT INTO `account` VALUES (23, '18020725', '$2a$11$DhL7OwUZhfL8SUAY9ICWlOCzx4Vc9GvF8M2yTz7arLlFfS6sobeRK', 'Nguyen Phuc Khoi', '0378874128', 1, 0, '2021-07-11');
INSERT INTO `account` VALUES (24, 'huyhuy', '$2a$11$FjrBvkfNk5Gx9/gRLLWFzOFx/.CUvoNR.lrUDPSzj5MyyUwD6p0c.', 'sdasd', '0964404975', 1, 0, '2021-07-20');
INSERT INTO `account` VALUES (25, 'huy2k2k', '$2a$11$Adz7BYiwXiLgA35ApE3wKOjD4mUITVZsQMS7woXnDAgkJCfj0bt/6', 'sdasd', '0964404975', 1, 0, '2021-07-20');
INSERT INTO `account` VALUES (26, 'huywaiter', '$2a$11$DiClu9ZbSD/vjU2xSphoLe99lB7DfscUkFMln4WLTR6sWLjHK9eYy', 'huywaiter', '0964404975', 1, 0, '2021-07-20');
INSERT INTO `account` VALUES (27, 'huycashier', '$2a$11$VGxs8RI50nqp7JPTYrWvXukFjFDySZL7x1VRNGukDsu6wyCdBxn5y', 'huycashier', '0964404975', 2, 0, '2021-07-20');
INSERT INTO `account` VALUES (28, 'huychef', '$2a$11$KRV4gKsydqsyQ2y9rsEr2eTFqyha/9j6T.hevhdqpbYUkudNIvAr6', 'huychef', '0964404975', 3, 0, '2021-07-20');
INSERT INTO `account` VALUES (29, 'huymanager', '$2a$11$mwYLO8vxPR.uzzdtGxBk2.Q1y3OYGZg4wmTmOj8pHF1x6JzuY6NZu', 'huymanager', '0964404975', 1, 0, '2021-07-20');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `DishId` int(0) NOT NULL AUTO_INCREMENT,
  `DishName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DishTypeId` int(0) NOT NULL,
  `Price` int(0) NOT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AddDate` date NOT NULL,
  PRIMARY KEY (`DishId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, 'Cai bo', 1, 30000, 'friedchicken.png', '2021-05-15');
INSERT INTO `dish` VALUES (2, 'Thập cẩm', 1, 25000, '10974714.jpg', '2021-07-11');
INSERT INTO `dish` VALUES (3, 'Nước cam', 0, 15000, 'orangejuice.jpg', '2021-07-11');

-- ----------------------------
-- Table structure for dishtype
-- ----------------------------
DROP TABLE IF EXISTS `dishtype`;
CREATE TABLE `dishtype`  (
  `DishTypeId` int(0) NOT NULL AUTO_INCREMENT,
  `DishTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`DishTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dishtype
-- ----------------------------
INSERT INTO `dishtype` VALUES (1, 'Ăn nhẹ');
INSERT INTO `dishtype` VALUES (2, 'Tráng miệng');
INSERT INTO `dishtype` VALUES (3, 'Hải sản');
INSERT INTO `dishtype` VALUES (4, 'Món chay');
INSERT INTO `dishtype` VALUES (5, 'Lâm sản');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `OrderDetailId` int(0) NOT NULL AUTO_INCREMENT,
  `OrderId` int(0) NOT NULL,
  `DishId` int(0) NOT NULL,
  `AccountId` int(0) NOT NULL,
  `QuantityOrder` int(0) NOT NULL,
  `TimeOrder` datetime(0) NOT NULL,
  `ServeStatus` int(0) NOT NULL,
  PRIMARY KEY (`OrderDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES (1, 1, 1, 23, 1, '2021-07-27 17:20:38', 0);
INSERT INTO `orderdetail` VALUES (2, 1, 3, 23, 1, '2021-07-27 17:20:38', 0);
INSERT INTO `orderdetail` VALUES (3, 1, 2, 23, 1, '2021-07-27 17:20:38', 0);
INSERT INTO `orderdetail` VALUES (4, 2, 1, 23, 3, '2021-07-27 17:20:59', 0);
INSERT INTO `orderdetail` VALUES (5, 2, 3, 23, 1, '2021-07-27 17:20:59', 0);
INSERT INTO `orderdetail` VALUES (6, 2, 2, 23, 1, '2021-07-27 17:20:59', 0);
INSERT INTO `orderdetail` VALUES (7, 2, 1, 23, 1, '2021-07-27 17:20:59', 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `OrderId` int(0) NOT NULL AUTO_INCREMENT,
  `TableId` int(0) NOT NULL,
  `Status` int(0) NOT NULL,
  PRIMARY KEY (`OrderId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 10, 0);
INSERT INTO `orders` VALUES (2, 17, 0);

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `PaymentId` int(0) NOT NULL AUTO_INCREMENT,
  `CashierId` int(0) NOT NULL,
  `OrderId` int(0) NOT NULL,
  `TotalPrice` int(0) NOT NULL,
  `TimePayment` datetime(0) NOT NULL,
  PRIMARY KEY (`PaymentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `RoleId` int(0) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`RoleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Quản lí');
INSERT INTO `role` VALUES (2, 'Thu ngân');
INSERT INTO `role` VALUES (3, 'Nhà bếp');
INSERT INTO `role` VALUES (4, 'Bồi bàn');

-- ----------------------------
-- Table structure for table
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table`  (
  `TableId` int(0) NOT NULL AUTO_INCREMENT,
  `SeatAmount` int(0) NOT NULL,
  `Status` int(0) NOT NULL,
  PRIMARY KEY (`TableId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES (1, 4, 0);
INSERT INTO `table` VALUES (2, 4, 0);
INSERT INTO `table` VALUES (3, 4, 0);
INSERT INTO `table` VALUES (4, 4, 0);
INSERT INTO `table` VALUES (5, 4, 0);
INSERT INTO `table` VALUES (6, 4, 0);
INSERT INTO `table` VALUES (7, 4, 0);
INSERT INTO `table` VALUES (8, 4, 0);
INSERT INTO `table` VALUES (9, 4, 0);
INSERT INTO `table` VALUES (10, 4, 1);
INSERT INTO `table` VALUES (11, 8, 0);
INSERT INTO `table` VALUES (12, 8, 0);
INSERT INTO `table` VALUES (13, 8, 0);
INSERT INTO `table` VALUES (14, 8, 0);
INSERT INTO `table` VALUES (15, 8, 0);
INSERT INTO `table` VALUES (16, 8, 0);
INSERT INTO `table` VALUES (17, 8, 1);
INSERT INTO `table` VALUES (18, 8, 0);
INSERT INTO `table` VALUES (19, 8, 0);
INSERT INTO `table` VALUES (20, 8, 0);
INSERT INTO `table` VALUES (21, 8, 0);
INSERT INTO `table` VALUES (22, 8, 0);
INSERT INTO `table` VALUES (23, 8, 0);
INSERT INTO `table` VALUES (24, 4, 0);
INSERT INTO `table` VALUES (25, 4, 0);
INSERT INTO `table` VALUES (26, 4, 0);
INSERT INTO `table` VALUES (27, 4, 0);
INSERT INTO `table` VALUES (28, 4, 0);
INSERT INTO `table` VALUES (29, 4, 0);
INSERT INTO `table` VALUES (30, 4, 0);
INSERT INTO `table` VALUES (31, 4, 0);
INSERT INTO `table` VALUES (32, 4, 0);
INSERT INTO `table` VALUES (33, 4, 0);
INSERT INTO `table` VALUES (34, 4, 0);
INSERT INTO `table` VALUES (35, 4, 0);
INSERT INTO `table` VALUES (36, 4, 0);
INSERT INTO `table` VALUES (37, 4, 0);
INSERT INTO `table` VALUES (38, 4, 0);
INSERT INTO `table` VALUES (39, 4, 0);
INSERT INTO `table` VALUES (40, 4, 0);

-- ----------------------------
-- Table structure for voucher
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher`  (
  `VoucherId` int(0) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DiscountPercent` int(0) NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `StartDate` datetime(0) NOT NULL,
  `EndDate` datetime(0) NOT NULL,
  PRIMARY KEY (`VoucherId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voucher
-- ----------------------------
INSERT INTO `voucher` VALUES (1, 'giảm giá 10%', 10, 'giảm giá 10% mọi hóa đơn', '2021-06-20 08:29:03', '2021-06-25 08:29:03');

-- ----------------------------
-- Procedure structure for Proc_GetAllDishesByAccountId
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllDishesByAccountId`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllDishesByAccountId`()
BEGIN 
SELECT a.AccountId, fullname,sum(od.QuantityOrder) as totaldishes 
FROM account a 
join orderdetail od on od.AccountId = a.AccountId 
join dish d on d.DishId = od.DishId 
GROUP BY a.AccountId; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllDishesDoneByOrderId
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllDishesDoneByOrderId`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllDishesDoneByOrderId`(IN in_orderId INT)
BEGIN

	SELECT d.dishId,d.dishName,d.dishTypeId,d.price,od.quantityOrder,d.image,o.tableId, od.OrderDetailId,o.OrderId from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE od.ServeStatus = 2 AND o.OrderId = in_orderId;
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllDishesIsOrdered
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllDishesIsOrdered`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllDishesIsOrdered`()
BEGIN

	SELECT d.dishId,d.dishName,d.dishTypeId,od.quantityOrder,d.image,o.tableId, od.OrderDetailId, o.OrderId from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE od.ServeStatus = 0 and o.`Status` = 0;
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllDishesPaid
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllDishesPaid`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllDishesPaid`()
BEGIN 
SELECT d.dishName,sum(od.quantityOrder) sumQuantity ,d.price from dish d 
left join orderdetail od on d.DishId=od.DishId 
GROUP BY d.DishId; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllDishesReady
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllDishesReady`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllDishesReady`()
BEGIN

	SELECT d.dishId,d.dishName,d.dishTypeId,od.quantityOrder,d.image,o.tableId, od.OrderDetailId from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE od.ServeStatus = 1;
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllPayments
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllPayments`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllPayments`()
BEGIN

	SELECT p.*, o.TableId, a.FullName as CashierName FROM payment p INNER JOIN orders o on p.OrderId = o.OrderId 
	INNER JOIN account a on p.CashierId = a.AccountId;
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetAllReadyOrders
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetAllReadyOrders`;
delimiter ;;
CREATE PROCEDURE `Proc_GetAllReadyOrders`()
BEGIN

	SELECT DISTINCT(o.orderId), o.tableId, o.`status` from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId
		WHERE (SELECT count(*) from orderdetail od1 WHERE o.OrderId = od1.OrderId and od1.ServeStatus = 2) > 0;
    
   
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetDishesByTableId
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetDishesByTableId`;
delimiter ;;
CREATE PROCEDURE `Proc_GetDishesByTableId`(IN `TableId` INT)
  NO SQL 
BEGIN
	SELECT od.OrderDetailId, d.dishId,d.dishName,d.dishTypeId,d.price,d.image,od.quantityOrder,d.price*od.quantityOrder as totalPrice from orderdetail od 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
		inner JOIN
    orders o ON o.OrderId = od.OrderId 
    WHERE o.TableId = TableId and o.`Status` = 0;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetPaymentByTableId
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetPaymentByTableId`;
delimiter ;;
CREATE PROCEDURE `Proc_GetPaymentByTableId`(IN `tableId` INT(11))
  NO SQL 
BEGIN
	SELECT * from payment p
    join orders o on o.OrderId = p.OrderId
    WHERE o.TableId = tableId
    ORDER BY p.TimePayment DESC
    LIMIT 1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_GetPaymentsByDate
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_GetPaymentsByDate`;
delimiter ;;
CREATE PROCEDURE `Proc_GetPaymentsByDate`(IN dateFrom VARCHAR(50), IN dateTo VARCHAR(50))
BEGIN
SELECT p.*, o.TableId, a.FullName as CashierName FROM payment p 
INNER JOIN orders o on p.OrderId = o.OrderId 
INNER JOIN account a on p.CashierId = a.AccountId
WHERE date(p.TimePayment) BETWEEN dateFrom and dateTo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertAccount
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertAccount`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertAccount`(IN `username` VARCHAR(30), IN `password` VARCHAR(255), IN `FullName` VARCHAR(255), IN `phoneNumber` VARCHAR(11), IN `roleId` INT(11), IN `salary` INT(12))
BEGIN
    INSERT INTO account (accountId, username, password,FullName, phoneNumber, roleId, salary,addDate) VALUES (NULL,username, password,FullName, phoneNumber, roleId, salary, CURDATE());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertDish
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertDish`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertDish`(IN `DishName` VARCHAR(255), IN `DishTypeId` INT(2), IN `Price` INT(11), IN `Image` VARCHAR(255), IN `AddDate` DATE)
BEGIN
    INSERT INTO dish (DishId, DishName, DishTypeId, Price, Image,AddDate) VALUES (NULL,DishName, DishTypeId, Price, Image, CURDATE());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertDishtype
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertDishtype`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertDishtype`(IN `DishTypeName` VARCHAR(255))
  NO SQL 
BEGIN
    INSERT INTO dishtype (DishTypeId,DishTypeName) VALUES (NULL,DishTypeName);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertOrderDetail
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertOrderDetail`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertOrderDetail`(IN `orderId` INT(11), IN `dishId` INT(11), IN `accountId` INT(11), IN `quantityOrder` INT(5))
  NO SQL 
BEGIN
    INSERT INTO orderdetail (OrderDetailId,OrderId,DishId,AccountId,QuantityOrder,TimeOrder,ServeStatus) VALUES (NULL,orderId,dishId,accountId,quantityOrder,now(),0);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertOrderDetailByTableId
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertOrderDetailByTableId`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertOrderDetailByTableId`(IN `tableId` INT(11), IN `dishId` INT(11), IN `accountId` INT(11), IN `quantityOrder` INT(5))
  NO SQL 
BEGIN
    INSERT INTO orderdetail (OrderDetailId,OrderId,DishId,AccountId,QuantityOrder,TimeOrder,ServeStatus) 
  #  VALUES (NULL,orderId,dishId,accountId,quantityOrder,now(),0);
  SELECT NULL , o.OrderId , dishId , accountId , quantityOrder , now() , 0 from orders o 
  where o.TableId = tableId AND o.`Status` = 0;
  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertOrders
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertOrders`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertOrders`(IN `TableId` INT(11), IN `Status` INT(2))
  NO SQL 
BEGIN
    INSERT INTO orders (OrderId,TableId,Status) VALUES (NULL,TableId,Status);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertPayment
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertPayment`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertPayment`(IN `CashierId` INT(11), IN `OrderId` INT(11), IN `VoucherId` INT(11), IN `TotalPrice` INT(11), IN `Status` INT(2))
  NO SQL 
BEGIN
    INSERT INTO payment (PaymentId,CashierId,OrderId,VoucherId,TotalPrice,TimePayment,Status) VALUES (NULL,CashierId,OrderId,VoucherId,TotalPrice,now() ,Status);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertRole
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertRole`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertRole`(IN `RoleName` VARCHAR(255))
  NO SQL 
BEGIN
    INSERT INTO role (RoleId,RoleName) VALUES (NULL,RoleName);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertTable
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertTable`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertTable`(IN `SeatAmount` INT(3), IN `Status` INT(2))
  NO SQL 
BEGIN
    INSERT INTO restaurant.table (TableId,SeatAmount,Status) VALUES (NULL,SeatAmount,Status);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_InsertVoucher
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_InsertVoucher`;
delimiter ;;
CREATE PROCEDURE `Proc_InsertVoucher`(IN `Title` VARCHAR(255), IN `DiscountPercent` INT(3), IN `Description` VARCHAR(255), IN `StartDate` DATETIME, IN `EndDate` DATETIME)
  NO SQL 
BEGIN
    INSERT INTO voucher (VoucherId,Title,DiscountPercent,Description,StartDate,EndDate) VALUES (NULL,Title,DiscountPercent,Description,StartDate,EndDate);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_MakePayment
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_MakePayment`;
delimiter ;;
CREATE PROCEDURE `Proc_MakePayment`(IN `TableId` INT(11), IN `VoucherId` INT(11))
  NO SQL 
BEGIN
    INSERT INTO payment (PaymentId,CashierId,OrderId,VoucherId,TotalPrice,TimePayment,Status) #VALUES (NULL,CashierId,OrderId,VoucherId,TotalPrice,now() ,Status);


    SELECT NULL,1,  o.OrderId, VoucherId,
    CASE 
    	when v.EndDate IS NULL THEN sum(d.Price*od.QuantityOrder)
        when v.EndDate < now()  THEN sum(d.Price*od.QuantityOrder)
        else sum(d.Price*od.QuantityOrder)*(100-v.DiscountPercent)/100
    END as total_price
	,now(),0


    FROM orders o

    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId
    left JOIN
    voucher v ON v.VoucherId = VoucherId
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE o.TableId = TableId
    GROUP by o.OrderId;
    
    
    

	SELECT d.DishName,d.Price,od.QuantityOrder,d.Price*od.QuantityOrder from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE o.TableId = TableId;
    


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_MakePayment1
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_MakePayment1`;
delimiter ;;
CREATE PROCEDURE `Proc_MakePayment1`(IN `TableId` INT(11), IN cashierId int(11))
BEGIN
    INSERT INTO payment (PaymentId,CashierId,OrderId,TotalPrice,TimePayment) #VALUES (NULL,CashierId,OrderId,VoucherId,TotalPrice,now() ,Status);


    SELECT NULL, CashierId,  o.OrderId, sum(d.Price*od.QuantityOrder) as total_price , now()


    FROM orders o

    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId

    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE o.TableId = TableId and od.ServeStatus = 2
    GROUP by o.OrderId;
    
    
    

	SELECT d.DishName,d.Price,od.QuantityOrder,d.Price*od.QuantityOrder from orders o 
    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId 
    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE o.TableId = TableId AND od.ServeStatus = 2;
    


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_OrderPaidDone
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_OrderPaidDone`;
delimiter ;;
CREATE PROCEDURE `Proc_OrderPaidDone`(IN in_orderId INT, IN in_tableId int, IN in_cashierId int)
BEGIN
INSERT INTO payment (PaymentId,CashierId,OrderId,TotalPrice,TimePayment) #VALUES (NULL,CashierId,OrderId,VoucherId,TotalPrice,now() ,Status);


    SELECT NULL, in_cashierId,  o.OrderId, sum(d.Price*od.QuantityOrder) as total_price , now()


    FROM orders o

    INNER JOIN
    orderdetail od ON od.OrderId = o.OrderId

    INNER JOIN 
    dish d ON d.DishId= od.DishId
    WHERE o.TableId = in_tableId and od.ServeStatus = 2 AND o.OrderId = in_orderId;
	UPDATE orders o
	set o.status = 1 WHERE o.orderId = in_orderId;
	UPDATE orderdetail od
	set od.ServeStatus = -1 WHERE od.OrderId = in_orderId AND (od.ServeStatus = 0 OR od.ServeStatus = 1);
	UPDATE `table` t
	set t.Status = 0 WHERE t.TableId = in_tableId;
	
    

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_PostOrderFirstTime
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_PostOrderFirstTime`;
delimiter ;;
CREATE PROCEDURE `Proc_PostOrderFirstTime`(IN in_tableId int)
BEGIN
	#Routine body goes here...
	update `table` t
	set t.Status = 1 WHERE t.TableId = in_tableId;
	INSERT INTO orders (OrderId,TableId,Status) VALUES (NULL,in_tableId,0);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Proc_SetAllTableEmpty
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc_SetAllTableEmpty`;
delimiter ;;
CREATE PROCEDURE `Proc_SetAllTableEmpty`()
BEGIN
	UPDATE `table`
	set `table`.`Status` = 0;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
