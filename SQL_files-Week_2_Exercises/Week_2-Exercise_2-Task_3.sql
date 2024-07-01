# Week 2 - Exercise 2 - Task 3
# Exercise: Create optimized queries to manage and analyze data

DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookingID INT)
BEGIN
	DELETE FROM Bookings WHERE booking_id = bookingID;
    SELECT CONCAT("Order ", bookingID, " is cancelled.") AS Confirmation From Bookings;
END //
DELIMITER ;

CALL CancelBooking(1);