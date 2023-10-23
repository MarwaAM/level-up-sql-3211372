-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.FirstName, p.LastName, p.email, count(l.LoanID)
FROM Patrons p
INNER JOIN Loans l
ON p.PatronID = l.PatronID
GROUP BY p.PatronID
ORDER by count(l.LoanID)
LIMIT 5;