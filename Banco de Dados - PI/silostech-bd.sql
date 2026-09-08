/*
PROJETO E INOVAÇÃO - 1 ADSA - GRUPO 03

Bruno Santos da Silva (RA: 01262003)
Guilherme de Sousa Pinheiro (RA: 01262126)
Kaik Correia da Silva (RA: 01262125)
Marcos Vinicius Miguel Ferreira (RA: 01262089)
Pedro Henrique de Mendonça Bittencourt (RA: 01262102)
Ronaldo Minéro Júnior (RA: 01262122)
Willian Denis Santuches (RA: 01262084) 
*/


CREATE DATABASE db_silostech;

use db_silostech;

CREATE TABLE sensor (

    idLeitura INT PRIMARY KEY AUTO_INCREMENT,
    idSensor INT NOT NULL,
    dataHoraLeitura DATETIME DEFAULT CURRENT_TIMESTAMP, 
    valorLeitura DECIMAL(10,2),
    tipoSensor VARCHAR(20) NOT NULL,
    statusSensor TINYINT DEFAULT 1 NOT NULL, 
    
    CONSTRAINT chk_status_sensor CHECK (statusSensor IN (0, 1))
    
) AUTO_INCREMENT = 1;

CREATE TABLE cliente (

    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    cpfCliente CHAR(11) UNIQUE,
    emailCliente VARCHAR(100) UNIQUE,
    telefoneCliente VARCHAR(20),
    dataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    senhaCliente VARCHAR(255) NOT NULL,
    statusCliente TINYINT DEFAULT 1,
    permissaoCliente TINYINT DEFAULT 2,
    
    CONSTRAINT chk_permissao_cliente CHECK (permissaoCliente IN (0,1,2)),
    CONSTRAINT chk_email_cliente CHECK (emailCliente LIKE '%@%'),
    CONSTRAINT chk_status_cliente CHECK (statusCliente IN (0, 1))
    
) AUTO_INCREMENT = 1;

CREATE TABLE empresa (

    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    razaoSocial VARCHAR(100) NOT NULL,
    nomeFantasia VARCHAR(100) NOT NULL,
    cnpjEmpresa CHAR(14) NOT NULL UNIQUE,
    dataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    statusEmpresa TINYINT DEFAULT 1,
    
    CONSTRAINT chk_status_empresa CHECK (statusEmpresa IN (0, 1))
) AUTO_INCREMENT = 1;

CREATE TABLE silo (

    idSilo INT PRIMARY KEY AUTO_INCREMENT,
    nomeSilo VARCHAR(50) NOT NULL, 
    capacidadeMaximaVolume DECIMAL(12,2) NOT NULL, 
    tipoConteudo VARCHAR(50),
    dataInstalacao DATE,
    statusSilo TINYINT DEFAULT 1 NOT NULL,
    
    CONSTRAINT chk_status_silo CHECK (statusSilo IN (0, 1))
) AUTO_INCREMENT = 1;

DESCRIBE silo;

ALTER TABLE empresa 

    ADD COLUMN cepEmpresa CHAR(8),
    ADD COLUMN numeroEmpresa VARCHAR(10), 
    ADD COLUMN bairroEmpresa VARCHAR(50),
    ADD COLUMN cidadeEmpresa VARCHAR(50),
    ADD COLUMN estadoEmpresa CHAR(2),
    ADD COLUMN complementoEmpresa VARCHAR(30);
    
    use db_silostech;
    
    show tables;
    
    INSERT INTO sensor VALUES 
    (DEFAULT,2,DEFAULT,13.5,'Temperatura',DEFAULT),
    (DEFAULT,3,DEFAULT,16.2,'Temperatura',0);
    
    SELECT * FROM sensor;
    
    INSERT INTO cliente (nomeCliente, cpfCliente, emailCliente, telefoneCliente, senhaCliente) VALUES
('Carlos Silva', '12345678901', 'carlos.silva@email.com', '(11) 98765-4321', '$2y$10$eImiTXuWVxfM37uY4JANjOL.oMQPQOxhH5f5v4d5e6f7g8h9i0j1k'),
('Ana Souza', '23456789012', 'ana.souza@email.com', '(21) 99876-5432', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oMQPQOxhH5f5v4d5e6f7g8h9i0j1k'),
('Marcos Oliveira', '34567890123', 'marcos.oliveira@email.com', '(31) 98888-7777', '$2y$10$X7vRtY2bN8mK9pL3qW1s2u4oMQPQOxhH5f5v4d5e6f7g8h9i0j1k'),
('Juliana Lima', '45678901234', 'juliana.lima@email.com', '(41) 97777-6666', '$2y$10$Z3xCvBnM1qAzWsEdRfTgYh6oMQPQOxhH5f5v4d5e6f7g8h9i0j1k'),
('Roberto Santos', '56789012345', 'roberto.santos@email.com', '(71) 96666-5555', '$2y$10$P5oLiKuYtReWqAzXsEdCfV8oMQPQOxhH5f5v4d5e6f7g8h9i0j1k');

select * from cliente;

INSERT INTO empresa (razaoSocial, nomeFantasia, cnpjEmpresa) VALUES
('Silva e Santos Alimentos Ltda', 'Mercado Central', '12345678000101'),
('Tech Prime Solucoes em Tecnologia S.A.', 'TechPrime', '23456789000102'),
('Oliveira e Lima Construcoes Eireli', 'ConstruLima', '34567890000103'),
('Juliana Modas e Acessorios Ltda', 'Espaco Fashion', '45678901000104'),
('Logistica Rapida Transportes S.A.', 'RapidoLog', '56789012000105');

INSERT INTO silo (nomeSilo, capacidadeMaximaVolume, tipoConteudo, dataInstalacao) VALUES
('Silo Norte Grãos', 150000.00, 'Milho', '2024-03-15'),
('Silo Sul Soja', 250000.50, 'Soja', '2023-08-22'),
('Silo Central Trigo', 180000.00, 'Soja', '2025-01-10'),
('Silo Armazém Café', 90000.75, 'Milho', '2022-11-05'),
('Silo Reserva Cevada', 120000.00, 'Soja', '2024-06-18');

select * from silo;

select * from sensor;

select * from cliente;

select * from empresa;











