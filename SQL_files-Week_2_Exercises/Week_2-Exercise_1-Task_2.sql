# Week 2 - Exercise 1 - Task 2
# Exercise: Create a virtual table to summarize data

SELECT C.customer_id, C.full_name, O.order_id, O.total_cost, M.name, MI.course_name, MI.starter_name
	FROM Customer C
    INNER JOIN Orders O ON C.customer_id = O.customer_id
	INNER JOIN Menu M ON O.order_id = M.order_id
    INNER JOIN Menu_item MI ON M.menu_id = MI.menu_item_id
    ORDER BY O.total_cost;