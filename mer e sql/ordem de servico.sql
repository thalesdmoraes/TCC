CREATE DATABASE `ordemdeservico` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

USE `ordemdeservico` ;

CREATE TABLE `Endereco` (
  `idEndereco` INT NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `cep` INT NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;

CREATE TABLE `Pessoa` (
  `idPessoa` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `endereco` INT NOT NULL,
  PRIMARY KEY (`idPessoa`))
ENGINE = InnoDB;

CREATE TABLE `ServicoClasse` (
  `idServicoClasse` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idServicoClasse`))
ENGINE = InnoDB;

CREATE TABLE `EquipamentoClasse` (
  `idEquipamentoClasse` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipamentoClasse`))
ENGINE = InnoDB;

CREATE TABLE `Funcionario` (
  `idFuncionario` INT NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`))
ENGINE = InnoDB;

CREATE TABLE `Equipamento` (
  `idEquipamento` INT NOT NULL,
  `idPessoa` INT NOT NULL,
  `tipo` INT NOT NULL,
  `defeito` VARCHAR(45) NOT NULL,
  `avarias` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipamento`))
ENGINE = InnoDB;

CREATE TABLE `PessoaJuridica` (
  `idPessoaJuridica` INT NOT NULL,
  `cnpj` INT NOT NULL,
  `inscricaoEstadual` VARCHAR(45) NULL,
  `contato` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPessoaJuridica`))
ENGINE = InnoDB;

CREATE TABLE `PessoaFisica` (
  `idPessoaFisica` INT NOT NULL,
  `rg` VARCHAR(45) NOT NULL,
  `cpf` INT NOT NULL,
  `dataNascimento` DATE NOT NULL,
  PRIMARY KEY (`idPessoaFisica`))
ENGINE = InnoDB;

CREATE TABLE `Servico` (
  `idServico` INT NOT NULL AUTO_INCREMENT,
  `Funcionario_idFuncionario` INT NOT NULL,
  `Equipamento_idEquipamento` INT NOT NULL,
  `ServicoClasse_idServicoClasse` INT NOT NULL,
  PRIMARY KEY (`idServico`))
ENGINE = InnoDB;

