create database precocerto;
show databases;
use precocerto;
select database();

create table ingredients (
id int not null auto_increment,
Nome varchar(80) not null,
Tamanho int not null,
Valor decimal(10.2) not null,
Valor_Unitario decimal(10.2) not null,
Codigo_fornecedor int not null,
primary key(id)
);

create table ingrediente_receita (
id int not null auto_increment,
Codigo_ingrediente int not null,
Codigo_receita int not null,
Quantidade int not null,
Valores decimal(10.2) not null,
primary key (id)

);

create table Receitas(
id int not null auto_increment,
Mao_obra int not null,
taxa int not null,
preco_custo decimal(10.2),
primary key (id)
);

create table Receita_Produto(
id int not null auto_increment,
Codigo_receita int not null,
Codigo_produto int not null,
Quantidade int not null,
primary key(id)
);

create table Produtos(
id int not null auto_increment,
Descricao varchar(200) not null,
Tamanho int not null,
Taxa_lucro int not null,
Lucro decimal(10.2) not null,
Preco_final decimal(10.2) not null,
primary key (id)
);

create table Produtos_pedidos(
id int not null auto_increment,
Codigo_Produto int not null,
Codigo_pedido int not null,
Quantidade int not null,
Subtotal decimal(10.2) not null,
primary key(id)
);

create table Pedidos(
id int not null auto_increment,
Data date not null,
Codigo_cliente int not null,
Taxa_frete int not null,
Taxa_desconto int not null,
Taxa_adicional int,
Total decimal(10.2) not null,
Codigo_pagamento int not null,
Codigo_funcionario int not null,
primary key(id)
);

create table Funcionarios(
id int not null auto_increment,
Nome varchar(80) not null,
Login varchar(16) not null,
Senha varchar(16) not null,
Nivel int not null,
CPF int not null,
Endereco varchar(100) not null,
primary key (id)
);

create table Clientes(
id int not null auto_increment,
Noe varchar(80) not null,
CPF int not null,
Telefone int not null,
Endereco varchar(100) not null,
Senha varchar(80) not null,
primary key(id)
);

create table Fornecedores(
id int not null auto_increment,
Nome varchar(80) not null,
CPF_CNPJ varchar(14) not null,
Endereco varchar(120) not null,
Seguimento varchar(80) not null,
primary key(id)
);


