-- top_3_artists.sql: Provide a query that shows the top 3
-- best selling artists.

SELECT a.ArtistId, a.Name, count(il.TrackId) as TracksSold
FROM InvoiceLine il, Track t, Artist a, Album al
WHERE il.TrackId = t.TrackId
and t.AlbumId = al.AlbumId
and al.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY TracksSold DESC limit 3
