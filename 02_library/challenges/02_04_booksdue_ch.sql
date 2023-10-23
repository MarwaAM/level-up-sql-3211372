-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT l.dueDate, b.Title, p.FirstName, p.Email
FROM Loans l
INNER JOIN Patrons p
ON l.PatronID = p.PatronID
Inner Join Books b
ON l.BookID = b.BookID
WHERE l.DueDate = '2022-07-13'
AND l.ReturnedDate IS NULL