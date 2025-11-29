-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/11/2025 às 16:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portfolio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `assunto` varchar(50) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `assunto`, `mensagem`, `contato`, `telefone`, `data_envio`) VALUES
(1, 'Juliana Lima', 'julianapereiralima2501@gmail.com', 'sugestao', 'aa', 'email', '11978370423', '2025-11-29 03:02:00'),
(2, 'Maria Fernanda ', 'mafefe@gmail.com', 'duvida', 'Gostaria de entender melhor como funciona seu projeto', 'email', '11978370423', '2025-11-29 03:05:02'),
(3, 'Camila Rodrigues', 'camila.rodrigues@yahoo.com', 'sugestao', 'Achei seu portfólio muito bonito! Minha sugestão é adicionar mais projetos.', 'email', '11992345678', '2025-11-29 03:06:38'),
(4, 'Rafael Lima', 'rafaellima@hotmail.com', 'duvida', 'Olá, gostei bastante do seu portfólio. Você faz sites sob encomenda?', 'telefone', '11978370423', '2025-11-29 03:08:06'),
(5, 'Beatriz Souza', 'bia.souza@gmail.com', 'duvida', 'Você poderia me explicar como fez o jogo do seu projeto de T.I?', 'whatsapp', '11991112222', '2025-11-29 03:08:59');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
