create database treinador;
use treinador;

create table treinador (
idtreinador int primary key auto_increment,
nome varchar(45),
tel char(12),
email varchar(45), constraint chkemail check (email in("@"))
)auto_increment = 10;

select *from treinador; 
desc treinador;

insert into treinador values
(null,'samuel',12345678102,'@');

alter table treinador add constraint chkemaill check (email like('%@%'));
alter table treinador drop constraint chkemail;

insert into treinador values
(null,'roberto',94835678102,'roberto.sla@sptech');

insert into treinador values
(null,'carlos',94835678102,'carlos.sla@sptech'),
(null,'zyzz',94835678102,'zizz.sla@sptech'),
(null,'matheus',83947678102,'matheus.sla@sptech'),
(null,'marcus',94835678102,'marcus.sla@sptech'),
(null,'emilene',23152678102,'emilene.sla@sptech');


create table nadador(
idnadador int auto_increment,
nome varchar(45),
estado varchar(45),
dtnasc date,
fktreinador int,
foreign key (fktreinador) references treinador(idtreinador),
primary key (idnadador,fktreinador)
)auto_increment = 100;

select * from nadador;
update treinador set email = 'samuel.oliveira@sptech' where idtreinador = 10;

insert into nadador values
(null, 'ticuticu','são pailo','2000-02-16', 10),
(null,'léo','minas gerais','2012-01-09', 11),
(null,'kaue','alagoas','1998-10-06', 11),
(null,'jé','rio de janeiro','1980-12-22', 12),
(null,'iza','distrito federal','1970-06-16', 13);

---------adcionar esses
(null,'kaue','alagoas','1998-10-06', 14),
(null,'jé','rio de janeiro','1980-12-22', 15),
(null,'iza','distrito federal','1970-06-16', 16);
