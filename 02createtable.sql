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
    codigo_ingrediente INT NOT NULL,
    codigo_fornecedor INT NOT NULL,
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
    id int not null auto_increment,
    codigo_ingrediente int not null,
    codigo_receita int not null,
    quantidade int not null,
    primary key (id)
);



-- Tabela receitas
create table receitas(
    id int not null auto_increment,
    data_criacao date not null,
    taxa int not null,
    preco_custo decimal(10.2),
    rendimento int not null,
    primary key (id)
);



-- Tabela produtos
create table produtos(
    id int not null auto_increment,
    nome varchar(80) not null,
    descricao varchar(200) not null,
    tamanho int not null,
    taxa_lucro int not null,
    primary key (id)
);



-- Tabela produtos_pedidos
create table produtos_pedidos(
    id int not null auto_increment,
    codigo_Produto int not null,
    codigo_pedido int not null,
    quantidade int not null,
    primary key(id)
);

create table pedidos(
    id int not null auto_increment,
    data date not null,
    codigo_cliente int not null,
    frete int not null,
    desconto int not null,
    adicional int,
    total decimal(10.2) not null,
    codigo_funcionario int not null,
    primary key(id)
);



-- Tabela clientes
create table clientes(
    id int not null auto_increment,
    nome varchar(80) not null,
    cpf int not null,
    telefone varchar(20) not null,
    rua  varchar(100) not null,
    numero varchar(80) not null,
    complemento varchar(80) not null,
    primary key(id)
);



-- Tabela funcionarios
create table funcionarios(
    id int not null auto_increment,
    nome varchar(80) not null,
    login varchar(16) not null,
    senha varchar(16) not null,
    nivel int not null,
    cpf varchar(40) not null,
    rua varchar(100) not null,
    primary key (id)
);



-- Tabela pagamento
CREATE TABLE pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor_pagamento DECIMAL(10.2) NOT NULL,
    codigo_pagamento INT NOT NULL,
    tipo_pagamento INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela tipo_pagamento
CREATE TABLE tipo_pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    tipo_pagamento INT NOT NULL,
    parcela INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela preco
CREATE TABLE preco(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    codigo_produto INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela compra
CREATE TABLE compra(
    id INT NOT NULL AUTO_INCREMENT,
    nf_pedido INT NOT NULL,
    data DATE NOT NULL,
    codigo_fornecedor INT NOT NULL,

    PRIMARY KEY(id)
);



-- Tabela fornecedores
create table fornecedores(
    id int not null auto_increment,
    razaosocial varchar(80) not null,
    nome_fantasia varchar(80) not null,
    cpf_cnpj varchar(14) not null,
    rg_ie varchar(14) not null,
    rua varchar(120) not null,
    numero varchar(80) not null,
    complemento varchar(80) not null,
    primary key(id)
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
    codigo_estado INT NOT NULL,
);



-- Tabela bairro
CREATE TABLE bairro(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_cidade INT NOT NULL,
);



-- Taela rua
CREATE TABLE rua(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_bairro INT NOT NULL,
    CEP VARCHAR(50) NOT NULL,
);
