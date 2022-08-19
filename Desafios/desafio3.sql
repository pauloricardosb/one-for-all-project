SELECT
  user.name AS usuario,
  COUNT(hist.user_id) AS qt_de_musicas_ouvidas,
  ROUND(SUM(songs.length) / 60, 2) AS total_minutos
FROM
  SpotifyClone.users AS user
  JOIN SpotifyClone.history AS hist ON user.user_id = hist.user_id
  JOIN SpotifyClone.songs AS songs ON hist.song_id = songs.song_id
GROUP BY
  user.name
ORDER BY
  user.name;