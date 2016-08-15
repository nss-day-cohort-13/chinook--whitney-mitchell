-- top_agent.sql: Which sales agent made the most in sales over all?
SELECT
	max(Sales.TotalSales) as TopSales,
	Sales.EmployeeName
FROM
	(SELECT
		round(sum(i.Total)) TotalSales,
		e.FirstName || "  " || e.LastName as EmployeeName,
		strftime("%Y", i.InvoiceDate) as InvoiceYear
	FROM Invoice i, Employee e, Customer c
	WHERE i.CustomerId = c.CustomerId
	and c.SupportRepId = e.EmployeeId
	GROUP BY EmployeeName
	ORDER BY TotalSales DESC) as Sales;
