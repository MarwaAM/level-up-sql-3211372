-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT 
  c.customerId,
  c.firstName,
  c.lastName,
  c.email, 
  count(o.OrderID) as noOfOrders
FROM Customers c
INNER JOIN Orders o
On c.customerId = o.customerId
GROUP BY c.customerId
ORDER BY count(o.customerId) DESC
LIMIT 15;