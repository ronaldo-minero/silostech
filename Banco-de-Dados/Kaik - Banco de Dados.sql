CREATE DATABASE db_silostech;

USE db_silostech;

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR(100) NOT NULL,
    emailUsuario VARCHAR(100) UNIQUE,
    telefoneUsuario VARCHAR(20),
    senhaUsuario VARCHAR(100) NOT NULL
) AUTO_INCREMENT = 1;


CREATE TABLE silo (
    idSilo INT PRIMARY KEY AUTO_INCREMENT,
    nomeSilo VARCHAR(50) NOT NULL,
    capacidadeMaxima DECIMAL(10,2) NOT NULL,
    alturaSilo DECIMAL(8,2) NOT NULL,
    tipoGrao VARCHAR(50),
    statusSilo TINYINT DEFAULT 1
) AUTO_INCREMENT = 1;


CREATE TABLE leituraDistancia (
    idLeitura INT PRIMARY KEY AUTO_INCREMENT,
    idSilo INT NOT NULL,
    distanciaSensor DECIMAL(8,2) NOT NULL,
    quantidadeGraos DECIMAL(10,2),
    percentualOcupacao DECIMAL(5,2),
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
) AUTO_INCREMENT = 1;


INSERT INTO usuario
(nomeUsuario, emailUsuario, telefoneUsuario, senhaUsuario)
VALUES
('Lucas Mendes', 'lucas@email.com', '(11) 91234-5678', '123456'),
('Beatriz Santos', 'beatriz@email.com', '(11) 92345-6789', '654321'),
('Rafael Lima', 'rafael@email.com', '(19) 93456-7890', '987654');


INSERT INTO silo
(nomeSilo, capacidadeMaxima, alturaSilo, tipoGrao)
VALUES
('Silo A', 200000.00, 20.00, 'Milho'),
('Silo B', 150000.00, 18.00, 'Soja'),
('Silo C', 100000.00, 15.00, 'Trigo');


INSERT INTO leituraDistancia
(idSilo, distanciaSensor, quantidadeGraos, percentualOcupacao)
VALUES
(1, 4.50, 155000.00, 77.50),
(2, 6.20, 98300.00, 65.53),
(3, 5.10, 66000.00, 66.00);

SELECT * FROM usuario;

SELECT * FROM silo;

SELECT * FROM leituraDistancia;

SELECT nomeSilo, capacidadeMaxima FROM silo;

SELECT * FROM silo
  WHERE tipoGrao = 'Milho';



