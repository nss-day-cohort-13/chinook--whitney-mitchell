-- sales_agent_total_sales.sql: Provide a query that shows total
-- sales made by each sales agent.

SELECT e.EmployeeId as EmployeeId,
			 e.FirstName || " " || e.LastName as Employee,
			 count(i.InvoiceId) as TotalInvoices,
			 round(sum(i.Total), 2 ) as TotalSales
FROM Employee e, Customer c, Invoice i
WHERE e.Title = "Sales Support Agent"
and e.EmployeeId = c.SupportRepId
and i.CustomerId = c.CustomerId
GROUP BY e.FirstName || " " || e.LastName
