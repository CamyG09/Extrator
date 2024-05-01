-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30-Mar-2024 às 17:33
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dialer`
--

CREATE TABLE `dialer` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` char(11) NOT NULL,
  `cpf` char(11) NOT NULL,
  `combo` int(1) NOT NULL,
  `uf` char(2) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dialer`
--

INSERT INTO `dialer` (`id`, `name`, `phone`, `cpf`, `combo`, `uf`, `city`) VALUES
(1, 'Jorge', '11999999999', '12345678912', 2, 'SP', 'Sao Paulo'),
(17, 'Marcedonio', '21888888888', '23456789123', 3, 'RJ', 'Rio de Janeiro'),
(18, 'Clovis', '15999999999', '34567891234', 4, 'SP', 'Sao Paulo'),
(19, 'Aragao', '22999999999', '56789123456', 2, 'RJ', 'Rio de Janeiro'),
(20, 'Marcos', '31888888888', '67891234567', 5, 'MG', 'Juiz de Fora'),
(21, 'Eduardo', '21999999999', '78912345678', 7, 'RJ', 'Rio de Janeiro'),
(22, 'Cavalcanti', '32999999999', '89123456789', 9, 'MG', 'Belo Horizonte'),
(23, 'Nancy', '13999999999', '91234567891', 8, 'SP', 'Santos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dialer`
--
ALTER TABLE `dialer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dialer`
--
ALTER TABLE `dialer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
