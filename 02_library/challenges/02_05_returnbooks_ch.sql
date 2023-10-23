-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE LOANS
SET ReturnedDate = '2022-07-05'
WHERE LoanID = (
  SELECT LoanID FROM LOANS
  WHERE BookID = (SELECT BookId FROM Books WHERE Barcode = 6435968624)
  AND ReturnedDate IS NULL
)

UPDATE LOANS
SET ReturnedDate = '2022-07-05'
WHERE LoanID = (
  SELECT LoanID FROM LOANS
  WHERE BookID = (SELECT BookId FROM Books WHERE Barcode = 5677520613)
  AND ReturnedDate IS NULL
)

UPDATE LOANS
SET ReturnedDate = '2022-07-05'
WHERE LoanID = (
  SELECT LoanID FROM LOANS
  WHERE BookID = (SELECT BookId FROM Books WHERE Barcode = 8730298424)
  AND ReturnedDate IS NULL
)