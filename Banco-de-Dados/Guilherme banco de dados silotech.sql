create database silotech;
use silotech;

create table silos(
	id int primary key auto_increment,
    sensor varchar(40),
    statuss tinyint,
    constraint chkStatus check (statuss = 1 or statuss = 0)
)auto_increment = 1;

create table estoque(
	idSilo int primary key auto_increment,
    sensor varchar(40),
    estoque decimal (10,1)
)auto_increment = 1;

create table usuario(
	idUser int primary key auto_increment,
    email varchar(50) unique,
    senha varchar(50),
    nomeUsuario varchar(70),
    dtCadastro datetime,
    empresa varchar(50)
)auto_increment = 1;

create table empresa(
	idEmpresa int primary key auto_increment,
    nomeEmpresa varchar(50),
    cnpj char(18),
    endereco varchar(100),
	ramo varchar(30)
)auto_increment = 1; 

insert into silos values
(default, 'HC-SR04', 1),
(default, 'HC-SR04', 1),
(default, 'HC-SR04', 0),
(default, 'HC-SR04', 1);

insert into estoque values
(default, 'HC-SR04', 2.6),
(default, 'HC-SR04', 4.4),
(default, 'HC-SR04', 1.2),
(default, 'HC-SR04', 2.5);

insert into usuario (nomeUsuario, email, senha, dtCadastro, empresa)values
('Guilherme de Sousa Pinheiro', 'guilhermedesousa@gmail.com', '123456789', now(), 'Sousa Farm'),
('Mariana Silva Oliveira', 'mariana.silva@gmail.com', '987654321', now(), 'AgroTech'),
('Carlos Eduardo Lima', 'carlos.lima@outlook.com', 'senha1234', now(), 'Fazenda Boa Vista'),
('Beatriz Costa Santos', 'beatriz.santos@hotmail.com', 'abc12345', now(), 'Graos & Cia');

insert into empresa (nomeEmpresa, cnpj, endereco, ramo) values
('Sousa Farm', '11.222.333/0001-01', 'Estrada Rural, km 5 - Ribeirão Preto, SP', 'Agronegócio'),
('AgroTech', '22.333.444/0001-02', 'Av. das Nações, 500 - Campinas, SP', 'Tecnologia Agrícola'),
('Fazenda Boa Vista', '33.444.555/0001-03', 'Rodovia do Sol, s/n - Piracicaba, SP', 'Agricultura'),
('Graos & Cia', '44.555.666/0001-04', 'Rua dos Cafezais, 120 - Uberagaba, MG', 'Comércio de Grãos');

select id as 'ID do silo', sensor as 'Sensor utilizado',
case
when statuss = 1 then 'Ativado'
else 'Desativado'
end as 'Status do sensor'
from silos;

use silotech;

alter table usuario add column cpf char(11);

alter table usuario modify column email varchar(50) not null;

update usuario set cpf = '12345678901'
	where idUser in(1,2,3,4);
    
select * from usuario;



