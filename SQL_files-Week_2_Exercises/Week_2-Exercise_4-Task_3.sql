# Week 2 - Exercise 4 - Task 3
# Exercise: Create SQL queries to add and update bookings

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookingId INT)
BEGIN
	DELETE FROM Bookings 
		WHERE booking_id = bookingId;
	SELECT CONCAT("Booking ", bookingId, " canceled") AS "Confirmation";
END //
DELIMITER ;

CALL CancelBooking(3);