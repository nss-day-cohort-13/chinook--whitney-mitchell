-- non_usa_customers.sql: Provide a query showing Customers
-- (just their full names, customer ID and country) who are not in the US.

SELECT c.CustomerId, c.FirstName, c.LastName, c.Country
FROM Customer c
WHERE c.Country <> "USA"
