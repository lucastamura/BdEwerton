-- Criando um banco de dados
CREATE DATABASE bdprecocerto;

--Exibindo todos os bancos de dados disponíveis
SHOW DATABASE;

--Utilizando banco de dados bdprecocerto
USE bdprecocerto;

--Colentando todas as informações do banco de dados
SELECT DATABASE();





---------- CRIANDO TABELAS -----------------




-- Tabela pedido_ingrediente

CREATE TABLE pedido_ingrediente(
    codigo_ingrediente INT NOT NULL,  --FK PK
    codigo_fornecedor INT NOT NULL,  --FK PK
    quantidade INT NOT NULL,
    valor DECIMAL(10.2) NOT NULL,
);



-- Tabela Ingredientes

CREATE TABLE ingredientes(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    tamanho DECIMAL(10.2) NOT NULL,
    valor_unitario DECIMAL(10.2) NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela ingredientes-receitas
CREATE TABLE ingredientes_receitas (
    codigo_ingrediente INT NOT NULL,   --FK PK
    codigo_receita INT NOT NULL,       --FK PK
    quantidade INT NOT NULL,
);



-- Tabela receitas
CREATE TABLE receitas(
    id INT NOT NULL auto_increment,
    data_criacao DATE NOT NULL,
    taxa DECIMAL(10.2) NOT NULL,
    preco_custo DECIMAL(10.2),
    rendimento INT NOT NULL,

    PRIMARY KEY (id)
);



-- Tabela produtos
CREATE TABLE produtos(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    tamanho DECIMAL(10.2) NOT NULL,
    taxa_lucro DECIMAL(10.2) NOT NULL,
    codigo_receita INT NOT NULL,            --FK
    PRIMARY KEY (id)
);



-- Tabela produtos_pedidos
CREATE TABLE produtos_pedidos(
    codigo_Produto INT NOT NULL,   --FK PK
    codigo_pedido INT NOT NULL,   --FK PK
    quantidade INT NOT NULL,
);


-- Tabelas pedidos
CREATE TABLE pedidos(
    id INT NOT NULL auto_increment,
    data DATE NOT NULL,
    codigo_cliente INT NOT NULL,   --FK 
    frete DECIMAL(10.2) NOT NULL,
    desconto DECIMAL(10.2) NOT NULL,
    adicional DECIMAL(10.2),
    total DECIMAL(10.2) NOT NULL,
    codigo_funcionario INT NOT NULL,   --FK 
    PRIMARY KEY(id)
);



-- Tabela clientes
CREATE TABLE clientes(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    cpf INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    rua  VARCHAR(100) NOT NULL,     --FK
    numero VARCHAR(30) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);



-- Tabela funcionarios
CREATE TABLE funcionarios(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    login VARCHAR(16) NOT NULL,
    senha VARCHAR(16) NOT NULL,
    nivel INT NOT NULL,
    cpf VARCHAR(40) NOT NULL,
    rua VARCHAR(100) NOT NULL,   --FK
    numero VARCHAR(30) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);



-- Tabela pagamento
CREATE TABLE pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor_pagamento DECIMAL(10.2) NOT NULL,
    codigo_pagamento INT NOT NULL,              --FK
    tipo_pagamento INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela tipo_pagamento
CREATE TABLE tipo_pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    tipo_pagamento INT NOT NULL,        --FK
    parcela INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela preco
CREATE TABLE preco(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    codigo_produto INT NOT NULL,        --FK

    PRIMARY KEY(id)
);



-- Tabela compra
CREATE TABLE compra(
    id INT NOT NULL AUTO_INCREMENT,
    nf_pedido INT NOT NULL,
    data DATE NOT NULL,
    codigo_fornecedor INT NOT NULL,         --FK

    PRIMARY KEY(id)
);



-- Tabela fornecedores
CREATE TABLE fornecedores(
    id INT NOT NULL auto_increment,
    razaosocial VARCHAR(80) NOT NULL,
    nome_fantasia VARCHAR(80) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL,
    rg_ie VARCHAR(14) NOT NULL,
    rua VARCHAR(120) NOT NULL,      --FK
    numero VARCHAR(80) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);



-- Tabela estado
CREATE TABLE estado(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    uf VARCHAR(2) NOT NULL,
);



-- Tabela cidade
CREATE TABLE cidade(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_estado INT NOT NULL,     --FK
);



-- Tabela bairro
CREATE TABLE bairro(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_cidade INT NOT NULL,     --FK
);



-- Taela rua
CREATE TABLE rua(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_bairro INT NOT NULL,     --FK
    CEP VARCHAR(50) NOT NULL,
);

ALTER TABLE rua ADD CONSTRAINT fk_rua_bairro FOREIGN KEY (codigo_bairro) REFERENCES bairro (id);
