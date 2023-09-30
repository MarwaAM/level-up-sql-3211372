-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT customerId, FirstName
FROM Customers
WHERE FirstName = 'Norby' OR LastName = 'Norby'

SELECT * 
FROM Reservations
WHERE CustomerID = 64 AND Date > '2022-07-24 00:00:00'

 DELETE FROM Reservations 
 WHERE 
  ReservationID = 2000
-- (SELECT ReservationID FROM Reservations
-- WHERE 
-- CustomerID = (SELECT customerId FROM Customers WHERE FirstName = 'Norby')
-- AND Date > '2022-07-24 00:00:00')