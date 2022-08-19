SELECT
  artists.name AS artista,
  albums.title AS album,
  COUNT(follow.artist_id) AS seguidores
FROM
  SpotifyClone.artists AS artists
  JOIN SpotifyClone.albums AS albums ON albums.artist_id = artists.artist_id
  JOIN SpotifyClone.following AS follow ON artists.artist_id = follow.artist_id
GROUP BY
  artists.artist_id,
  albums.album_id
ORDER BY
  seguidores DESC,
  artista,
  album;