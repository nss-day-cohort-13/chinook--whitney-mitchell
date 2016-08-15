-- tracks_no_id.sql: Provide a query that shows all the Tracks,
-- but displays no IDs. The result should include the Album name, Media type
-- and Genre.

SELECT t.Name as Track, a.Title as Album, m.Name as Media, g.Name as Genre
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId = a.AlbumId
and t.MediaTypeId = m.MediaTypeId
and t.GenreId = g.GenreId
GROUP BY a.Title, t.Name
