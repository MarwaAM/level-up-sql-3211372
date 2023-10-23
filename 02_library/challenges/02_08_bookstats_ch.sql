-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT 
  published, 
  count(DISTINCT(Title)) AS BooksCount
FROM BOOKS
GROUP BY published
ORDER BY Published DESC

SELECT b.title, count(l.LoanID) AS cnt FROM Books b
INNER JOIN Loans l
ON b.BookID = l.BookID
Group by b.BookID
ORDER BY cnt DESC
LIMIT 5;