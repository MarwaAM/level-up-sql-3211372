-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers
SET Address = '74 Pine St.', City = 'New York', State = 'NY'
WHERE customerId = (SELECT customerId FROM customers WHERE Address = '27170 6th Ave.' AND FirstName = 'Taylor' AND LastName = 'Jenkins')     