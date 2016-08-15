-- top_2013_track.sql: Provide a query that shows the most purchased
-- track of 2013.
SELECT
	TrackSales.Name, max(TrackSales.TimesPurchased) as TimesPurchased

FROM
	(SELECT  t.TrackId, t.Name as Name, i.InvoiceDate,
						strftime("%Y", i.InvoiceDate) as InvoiceYear,
						sum(il.TrackId) as TimesPurchased
	FROM Track t, Invoice i, InvoiceLine il
	WHERE t.TrackId = il.TrackId
	and i.InvoiceId = il.InvoiceId
	and InvoiceYear = "2013"
	GROUP BY t.Name
	ORDER BY TimesPurchased
	) as TrackSales

