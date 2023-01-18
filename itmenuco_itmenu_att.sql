-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jan-2023 às 23:00
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `itmenuco_itmenu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_users`
--

CREATE TABLE `ws_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_lastname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_cpf` varchar(250) NOT NULL,
  `user_telefone` varchar(250) DEFAULT NULL,
  `user_img_perfil` varchar(250) DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_registration` timestamp NULL DEFAULT current_timestamp(),
  `user_ultimoacesso` varchar(255) DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `user_plano` int(1) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  `user_cont` int(11) DEFAULT NULL,
  `user_nome_plano` varchar(300) DEFAULT NULL,
  `user_dias_plano` int(11) DEFAULT NULL,
  `status_assinatura_plano` varchar(300) DEFAULT NULL,
  `codigo_assinante` varchar(60) DEFAULT NULL,
  `user_data_renova` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_users`
--

INSERT INTO `ws_users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_cpf`, `user_telefone`, `user_img_perfil`, `user_password`, `user_registration`, `user_ultimoacesso`, `user_level`, `user_plano`, `user_status`, `user_cont`, `user_nome_plano`, `user_dias_plano`, `status_assinatura_plano`, `codigo_assinante`, `user_data_renova`) VALUES
(1, 'Loja usuário', 'Loja user', 'loja@gmail.com', '000.000.000-00', '(11).97176.0907', 'images/2018/07/cd-img-3.png', '202cb962ac59075b964b07152d234b70', '2014-02-11 16:14:04', ' Último acesso em: 18/01/2023 17:29 IP: ::1 ', 3, 2, '', 0, '', 0, '', '', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ws_users`
--
ALTER TABLE `ws_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ws_users`
--
ALTER TABLE `ws_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
