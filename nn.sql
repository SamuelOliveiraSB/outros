create database venda;
use venda;

create table cliente(
idcliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
cep char(9),
cidade varchar(45),
bairro varchar(45),
logradouro varchar(45),
fkindicado int,
foreign key (fkindicado) references cliente(idcliente)
);

select * from cliente;
delete from cliente where idcliente = 2;

insert into cliente values
(null,'samuel','samukinha@gmail.com',12343-987,'são paulo','cohab brasilandia','apto 5 bloco 3',null);
insert into cliente values
(null,'marcus','marc0s@gmail.com',87643-007,'são paulo','taipas','casa 3',1),
(null,'douglas','douglas@gmail.com',12343-007,'osasco','jd.pery','casa 1',1),
(null,'vitor','xazan@gmail.com',12343-204,'belo horizonte','jd.damasceno','apto 3 bloco 5',4),
(null,'nathan','142nathan@gmail.com',12343-000,'campinas','jd.eliza maria','apto 5 bloco 9',3),
(null,'claudio','clauudi@gmail.com',54321-837,'são paulo','jd.vista alegre','casa 23',1);

create table venda(
idvenda int auto_increment,
totalvenda decimal(10,2),
datavenda date,
fkcliente int,
foreign key (fkcliente) references cliente(idcliente),
primary key (idvenda, fkcliente)
)auto_increment = 101;

select * from venda;

insert into venda values
(null, 5.59 , '2022-10-25' , 1);

insert into venda values
(null, 7.59 , '2022-10-22' , 1),
(null, 10.59 , '2022-06-10' , 1),
(null, 30.29 , '2022-10-02' , 6),
(null, 13.75 , '2022-10-21' , 5),
(null, 21.39 , '2022-09-18' , 3),
(null, 19.99 , '2022-09-01' , 4);
insert into venda values
(null, 19.99 , '2022-09-01' , 7);

select * from cliente  join venda on fkcliente = idcliente;

select * from cliente  join venda on fkcliente = idcliente where cliente.nome = 'samuel';

select * from cliente as cn  left join cliente as indicado on cn.idcliente  = indicado.fkindicado ;

select * from cliente as cn  left join cliente as indicado on cn.idcliente  = indicado.fkindicado where cn.nome = 'samuel' ;


select sum(totalvenda) 'total' from venda;
select avg(totalvenda)  from venda;



create table produto (
idproduto int primary key auto_increment,
nome varchar(45),
descricao varchar(45),
preco decimal(10,2)
)auto_increment = 201;

create table estoque(
idestoque int,
fkvenda int,
foreign key (fkvenda) references venda(idvenda),
fkproduto int,
foreign key (fkproduto) references produto(idproduto),
primary key (fkvenda,fkproduto)
);

