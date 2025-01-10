# INNER JOIN

SELECT DISTINCT
  a.user_id AS acesso_user,
  c.user_id AS compra_user,
  a.name

FROM `crafty-helper-447412-m2.MeuCursoGCP.Acessos` AS a
INNER JOIN `crafty-helper-447412-m2.MeuCursoGCP.Compras` AS c
ON a.user_id = c.user_id;

-----------------------------------------------------------------------------------------------------------------------

# LEFT JOIN
-- Trazendo os registros dos usuários que tiveram acesso (a) e realizaram uma compra (c)
SELECT DISTINCT
  a.user_id AS acesso_user,
  c.user_id AS compra_user,
  a.name,
  c.revenue AS receita

FROM `crafty-helper-447412-m2.MeuCursoGCP.Acessos` AS a
LEFT JOIN `crafty-helper-447412-m2.MeuCursoGCP.Compras` AS c
ON a.user_id = c.user_id;

-------------------------------------------------------------------------------------------------------------------------

# RIGHT JOIN
-- Trazendo registros de usuários que tiveram compras (c) mas não tiveram acessos (a), ou seja, compraram em loja física
SELECT DISTINCT
  a.user_id AS acesso_user,
  c.user_id AS compra_user,
  c.name,
  c.revenue AS receita

FROM `crafty-helper-447412-m2.MeuCursoGCP.Acessos` AS a
RIGHT JOIN `crafty-helper-447412-m2.MeuCursoGCP.Compras` AS c
ON a.user_id = c.user_id
WHERE a.user_id IS NULL; -- usuários que tem compras porém não tem acessos online, ou seja, compraram em lojs física

----------------------------------------------------------------------------------------------------------------------------

# FULL JOIN

SELECT DISTINCT
  a.user_id AS acesso_user,
  a.name AS acesso_name,
  c.user_id AS compra_user,
  c.name AS compra_name,
  c.revenue AS receita

FROM `crafty-helper-447412-m2.MeuCursoGCP.Acessos` AS a
FULL JOIN `crafty-helper-447412-m2.MeuCursoGCP.Compras` AS c
ON a.user_id = c.user_id


