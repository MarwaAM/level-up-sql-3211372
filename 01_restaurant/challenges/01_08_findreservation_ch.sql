-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT c.CustomerId, c.FirstName, c.LastName, r.Date, r.partySize
FROM Customers c
INNER JOIN Reservations r
ON c.customerId = r.customerId
WHERE c.FirstName LIKE 'St%' AND r.partySize = 4