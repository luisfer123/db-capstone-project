# Week 2 - Exercise 4 - Task 1
# Exercise: Create SQL queries to add and update bookings

DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //
CREATE PROCEDURE AddBooking(IN bookingDate DATE, IN tableNumber INT, IN customerId INT)
BEGIN
	INSERT INTO Bookings (booking_date, table_number, customer_id)
		VALUES (bookingDate, tableNumber, customerId);
        SELECT CONCAT("New Booking added") AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking('2022-10-10', 5, 2)