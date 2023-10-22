-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT (SELECT Count(Title) FROM Books
WHERE Title = 'Dracula') - (
SELECT Count(BookID) FROM Loans
WHERE (BookID = 12
OR BookID = 60
OR BookID = 73)
AND ReturnedDate ISNULL)
AS available


