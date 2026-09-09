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
    statusCliente TINYINT,
    permissaoCliente TINYINT,
    
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
    cepEmpresa CHAR(8),
    numeroEmpresa VARCHAR(10), 
    bairroEmpresa VARCHAR(50),
    cidadeEmpresa VARCHAR(50),
    estadoEmpresa CHAR(2),
    complementoEmpresa VARCHAR(30),
    
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
    
INSERT INTO cliente (nomeCliente, cpfCliente, emailCliente, telefoneCliente, senhaCliente, statusCliente, permissaoCliente) VALUES
('Carlos Silva', '12345678901', 'carlos.silva@email.com', '(11) 98765-4321', '$2y$10$eImiTXuWVxfM37uY4JANjOL.oMQPQOxhH5f5v4d5e6f7g8h9i0j1k', 1, 2),
('Ana Souza', '23456789012', 'ana.souza@email.com', '(21) 99876-5432', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oMQPQOxhH5f5v4d5e6f7g8h9i0j1k', 1, 0),
('Marcos Oliveira', '34567890123', 'marcos.oliveira@email.com', '(31) 98888-7777', '$2y$10$X7vRtY2bN8mK9pL3qW1s2u4oMQPQOxhH5f5v4d5e6f7g8h9i0j1k', 0, 0),
('Juliana Lima', '45678901234', 'juliana.lima@email.com', '(41) 97777-6666', '$2y$10$Z3xCvBnM1qAzWsEdRfTgYh6oMQPQOxhH5f5v4d5e6f7g8h9i0j1k', 1, 2),
('Roberto Santos', '56789012345', 'roberto.santos@email.com', '(71) 96666-5555', '$2y$10$P5oLiKuYtReWqAzXsEdCfV8oMQPQOxhH5f5v4d5e6f7g8h9i0j1k', 0, 1);

INSERT INTO empresa (razaoSocial, nomeFantasia, cnpjEmpresa, cepEmpresa, numeroEmpresa, bairroEmpresa, cidadeEmpresa, estadoEmpresa, complementoEmpresa) VALUES
('AgroSilos Armazenagem de Graos Ltda', 'AgroSilos', '12345678000101', '78890000', '450', 'Zona Rural', 'Sorriso', 'MT', 'Proximo ao silo de milho'),
('Silo Forte Cereais S.A.', 'SiloForte', '23456789000202', '78745000', '1200', 'Distrito Industrial', 'Rondonopolis', 'MT', 'Unidade de armazenagem'),
('Graos do Brasil Armazenagem Ltda', 'Graos do Brasil', '34567890000303', '75901000', '850', 'Setor Industrial', 'Rio Verde', 'GO', 'Armazem de soja e milho'),
('AgroStorage Solucoes Agricolas Ltda', 'AgroStorage', '45678901000404', '75503000', '680', 'Zona Rural', 'Itumbiara', 'GO', 'Unidade de silos');

INSERT INTO silo (nomeSilo, capacidadeMaximaVolume, tipoConteudo, dataInstalacao) VALUES
('Silo GrãoSoberano', 150000.00, 'Milho', '2024-03-15'),
('Silo SafraOuro', 250000.50, 'Soja', '2023-08-22'),
('Silo Milhoja', 180000.00, 'Soja', '2025-01-10'),
('Silo Agromais Grãos', 90000.75, 'Milho', '2022-11-05'),
('Silo DouroGrão', 120000.00, 'Soja', '2024-06-18');

insert into sensor (idSensor, dataHoraLeitura, valorLeitura, tipoSensor, statusSensor) values
(2, now(), 1.23, 'Ultrasônico', 1),
(1, now(), 3.21, 'Ultrasônico', 1),
(3, now(), 2.31, 'Ultrasônico', 0);