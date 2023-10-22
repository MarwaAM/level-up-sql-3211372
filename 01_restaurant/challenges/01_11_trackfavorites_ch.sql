-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT customerId, FirstName, LastName 
FROM Customers
WHERE lastName = 'Goldwater'; -- id = 42

SELECT DishID, Name 
from Dishes 
WHERE name = 'Quinoa Salmon Salad' -- id = 9

UPDATE Customers 
SET FavoriteDish = 9
WHERE customerId = 42