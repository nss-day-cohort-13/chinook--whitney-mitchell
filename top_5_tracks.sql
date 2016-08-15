-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

SELECT  t.TrackId, t.Name as TrackName,
						sum(il.TrackId) as TimesPurchased
	FROM Track t, Invoice i, InvoiceLine il
	WHERE t.TrackId = il.TrackId
	and i.InvoiceId = il.InvoiceId
	GROUP BY t.Name
	ORDER BY TimesPurchased DESC limit 5
