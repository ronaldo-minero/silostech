CREATE DATABASE silostech;

USE silostech;

CREATE TABLE empresas (
idEmpresa int primary key auto_increment,
cnpj CHAR(14) UNIQUE,
empresaNome VARCHAR(100),
inscricaoEstadual char(12) unique,
razaoSocial VARCHAR(80),
telefone CHAR(9));

CREATE TABLE enderecoEmpresas (
idEndereco int primary key auto_increment,
tipoLogradouro VARCHAR(12),
logradouro VARCHAR(80),
bairro VARCHAR(50),
cidade VARCHAR(40),
numero VARCHAR(8));

CREATE TABLE sensor (
idSensor int primary key auto_increment,
horaLeituraData DATETIME DEFAULT CURRENT_TIMESTAMP,
tipoSensor VARCHAR(30),
valorLeitura DECIMAL(10,2),
statusSensor VARCHAR(15),

CONSTRAINT chkStatus CHECK (statusSensor IN('Ativo', 'Inativo')),
CONSTRAINT chkSensor CHECK (tipoSensor IN('LM35', 'HC-SR04 DHT11', 'LDR', 'MQ-2'))
);

CREATE TABLE silo (
volumeOcupado VARCHAR(30),
volumeTotal DECIMAL(10,2),
alturaOcupada DECIMAL(10,2));

