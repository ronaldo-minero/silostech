CREATE DATABASE silostech;

USE silostech;

CREATE TABLE sensor (
idSensor int primary key auto_increment,
nomeEmpresa VARCHAR(100),
cnpj CHAR(14),
email VARCHAR(50) UNIQUE,
senha VARCHAR(150),
nome VARCHAR(20),
sobrenome VARCHAR(20),
statusSensor VARCHAR(50),
CONSTRAINT chkStatus check(statusSensor IN('Ligado', 'Desligado'))
);

INSERT INTO sensor (idSensor, nomeEmpresa, cnpj, email, senha, nome, sobrenome, statusSensor) VALUES
(default, 'Tech Solutions Ltda', '12345678000101', 'contato@techsolutions.com', 'hash_senha_empresa1', 'Carlos', 'Augusto', 'Ligado'),
(default, 'Inova Indústria', '98765432000199', 'suporte@inovaindustria.com.br', 'hash_senha_empresa2', 'Mariana', 'Costa', 'Desligado'),
(default, 'Logística Express', '45678912000133', 'admin@logexpress.com', 'hash_senha_empresa3', 'Roberto', 'Almeida', 'Ligado');



