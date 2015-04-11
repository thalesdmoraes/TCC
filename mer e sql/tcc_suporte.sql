-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Abr 11, 2015 as 11:11 
-- Versão do Servidor: 5.5.17
-- Versão do PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `tcc_suporte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `cep` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  `uf` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `rua` varchar(45) NOT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `endereco`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

CREATE TABLE IF NOT EXISTS `equipamento` (
  `idEquipamento` int(11) NOT NULL AUTO_INCREMENT,
  `idPessoa` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `defeito` varchar(45) NOT NULL,
  `avarias` varchar(45) DEFAULT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  PRIMARY KEY (`idEquipamento`),
  KEY `fk_Equipamento_Pessoa1_idx` (`idPessoa`),
  KEY `fk_Equipamento_EquipamentoClasse1_idx` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `equipamento`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentoclasse`
--

CREATE TABLE IF NOT EXISTS `equipamentoclasse` (
  `idEquipamentoClasse` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idEquipamentoClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `equipamentoclasse`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `idFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `funcionario`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `PaginaId` int(11) NOT NULL AUTO_INCREMENT,
  `PaginaTitulo` varchar(20) NOT NULL,
  `PaginaConteudo` text NOT NULL,
  PRIMARY KEY (`PaginaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `pagina`
--

INSERT INTO `pagina` (`PaginaId`, `PaginaTitulo`, `PaginaConteudo`) VALUES
(1, 'Homepage', ''),
(2, 'Serviços', '<section class="box">\r\n				Requisitar Serviços</br>\r\n				<img src = "img/servicos/servicos.png"/>\r\n			</section>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et erat massa. Morbi sollicitudin lorem eu eros consectetur, eget sodales mi commodo. Quisque nulla nisl, sollicitudin et bibendum vitae, ornare in justo. Nunc neque arcu, posuere aliquam odio quis, sagittis fringilla augue. Praesent dictum sed dolor eget scelerisque. Mauris mauris felis, egestas at consequat in, suscipit et ipsum. Integer iaculis magna non dui ultricies, vel tincidunt justo tincidunt. Sed nec tincidunt libero.</p>\r\n			\r\n			<section class="box">\r\n				Pesquisar Código</br>\r\n				<img src = "img/servicos/pesquisar.png"/>\r\n			</section>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi justo mauris, luctus sed fringilla sit amet, mattis eu nisl. Nam nec quam nibh. Sed vehicula mollis risus, eget blandit nulla euismod sit amet. Cras auctor facilisis ex et maximus. Fusce sed scelerisque quam. Integer dictum lacus in bibendum gravida. Nullam nec eros lobortis, sagittis sapien nec, porta ex. Integer ultrices sem id lacus ullamcorper, eu dignissim sem feugiat.</p>\r\n			\r\n			<section class="box">\r\n				Loja Virtual</br>\r\n				<img src = "img/servicos/loja.png"/>\r\n			</section>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor ex sed ante hendrerit, ut ornare lorem porta. Duis condimentum viverra nibh sit amet convallis. Donec ante turpis, condimentum ut ligula ac, aliquet ullamcorper purus. In quis velit ac nulla porta lobortis gravida nec enim. Pellentesque et facilisis augue. Morbi pharetra accumsan nulla eget feugiat. Nam egestas quis metus quis accumsan. Fusce fringilla lorem urna, non dapibus justo iaculis sit amet. Integer vitae fringilla nisi. Phasellus molestie lacus ac mauris ornare semper. Maecenas consectetur diam magna, eget condimentum lorem sollicitudin ut.</p>'),
(3, 'Suporte', '<form id="suporte">\r\n				<div id="dados">\r\n					<label>Nome:</label><br/>\r\n					<input type="text" name="nome" required placeholder="Seu nome"/><br/>\r\n				\r\n					<label>Email:</label><br/>\r\n					<input type="text" name="email" required placeholder="seuemail@provedor.com" ><br/>\r\n					\r\n					<label>Tipo de Mensagem:</label><br/>\r\n					<select name="tipomsg">\r\n					<option value="Dúvidas">Dúvidas</option>\r\n					<option value="Elogios">Elogios</option>\r\n					<option value="Reclamações">Reclamações</option>											\r\n					<option value="Sugestões">Sugestões</option>\r\n					<option value="Outros">Outros</option>\r\n					</select>\r\n					<br/>\r\n					\r\n					<label>Deixe sua Mensagem:</label></br>\r\n				\r\n					<textarea name="mensagem" cols="50" rows="10" required placeholder="Deixe sua mensagem aqui" ></textarea>\r\n				</div>\r\n			<input type="submit" value="Enviar" name="btenviar"/>\r\n			<input type="reset" value="Limpar" name="btlimpar"/>\r\n		\r\n		</form>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE IF NOT EXISTS `pessoa` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefoneFixo` varchar(45) NOT NULL,
  `telefoneMovel` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `endereco` int(11) NOT NULL,
  PRIMARY KEY (`idPessoa`),
  KEY `fk_Pessoa_Endereco1_idx` (`endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `pessoa`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica`
--

CREATE TABLE IF NOT EXISTS `pessoafisica` (
  `idPessoaFisica` int(11) NOT NULL AUTO_INCREMENT,
  `rg` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `pessoafisica`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoajuridica`
--

CREATE TABLE IF NOT EXISTS `pessoajuridica` (
  `idPessoaJuridica` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(45) NOT NULL,
  `inscricaoEstadual` varchar(45) DEFAULT NULL,
  `contato` varchar(45) NOT NULL,
  PRIMARY KEY (`idPessoaJuridica`),
  KEY `fk_Juridica_Pessoa_idx` (`idPessoaJuridica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `pessoajuridica`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `idServico` int(11) NOT NULL AUTO_INCREMENT,
  `Funcionario_idFuncionario` int(11) NOT NULL,
  `Equipamento_idEquipamento` int(11) NOT NULL,
  `ServicoClasse_idServicoClasse` int(11) NOT NULL,
  PRIMARY KEY (`idServico`),
  KEY `fk_Funcionario_has_Equipamento_Equipamento1_idx` (`Equipamento_idEquipamento`),
  KEY `fk_Funcionario_has_Equipamento_Funcionario1_idx` (`Funcionario_idFuncionario`),
  KEY `fk_Servico_ServicoClasse1_idx` (`ServicoClasse_idServicoClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `servico`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `servicoclasse`
--

CREATE TABLE IF NOT EXISTS `servicoclasse` (
  `idServicoClasse` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idServicoClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `servicoclasse`
--


--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `equipamento`
--
ALTER TABLE `equipamento`
  ADD CONSTRAINT `fk_Equipamento_EquipamentoClasse1` FOREIGN KEY (`tipo`) REFERENCES `equipamentoclasse` (`idEquipamentoClasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Equipamento_Pessoa1` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_Funcionario_Pessoa1` FOREIGN KEY (`idFuncionario`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `fk_Pessoa_Endereco1` FOREIGN KEY (`endereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD CONSTRAINT `fk_PessoaFisica_Pessoa1` FOREIGN KEY (`idPessoaFisica`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `pessoajuridica`
--
ALTER TABLE `pessoajuridica`
  ADD CONSTRAINT `fk_Juridica_Pessoa` FOREIGN KEY (`idPessoaJuridica`) REFERENCES `pessoa` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `fk_Funcionario_has_Equipamento_Equipamento1` FOREIGN KEY (`Equipamento_idEquipamento`) REFERENCES `equipamento` (`idEquipamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Funcionario_has_Equipamento_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Servico_ServicoClasse1` FOREIGN KEY (`ServicoClasse_idServicoClasse`) REFERENCES `servicoclasse` (`idServicoClasse`) ON DELETE NO ACTION ON UPDATE NO ACTION;
