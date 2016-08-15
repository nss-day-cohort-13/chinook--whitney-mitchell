-- top_media_type.sql: Provide a query that shows the most
-- purchased Media Type.

SELECT m.Name as MediaType, count(t.TrackId) as TotalSold
FROM MediaType m, InvoiceLine il, Track t
WHERE il.TrackId = t.TrackId
and t.MediaTypeId = m.MediaTypeId
GROUP BY m.MediaTypeId
ORDER BY TotalSold DESC limit 1
