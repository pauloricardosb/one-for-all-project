SELECT
  artists.name AS artista,
  albums.title AS album
FROM
  SpotifyClone.artists AS artists
  INNER JOIN SpotifyClone.albums AS albums ON albums.artist_id = artists.artist_id
WHERE
  artists.name = 'Elis Regina';