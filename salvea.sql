create database sptech;
use sptech;



create table projeto(
idprojeto int primary key auto_increment,
nome varchar(45),
descrição varchar(45)
)auto_increment = 100;

create table aluno(
idaluno int primary key auto_increment,
nome varchar(45),
telefone varchar(12),
fkrepresentante int,
foreign key (fkrepresentante) references aluno(idaluno),
fkprojeto int,
foreign key (fkprojeto) references projeto(idprojeto)
)auto_increment = 1;

create table acompanhante(
idacompanhante int,
nome varchar(45),
relacionamento varchar(45),
fkaluno int,
foreign key (fkaluno) references aluno(idaluno),
primary key (idacompanhante, fkaluno)
);

select * from projeto;


insert into projeto values
(null,'hermodata','tem o intuito de controlar e monitorart'),
(null,'carstore','vendas de carros'),
(null,'scrumm','nova metodologia'),
(null,'hazen','ajudar na implantação de hospitais');


select * from projeto;
desc aluno;

insert into aluno values
(null,'samuel','(11)40028922', 1,100),
(null,'andre','(11)53868922', 2, 102),
(null,'matheus','(11)12345678', 3,103),
(null,'lucas','(11)42536479',1, 102);



select * from aluno;

select * from acompanhante;

desc acompanhante;
insert into acompanhante values
(200,'maria','mãe', 1),
(201,'paula','irmã', 2),
(202,'rafaela','tia', 3),
(203,'taina','prima',4);

update acompanhante set idacompanhante = 1 where fkaluno = 1;
update acompanhante set idacompanhante = 2 where fkaluno = 2;
update acompanhante set idacompanhante = 3 where fkaluno = 3;
update acompanhante set idacompanhante = 4 where fkaluno = 4;

select * from projeto;
select * from aluno;
select * from acompanhante;
desc acompanhante;

select * from aluno;