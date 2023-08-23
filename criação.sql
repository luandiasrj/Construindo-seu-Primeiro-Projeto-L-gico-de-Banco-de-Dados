CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  tipo CHAR(2) CHECK (tipo IN ('PF', 'PJ')),
  cpf_cnpj VARCHAR(14) UNIQUE
);

CREATE TABLE fornecedores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  vendedor BOOL
);

CREATE TABLE produtos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  fornecedor_id INT,
  FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id),
  estoque INT
);

CREATE TABLE pagamentos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  tipo VARCHAR(50)
);

CREATE TABLE entrega (
  id INT PRIMARY KEY AUTO_INCREMENT,
  status VARCHAR(50),
  codigo_rastreio VARCHAR(20)
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  pagamento_id INT,
  entrega_id INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (pagamento_id) REFERENCES pagamentos(id),
  FOREIGN KEY (entrega_id) REFERENCES entrega(id)
);
