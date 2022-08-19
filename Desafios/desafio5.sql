SELECT
  songs.title AS cancao,
  COUNT(hist.song_id) AS reproducoes
FROM
  SpotifyClone.songs AS songs
  JOIN SpotifyClone.history AS hist ON hist.song_id = songs.song_id
GROUP BY
  songs.song_id
ORDER BY
  reproducoes DESC,
  songs.title
LIMIT
  2;