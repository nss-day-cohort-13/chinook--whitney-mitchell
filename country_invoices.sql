-- country_invoices.sql: Provide a query that shows the # of
-- invoices per country. HINT: GROUP BY

SELECT i.BillingCountry as Country, count(i.BillingCountry) as Invoices
FROM Invoice as i
GROUP BY i.BillingCountry
