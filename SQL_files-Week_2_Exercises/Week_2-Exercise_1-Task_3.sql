# Week 2 - Exercise 1 - Task 3
# Exercise: Create a virtual table to summarize data

SELECT `name`
	FROM Menu
    WHERE `name` = ANY (
		SELECT M.`name` 
			FROM Orders O 
            INNER JOIN Menu M ON O.`order_id` = M.`order_id`
            WHERE O.`quantity` > 2
	);