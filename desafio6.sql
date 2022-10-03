SELECT MIN(SpotifyClone.planos.valor_plano) AS faturamento_minimo,
MAX(SpotifyClone.planos.valor_plano) AS faturamento_maximo,
ROUND(AVG(SpotifyClone.planos.valor_plano), 2) AS faturamento_medio,
SUM(SpotifyClone.planos.valor_plano) AS faturamento_total
FROM SpotifyClone.planos
INNER JOIN SpotifyClone.usuarios
ON SpotifyClone.usuarios.plano_id = SpotifyClone.planos.id;