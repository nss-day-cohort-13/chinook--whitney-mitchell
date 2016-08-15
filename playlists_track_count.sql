-- playlists_track_count.sql: Provide a query that shows the
-- total number of tracks in each playlist. The Playlist name
-- should be include on the resulant table.

SELECT p.Name as PlaylistName, count(pt.TrackId) as TotalTracks
FROM Playlist p, PlaylistTrack pt
WHERE pt.PlaylistId = p.PlaylistId
GROUP BY p.Name
