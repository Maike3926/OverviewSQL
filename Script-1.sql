create database  supermercado;

CREATE TABLE cliente (
id int NOT null,
nome varchar(50) NOT NULL,
cpf varchar (11) NOT NULL,
CONSTRAINT  pk_id_cliente PRIMARY key (id)
)

create table produto(
id int not null,
descricao varchar (100) not null,
codBarra varchar (14) not null,
valor decimal (16,2)
)

--alter table produto add constraint pk_id_produto primary key (id)

alter table produto add column situacao boolean not null

alter table produto alter column descricao type varchar(200)