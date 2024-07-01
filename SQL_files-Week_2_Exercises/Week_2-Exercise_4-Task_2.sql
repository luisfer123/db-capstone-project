# Week 2 - Exercise 4 - Task 2
# Exercise: Create SQL queries to add and update bookings

DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookingId INT, IN bookingDate DATE)
BEGIN
	START TRANSACTION;
		IF NOT EXISTS (SELECT * FROM Bookings WHERE booking_id = bookingId) THEN
			ROLLBACK;
            SELECT CONCAT("Booking with id ", bookingId, " does not exist") AS "Confirmation";
		ELSE
			UPDATE Bookings
				SET booking_date = bookingDate
                WHERE booking_id = bookingId;
			COMMIT;
            SELECT CONCAT("Booking ", bookingId, " updated") AS "Confirmation";
		END IF;
END //
DELIMITER ;

CALL UpdateBooking(22, '2022-11-15');
CALL UpdateBooking(2, '2022-11-15');