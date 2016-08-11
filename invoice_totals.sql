-- invoice_totals.sql: Provide a query that shows the Invoice Total,
-- Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName
FROM Invoice i, Customer c, Employee e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND e.Title LIKE "Sales%"
