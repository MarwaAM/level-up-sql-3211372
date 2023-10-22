-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT *
FROM CUSTOMERS
WHERE LastName = 'Hundey'

-- customerId = 70;

INSERT INTO Orders
(customerId, OrderDate) VALUES (70, '2022-09-20 14:00:00')

SELECT * FROM Orders WHERE OrderDate = '2022-09-20 14:00:00'

-- orderId = 1001;

SELECT DishID, Name, price FROM Dishes
WHERE Name = 'House Salad'  -- id = 7
OR Name = 'Mini Cheeseburgers' -- id = 4
OR Name = 'Tropical Blue Smoothie' -- id = 20

INSERT INTO OrdersDishes
(OrderID, DishID) VALUES
(1001, 7), (1001, 4), (1001, 20)

SELECT sum(d.price) 
FROM Dishes d
INNER JOIN OrdersDishes od
ON d.DishID = od.DishID
WHERE od.OrderID = 1001; -- 21.0