SELECT
  user.name AS usuario,
  IF(
    MAX(YEAR(hist.time) >= 2021),
    'Usuário ativo',
    'Usuário inativo'
  ) AS status_usuario
FROM
  SpotifyClone.users AS user
  INNER JOIN SpotifyClone.history AS hist ON user.user_id = hist.user_id
GROUP BY
  hist.user_id
ORDER BY
  user.name;