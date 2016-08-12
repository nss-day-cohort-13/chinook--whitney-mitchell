-- line_item_track_artist.sql: Provide a query that includes the
-- purchased track name AND artist name with each invoice line item.

SELECT
  i.InvoiceLineId, t.Name as TrackName, a.Name as ArtistName
FROM
  InvoiceLine as i,
  Track as t,
  Album as m,
  Artist as a
WHERE
  i.TrackId = t.TrackId and
  t.AlbumId = m.AlbumId and
  m.ArtistId = a.ArtistId
ORDER BY  i.InvoiceLineId
