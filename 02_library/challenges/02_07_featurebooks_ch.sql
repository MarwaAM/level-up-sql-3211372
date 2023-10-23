-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Title, Author, Published FROM Books
WHERE Published BETWEEN 1890 AND 1899
AND BookID NOT IN (SELECT BookID from Loans WHERE ReturnedDate IS NULL)