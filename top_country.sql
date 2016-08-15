-- top_country.sql: Which country's customers spent the most?

SELECT Country, max(CountrySales.TotalSales) as SalesTotal, TotalInvoices

FROM
	(SELECT c.Country as Country, count(i.InvoiceId) as TotalInvoices, round(sum(i.Total), 2) as TotalSales
	FROM Invoice as i, Customer as c
	WHERE c.Country = i.BillingCountry
	GROUP BY Country
	ORDER BY TotalSales DESC) as CountrySales
