-- top_2009_agent.sql: Which sales agent made the most in sales
-- in 2009?

SELECT
	max(Sales.TotalSales) as TopSales,
	Sales.EmployeeName
FROM
	(SELECT
		sum(i.Total) TotalSales,
		e.FirstName || "  " || e.LastName as EmployeeName,
		strftime("%Y", i.InvoiceDate) AS InvoiceYear
	FROM Invoice i, Employee e, Customer c
	WHERE i.CustomerId = c.CustomerId
	AND c.SupportRepId = e.EmployeeId
	AND InvoiceYear = "2009"
	GROUP BY EmployeeName
	ORDER BY TotalSales DESC) AS Sales;
