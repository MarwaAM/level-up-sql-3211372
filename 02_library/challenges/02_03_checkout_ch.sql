-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

INSERT INTO Loans
(BookID, PatronID, LoanDate, DueDate) VALUES
((select BookID from books WHERE Barcode = 2855934983), 
(SELECT PatronID FROM Patrons WHERE email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08'),
((select BookID from books WHERE Barcode = 4043822646), 
(SELECT PatronID FROM Patrons WHERE email = 'jvaan@wisdompets.com'),
'2022-08-25', '2022-09-08')


SELECT * from Loans
WHERE PatronID = (SELECT PatronID FROM Patrons WHERE email = 'jvaan@wisdompets.com') 
AND LoanDate = '2022-08-25'