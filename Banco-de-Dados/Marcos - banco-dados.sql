CREATE DATABASE silostech;
USE silostech;

CREATE TABLE usuario(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
email VARCHAR(40), 
telefone VARCHAR(13));

INSERT INTO usuario VALUES
(default, 'Márcio', 'marcio@gmail.com', '12991432941');

CREATE TABLE silos(
id INT PRIMARY KEY AUTO_INCREMENT,
qtdSilos INT,
statussSensor VARCHAR(7),
CONSTRAINT chkstatus CHECK (statussSensor IN('Ativo', 'Inativo')),
areaOcupada INT,
CONSTRAINT chkarea CHECK (areaOcupada BETWEEN 1 AND 100));

INSERT INTO silos VALUES
(default, 12, 'Ativo', 14);

CREATE TABLE empresa(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
produto VARCHAR(40), 
CONSTRAINT chkproduto CHECK(produto IN('Milho', 'Soja'))
);

INSERT INTO empresa VALUES
(default, 'milhos e CIA', 'Milho');