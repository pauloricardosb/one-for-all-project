SELECT
  COUNT(songs.song_id) AS cancoes,
  COUNT(DISTINCT songs.album_id) AS albuns,
  COUNT(DISTINCT albums.artist_id) AS artistas
FROM
  SpotifyClone.songs AS songs
  INNER JOIN SpotifyClone.albums AS albums ON songs.album_id = albums.album_id;