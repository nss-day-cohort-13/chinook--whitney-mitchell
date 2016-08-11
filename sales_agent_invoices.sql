-- sales_agent_invoices.sql: Provide a query that shows the invoices
-- associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT i.InvoiceId, e.FirstName, e.LastName
FROM Invoice i, Customer c, Employee e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
