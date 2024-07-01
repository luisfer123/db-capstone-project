# Week 2 - Exercise 3 - Task 3
# Exercise: Create SQL queries to check available bookings based on user input

DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //
CREATE PROCEDURE AddValidBooking(IN bookingDate DATE, IN tableNumber INT, IN customerId INT)
BEGIN
	DECLARE table_status INT;
	START TRANSACTION;
		
        SELECT COUNT(*) INTO table_status
			FROM Bookings
            WHERE booking_date = bookingDate AND table_number = tableNumber;
            
		IF table_status > 0 THEN
			ROLLBACK;
            SELECT CONCAT("Table ", tableNumber, " is already booked - booking cancelled") AS "Booking status";
		ELSE
			INSERT INTO Bookings (booking_date, table_number, customer_id)
				VALUES (bookingDate, tableNumber, customerId);
			COMMIT;
            SELECT CONCAT("Table ", tableNumber, " is not booked - Booking done") AS "Booking status";
		END IF;
END //
DELIMITER ;

CALL AddValidBooking('2022-10-10', 5, 1);
CALL AddValidBooking('2022-10-10', 3, 1);