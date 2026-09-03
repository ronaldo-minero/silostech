CREATE DATABASE silotech;

USE silotech;

CREATE TABLE usuario(
	idEmail INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(90) UNIQUE,
	CONSTRAINT checkEmail CHECK(email LIKE '%@%'),
    senha VARCHAR(60),
    primeiroNome VARCHAR(20) NOT NULL,
    segundoNome VARCHAR (50),
    cpf CHAR(11),
    dtNasc DATE,
    dtCriacaoConta DATETIME
);

INSERT INTO usuario VALUES 
(default, 'joao.silva@email.com', 'senha123', 'João', 'Silva', '12345678901', '2003-05-10', '2026-09-03 10:23:01');

INSERT INTO usuario (email, senha, primeiroNome, segundoNome, cpf, dtNasc, dtCriacaoConta) VALUES 
('maria.santos@email.com', 'senha456', 'Maria', 'Santos', '98765432100', '1990-10-22', now()),
('carlos.maia@email.com', 'senha789', 'Carlos', 'Maia', '11122233344', '2001-03-15', now());

INSERT INTO usuario (email, senha, primeiroNome, cpf, dtNasc) VALUES 
('ana.rita.pintadinha@email.com', 'senha000', 'Ana', '55566677788', '2000-12-01');

CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
	cnpj CHAR(18),
    razãoSocial VARCHAR(256),
    nomeFantasia VARCHAR(256) NOT NULL,
    endereco VARCHAR(100),
    bairro VARCHAR(60),
    numero INT,
    complemento VARCHAR(40),
    cep CHAR(9),
    dataRegistro DATETIME
);

INSERT INTO empresa VALUES 
(default, '12.345.678/0001-99', 'AgroTech É POP É TUDO LTDA.', 'AgroTech', 'Rua das Lavouras', 'Centro', 150, 'Galpão 3', '01000-000', '2026-01-15 12:30:22');

INSERT INTO empresa (nomeFantasia, cnpj, razãoSocial, cep, endereco, bairro, numero) 
VALUES ('Fazenda do Ribeirinho', '98.765.432/0001-11', 'Ribeirinho LTDA', '01310-100', 'Av. Paulista', 'Bela Vista', 1000);

INSERT INTO empresa (cnpj, razãoSocial, nomeFantasia, endereco, bairro, numero, cep) 
VALUES ('55.666.777/0001-88', 'Fazenda Vovo Neusa LTDA', 'Mairoporã', 'Rodovia KM 103', 'Zona Rural', 0, '12345-678');

INSERT INTO empresa (cnpj, razãoSocial, nomeFantasia, endereco, numero, complemento) VALUES 
('11.222.333/0001-44', 'Comércio de Grãos S.A.', 'Grãos Brasil', 'Rodovia BR 116', 101, 'Ao lado do poste amarelo');

CREATE TABLE sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nomeLocalSensor VARCHAR(60) NOT NULL,
    alturaIdeal FLOAT NOT NULL,
    alturaMedida FLOAT NOT NULL,
    dataAmostra DATETIME,
    statusSensor TINYINT,
    CONSTRAINT checkSensor CHECK(statusSensor IN (0,1))
);

INSERT INTO sensor VALUES 
(default, 'Silo 1 - Soja', 15.5, 10.2, '2026-09-03 14:00:00', 1);

INSERT INTO sensor (nomeLocalSensor, alturaIdeal, alturaMedida, statusSensor) VALUES 
('Silo 2 - Milho', 20.0, 19.8, 1),
('Silo 3 - Trigo', 12.0, 1.5, 0); 

INSERT INTO sensor (statusSensor, alturaMedida, alturaIdeal, nomeLocalSensor, dataAmostra) VALUES (1, 5.5, 10.0, 'Silo 4 - Café', now());

SELECT * FROM usuario;

SELECT * FROM empresa;

SELECT * FROM sensor;

SELECT CONCAT('O sensor do ', nomeLocalSensor, ' está ', 
CASE 
WHEN statusSensor = 1 THEN 'Ativado'
ELSE 'Desativado'
END) AS 'Status Sensor' from sensor;


-- drop database silotech;