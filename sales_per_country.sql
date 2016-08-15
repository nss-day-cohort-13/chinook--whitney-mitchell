-- sales_per_country.sql: Provide a query that shows the
-- total sales per country.

SELECT c.Country as Country, count(i.InvoiceId) as TotalInvoices, round(sum(i.Total), 2) as TotalSales
FROM Invoice as i, Customer as c
WHERE c.Country = i.BillingCountry
GROUP BY Country
ORDER BY TotalSales DESC
