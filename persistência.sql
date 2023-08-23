-- Inserir Clientes
INSERT INTO clientes (nome, tipo, cpf_cnpj) VALUES ('João Silva', 'PF', '12345678901');
INSERT INTO clientes (nome, tipo, cpf_cnpj) VALUES ('Maria Santos', 'PJ', '98765432100122');
INSERT INTO clientes (nome, tipo, cpf_cnpj) VALUES ('Empresa XYZ', 'PJ', '12345678900123');

-- Inserir Fornecedores
INSERT INTO fornecedores (nome, vendedor) VALUES ('Fornecedor A', FALSE);
INSERT INTO fornecedores (nome, vendedor) VALUES ('Fornecedor B', TRUE);

-- Inserir Produtos
INSERT INTO produtos (nome, fornecedor_id, estoque) VALUES ('Produto 1', 1, 100);
INSERT INTO produtos (nome, fornecedor_id, estoque) VALUES ('Produto 2', 2, 50);

-- Inserir Formas de Pagamento
INSERT INTO pagamentos (tipo) VALUES ('Cartão de Crédito');
INSERT INTO pagamentos (tipo) VALUES ('Boleto Bancário');

-- Inserir Informações de Entrega
INSERT INTO entrega (status, codigo_rastreio) VALUES ('Em Trânsito', 'ABC123');
INSERT INTO entrega (status, codigo_rastreio) VALUES ('Entregue', 'XYZ789');

-- Inserir Pedidos
INSERT INTO pedidos (cliente_id, pagamento_id, entrega_id) VALUES (1, 1, 1);
INSERT INTO pedidos (cliente_id, pagamento_id, entrega_id) VALUES (2, 2, 2);
INSERT INTO pedidos (cliente_id, pagamento_id, entrega_id) VALUES (3, 1, 2);
