-- Quantos pedidos foram feitos por cada cliente?
SELECT c.nome AS cliente, COUNT(p.id) AS numero_de_pedidos
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
ORDER BY numero_de_pedidos DESC;

-- Algum vendedor também é fornecedor?
SELECT nome FROM fornecedores WHERE vendedor = TRUE;

-- Relação de produtos fornecedores e estoques;
SELECT p.nome AS produto, f.nome AS fornecedor, p.estoque
FROM produtos p
JOIN fornecedores f ON p.fornecedor_id = f.id
ORDER BY fornecedor;

-- Relação de nomes dos fornecedores e nomes dos produtos;
SELECT f.nome AS fornecedor, p.nome AS produto
FROM fornecedores f
JOIN produtos p ON f.id = p.fornecedor_id
ORDER BY fornecedor;