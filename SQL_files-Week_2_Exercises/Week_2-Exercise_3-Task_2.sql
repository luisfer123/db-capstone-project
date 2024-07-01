# Week 2 - Exercise 3 - Task 2
# Exercise: Create SQL queries to check available bookings based on user input

DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingDate DATE, IN tableNumber INT)
BEGIN
	DECLARE table_status VARCHAR(45);
    SELECT COUNT(*) INTO table_status
		FROM Bookings
        WHERE booking_date = bookingDate AND table_number = tableNumber;
        
	IF table_status > 0 THEN
		SELECT CONCAT("Table ", tableNumber, " is already booked.") AS "Booking status";
	ELSE
		SELECT CONCAT("Table ", tableNumber, " is not booked.") AS "Booking status";
        
    END IF;
END //
DELIMITER ;

CALL CheckBooking("2022-10-10", 5);
CALL CheckBooking("2022-10-10", 3);