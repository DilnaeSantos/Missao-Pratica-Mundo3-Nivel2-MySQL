CREATE DATABASE loja;

USE loja;

CREATE TABLE usuario (
    ID_Usuario INTEGER PRIMARY KEY,
    Login varchar(255) UNIQUE NOT NULL,
    Senha varchar(255) NOT NULL
);

CREATE TABLE pessoa (
  ID_Pessoa INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(255) NOT NULL,
  Telefone VARCHAR(11) NOT NULL,
  Logradouro VARCHAR(255) NOT NULL,
  Cidade VARCHAR(255) NOT NULL,
  Estado CHAR(2) NOT NULL,
  Email VARCHAR(255) NOT NULL
);

CREATE TABLE pessoaFisica (
  ID_Pessoa INTEGER NOT NULL PRIMARY KEY,
  CPF VARCHAR(11) NOT NULL UNIQUE,
  FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID_Pessoa)
);

CREATE TABLE pessoaJuridica (
  ID_Pessoa INTEGER NOT NULL PRIMARY KEY,
  CNPJ VARCHAR(14) NOT NULL UNIQUE,
  FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID_Pessoa)
);


CREATE TABLE produto (
  ID_Produto INTEGER NOT NULL PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Quantidade INTEGER NOT NULL CHECK (Quantidade >= 0),
  PrecoVenda DECIMAL(10, 2) NOT NULL CHECK (PrecoVenda >= 0)
);

CREATE TABLE movimento (
  ID_Movimento INTEGER NOT NULL PRIMARY KEY,
  ID_Produto INTEGER NOT NULL,
  ID_Usuario INTEGER NOT NULL,
  ID_Pessoa INTEGER NOT NULL,
  TipoMovimento CHAR(1) NOT NULL CHECK (TipoMovimento IN ('C', 'V')),
  Quantidade INTEGER NOT NULL CHECK (Quantidade > 0),
  PrecoUnitario DECIMAL(10, 2) NOT NULL CHECK (PrecoUnitario >= 0),
  DataMovimento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  foreign key(ID_pessoa) REFERENCES pessoa(ID_pessoa),
  FOREIGN KEY(ID_Produto) REFERENCES Produto(ID_Produto),
  FOREIGN KEY(ID_Usuario) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Seq_ID_Pessoa (
    next_val INT NOT NULL
);

INSERT INTO Seq_ID_Pessoa (next_val) VALUES (1);

DELIMITER //

CREATE TRIGGER SetIDPessoa
BEFORE INSERT ON pessoa
FOR EACH ROW
BEGIN
    SET NEW.ID_Pessoa = (SELECT next_val FROM Seq_ID_Pessoa);
    UPDATE Seq_ID_Pessoa SET next_val = next_val + 1;
END//

DELIMITER ;
