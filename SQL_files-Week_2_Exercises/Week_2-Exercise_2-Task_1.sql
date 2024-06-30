# Week 2 - Exercise 2 - Task 1
# Exercise: Create optimized queries to manage and analyze data

DROP PROCEDURE IF EXISTS GetMaxQuantity;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity() 
BEGIN
	SELECT MAX(quantity) AS "Maximum Quantity in Orders"
		FROM Orders;
END //

DELIMITER ;

CALL GetMaxQuantity();

