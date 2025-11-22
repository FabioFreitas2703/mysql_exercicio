-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Set-2022 às 19:25
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: bd_vendas
--
drop DATABASE if exists bd_vendas;
create DATABASE if not exists bd_vendas;
use bd_vendas;
-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int UNSIGNED NOT NULL,
  `nomecategoria` varchar(20) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `nomecategoria`, `descricao`) VALUES
(200, 'Bebidas', 'Refrigerantes, cafés, chás, cervejas e cervej'),
(201, 'Condimentos', 'Molhos doces e salgados, condimentos, pastas '),
(203, 'Confeitos', 'Sobremesas, doces e pães doces'),
(204, 'Lacticínios', 'Leites e Laticínios'),
(205, 'Carnes/Aves', 'Carnes preparadas'),
(206, 'Frutos do mar', 'Algas, peixeis e camarões'),
(207, 'Linha Branca', 'Geladeiras, máquinas de lavar e ar-condiciona');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int UNSIGNED NOT NULL,
  `nomecliente` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nomecliente`, `cep`, `cidade`) VALUES
(300, 'Antonio Moreno', '50.021-140', 'Recife'),
(301, 'Christina Berglund', '51.123-840', 'Jaboatão dos Guararapes'),
(303, 'Elizabeth Lincoln', '52.897-444', 'Olinda'),
(304, 'Patricio Simpson', '82.456-145', 'Petrolina'),
(305, 'Francisco Chang', '50.060-001', 'Recife'),
(306, 'Elizabeth Brown', '50.001-006', 'Recife'),
(307, 'Janine Labrune', '52.789-777', 'Camaragibe'),
(308, 'José Pedro Freyre', '59.123-485', 'Recife'),
(309, 'Manuel Pereira', '54.001.002', 'Jaboatão dos Guararapes'),
(310, 'Carlos González', '54.536-777', 'Jaboatão dos Guararapes'),
(311, 'Giovanni Rovelli', '70.123-145', 'Paulista'),
(312, 'Bernardo Batista', '50.001.002', 'Recife'),
(313, 'Lúcia Carvalhoe', '50.029-789', 'Recife'),
(314, 'Janete Limeirae', '51.021.141', 'Recife'),
(315, 'Alejandra Camino', '54.012-230', 'Jaboatão dos Guararapes'),
(316, 'Paula Parentee', '52.123.698', 'Olinda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `idestado` char(2) NOT NULL,
  `nomeestado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`idestado`, `nomeestado`) VALUES
('BA', 'Bahia'),
('CE', 'Ceará'),
('PB', 'Paraíba'),
('PE', 'Pernambuco'),
('PI', 'Piauí'),
('RJ', 'Rio de Janeiro'),
('SP', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `idfornecedor` int UNSIGNED NOT NULL,
  `razaosocial` varchar(45) NOT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`idfornecedor`, `razaosocial`, `contato`, `endereco`, `cidade`, `telefone`) VALUES
(1, 'Nestle', 'José Manoel', 'Rua Cândido Ferreira, 465', 'Jaboatão dos Guarara', '(81) 9.9123-4567'),
(2, 'Solar', 'Fátima Moreira', 'Av. Oliveira Maciel, 987', 'Recife', '(81) 9.9123-1452'),
(3, 'Ferreira Costa', 'Alencar da Silva', 'Av Mascarenhas de Moraes, 1323', 'Recife', '(81) 9.5642-9875'),
(4, 'Frigelar', 'Kátia Amaral', 'Av.Domingos ferreira, 546', 'Recife', '(81) 9.5214-9876');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idfuncionario` int UNSIGNED NOT NULL,
  `nomefuncionario` varchar(45) NOT NULL,
  `datanascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nomefuncionario`, `datanascimento`) VALUES
(10, 'Mateus Nobre', '1995-12-11'),
(20, 'Helena Maria da Silva', '1970-11-30'),
(30, 'Cazuza Carvalho', '2000-02-10'),
(40, 'Edliene Oliveira', '1971-12-11'),
(50, 'Carlos Mota', '2001-03-10'),
(60, 'Oliveira Maviel', '1964-06-24'),
(70, 'Alencar da Silva Souza', '1975-02-10'),
(80, 'Washingnton Teixeira Coelho', '1979-03-22'),
(90, 'Milena Maria Blue', '1979-06-10'),
(100, 'Marília Gabriela', '1970-09-03'),
(110, 'Carlos Mendonça', '2000-11-18');

-- --------------------------------------------------------
--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`idfornecedor`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`);
--
-- Estrutura da tabela `produtos`
--

CREATE TABLE produtos (
  idproduto int UNSIGNED NOT NULL,
  idcategoria int UNSIGNED NOT NULL,
  idfornecedor int UNSIGNED NOT NULL,
  nomedoproduto varchar(45) DEFAULT NULL,
  precounitario decimal(6,2) DEFAULT NULL,
  unidadesemestoque int UNSIGNED DEFAULT NULL,
  niveldereposicao int UNSIGNED DEFAULT NULL,
  descontinuado tinyint DEFAULT NULL,
  PRIMARY KEY (idproduto),
  FOREIGN KEY (idcategoria) REFERENCES categorias (idcategoria),
  FOREIGN KEY (idfornecedor) REFERENCES fornecedores(idfornecedor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO produtos (idproduto, idcategoria, idfornecedor, nomedoproduto, precounitario, unidadesemestoque, niveldereposicao, descontinuado) VALUES
(501, 200, 2, 'Coca-cola', '3.00', 200, 50, 0),
(502, 200, 2, 'Fanta', '2.50', 100, 50, 0),
(503, 200, 2, 'Guaraná Jesus', '2.50', 30, 50, 0),
(504, 200, 2, 'Sprite', '2.50', 18, 50, 0),
(505, 200, 2, 'Suco Del Vale', '2.50', 2000, 100, 0),
(506, 200, 2, 'Água Cristal Sem Gás', '2.00', 300, 70, 0),
(507, 200, 2, 'Água Cristal Com Gás', '2.80', 30, 70, 0),
(508, 200, 2, 'Cerveja Heineken', '4.00', 1000, 300, 0),
(509, 200, 2, 'Cerveja Amstel', '3.50', 500, 100, 0),
(510, 200, 2, 'Cerveja Kaiser', '3.50', 380, 100, 0),
(511, 200, 2, 'Cerveja Bavaria', '4.50', 32, 50, 0),
(512, 204, 1, 'Leite Ninho em pó 800g', '20.00', 500, 150, 0),
(513, 204, 1, 'Leite Ninho Líquido 1L ', '6.00', 1000, 250, 0),
(514, 200, 1, 'Iogurte Danone - bandeja com 6', '6.30', 1000, 1700, 0),
(515, 200, 1, 'Cápsula Nespresso caixa com 10', '26.00', 500, 150, 0),
(516, 200, 1, 'Nescafé lata 500g', '7.00', 30, 150, 0),
(517, 207, 3, 'Geladeira Eletrolux 420L', '3000.00', 50, 10, 0),
(518, 207, 3, 'Ar-Condicionado 9 Kbtus', '1799.66', 100, 50, 0),
(519, 207, 3, 'Maquina de Lavar Brastemp 12k ', '1800.00', 10, 50, 0),
(520, 207, 3, 'Ar-Condicionado 24 kbtus', '2987.78', 2, 50, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transportadora`
--

CREATE TABLE `transportadora` (
  `idtransportadora` int UNSIGNED NOT NULL,
  `nometransportadora` varchar(45) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transportadora`
--

INSERT INTO `transportadora` (`idtransportadora`, `nometransportadora`, `telefone`) VALUES
(11, 'Rapidão Cometa', '(81) 9.9999-4567'),
(21, 'Bomfim', '(81) 9.9874-8867'),
(31, 'Fedex', '(81) 9.9654-4785'),
(41, 'Correios', '(81) 9.9123-4567'),
(42, 'Ifood', '(81) 9.6541-7894');

--
-- Índices para tabela `transportadora`
--
ALTER TABLE `transportadora`
  ADD PRIMARY KEY (`idtransportadora`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idfuncionario` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de tabela `transportadora`
--
ALTER TABLE `transportadora`
  MODIFY `idtransportadora` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE vendas (
  idvenda int UNSIGNED NOT NULL,
  idproduto int UNSIGNED NOT NULL,
  idcliente int UNSIGNED NOT NULL,
  idfuncionario int UNSIGNED NOT NULL,
  idtransportadora int UNSIGNED NOT NULL,
  idestado char(2) NOT NULL,
  qtdvendida int NOT NULL,
  dtvenda date NOT NULL,
  PRIMARY KEY (idvenda),
  FOREIGN KEY (idproduto) REFERENCES produtos (idproduto),
  FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
  FOREIGN KEY (idfuncionario) REFERENCES funcionario (idfuncionario),
  FOREIGN KEY (idtransportadora) REFERENCES transportadora (idtransportadora),
  FOREIGN KEY (idestado) REFERENCES estado (idestado)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ALTER TABLE vendas
--  ADD CONSTRAINT fkproduto FOREIGN KEY (idproduto) REFERENCES produtos (idproduto),
--  ADD CONSTRAINT fkcliente FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
--  ADD CONSTRAINT fkfuncionario FOREIGN KEY (idfuncionario) REFERENCES funcionario (idfuncionario),
--  ADD CONSTRAINT fktransportadora FOREIGN KEY (idtransportadora) REFERENCES transportadora (idtransportadora);
COMMIT;
--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO vendas (idvenda,idproduto, idcliente,idFuncionario, idtransportadora, idestado, qtdvendida, dtvenda) VALUES
(1, 501, 301, 10, 11, 'PE', 30, '2022-01-12'),
(2, 507, 301, 10, 11, 'PE', 20, '2022-01-12'),
(3, 508, 301, 10, 11, 'PE', 10, '2022-01-12'),
(4, 509, 301, 10, 11, 'PE', 30, '2022-01-12'),
(5, 510, 301, 10, 11, 'PE', 15, '2022-01-12'),
(6, 501, 308, 60, 41, 'PB', 10, '2022-02-12'),
(7, 520, 308, 60, 41, 'PB', 1,  '2022-02-12'),
(8, 511, 308, 60, 41, 'PB', 18, '2022-02-12'),
(9, 515, 308, 60, 41, 'PB', 3,  '2022-02-12'),
(10, 502, 308, 60, 41, 'PB', 15, '2022-02-12'),
(11, 503, 308, 60, 41, 'PB', 16, '2022-02-12'),
(12, 504, 308, 60, 41, 'PB', 8, '2022-02-12'),
(13, 517, 316, 70, 31, 'PB', 10, '2022-02-12'),
(14, 518, 316, 70, 31, 'PB', 1,  '2022-02-12'),
(15, 519, 316, 70, 31, 'PB', 18, '2022-02-12'),
(16, 501, 313, 100, 41, 'CE', 3,  '2022-03-13'),
(17, 502, 313, 100, 41, 'CE', 15, '2022-03-13'),
(18, 503, 313, 100, 41, 'CE', 16, '2022-03-13'),
(19, 504, 313, 100, 41, 'CE', 8, '2022-03-13'),
(20, 501, 305, 50, 41, 'SP', 3,  '2022-03-13'),
(21, 502, 305, 50, 41, 'SP', 15, '2022-03-13'),
(22, 503, 305, 50, 41, 'SP', 16, '2022-03-13'),
(23, 504, 305, 50, 41, 'SP', 8, '2022-03-13'),
(24, 501, 301, 10, 11, 'PE', 8, '2022-03-13'),
(25, 520, 312, 50, 41, 'SP', 10, '2022-03-13'),
(26, 516, 306, 50, 41, 'SP', 16, '2022-03-13'),
(27, 520, 305, 50, 41, 'SP', 1, '2022-03-13');
