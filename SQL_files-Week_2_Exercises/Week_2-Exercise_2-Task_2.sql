# Week 2 - Exercise 2 - Task 2
# Exercise: Create optimized queries to manage and analyze data

 PREPARE GetOrderDetail
	FROM 'SELECT order_id, quantity, total_cost FROM Orders WHERE order_id = ?';
    
SET @id = 1;
EXECUTE GetOrderDetail USING @id;