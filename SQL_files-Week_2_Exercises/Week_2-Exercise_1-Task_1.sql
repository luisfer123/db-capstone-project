# Week 2 - Exercise 1 - Task 1
# Exercise: Create a virtual table to summarize data

DROP VIEW IF EXISTS OrdersView;

CREATE VIEW OrdersView AS
	SELECT order_id, quantity, total_cost
    FROM Orders
	WHERE quantity > 2;