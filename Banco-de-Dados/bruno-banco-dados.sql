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






