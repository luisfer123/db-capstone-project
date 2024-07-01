# Week 2 - Exercise 3 - Task 1
# Exercise: Create SQL queries to check available bookings based on user input

INSERT INTO Bookings (booking_date, table_number, customer_id) 
	VALUES 
		('2022-10-10', 5, 1),
		('2022-11-12', 3, 3),
        ('2022-10-11', 2, 3),
        ('2022-10-13', 2, 1);
        
SELECT * FROM bookings;