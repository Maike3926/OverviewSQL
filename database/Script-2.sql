insert into produto (id, descricao, codbarra, valor, situacao )
values (3, 'refrigerante', '8721398123', 10.20, true)

insert into cliente (id, nome, cpf)
values (1, 'virgulino', '12345678901')

update produto set valor = 50 where id = 1

select * from produto 

delete from produto;
insert into produto (id, descricao, codbarra, valor, situacao )
values (1, 'Arroz', '8721398123', 10.20, true);
insert into produto (id, descricao, codbarra, valor, situacao )
values (2, 'Cafe', '8721398123', 10.20, true);
insert into produto (id, descricao, codbarra, valor, situacao )
values (3, 'Macarrao', '8721398123', 10.20, true);

select * from produto

select prod.id, prod.descricao from produto as prod order by id desc 
