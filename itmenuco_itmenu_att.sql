-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jan-2023 às 01:17
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
-- Estrutura da tabela `ateste`
--

CREATE TABLE `ateste` (
  `id` int(11) NOT NULL,
  `topic` varchar(600) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ateste`
--

INSERT INTO `ateste` (`id`, `topic`) VALUES
(322, '{\"185\":[{\"id\":\"185\",\"quantity\":\"1\",\"hash\":\"913e4639d6f33aca2cb9b4680979bde2\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Mercadopago Burger\",\"observacao\":\"Nu00e3o\"}}]}'),
(330, '[]'),
(331, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(332, '1'),
(333, '[]'),
(334, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(335, '1'),
(336, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"51503de86b42340a9641140866534807\",\"attributes\":{\"preco\":\"1\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(337, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"19cbe0ad9409f76e70bf2f02a4bbc3cb\",\"attributes\":{\"preco\":\"1,00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(338, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"19cbe0ad9409f76e70bf2f02a4bbc3cb\",\"attributes\":{\"preco\":\"1,00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(339, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(340, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}'),
(341, '{\"999\":[{\"id\":999,\"quantity\":1,\"hash\":\"e72a21af7732f6b14c8a3cb0c0e722aa\",\"attributes\":{\"preco\":\"1.00\",\"nome\":\"Pagamento Online\",\"observacao\":\"Nenhuma\"}}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros_delivery`
--

CREATE TABLE `bairros_delivery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `taxa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros_delivery`
--

INSERT INTO `bairros_delivery` (`id`, `user_id`, `uf`, `cidade`, `bairro`, `taxa`) VALUES
(44, 22, '', '', 'Centro ', '1.00'),
(45, 24, '', '', 'Jardim São Pedro ', '5.00'),
(46, 24, '', '', 'Vila Suissa ', '6.00'),
(47, 24, '', '', 'Socorro ', '8.00'),
(48, 24, '', '', 'Butujuru ', '10.00'),
(58, 45, '', '', 'Frete Região Sudeste (gratis) ', '0.00'),
(59, 45, '', '', 'Frete Região Sul ', '15.00'),
(60, 45, '', '', 'Frete Região Norte e Nordeste ', '20.00'),
(61, 45, '', '', 'Frete Região Centro Oeste ', '18.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_promocional`
--

CREATE TABLE `banner_promocional` (
  `id_banner` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirma_banner` int(11) NOT NULL,
  `img_banner` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner_promocional`
--

INSERT INTO `banner_promocional` (`id_banner`, `user_id`, `confirma_banner`, `img_banner`) VALUES
(4, 22, 1, 'images/2021/03/thincrust-pizza-500x270.png'),
(5, 25, 1, 'images/2021/03/design-sem-nome-5.png'),
(6, 1, 1, 'images/2021/08/veja-tudo-o-que-o-nosso-sistema-pode-oferecer-aos-seus-clientes.png'),
(7, 42, 1, 'images/2021/08/veja-tudo-o-que-o-nosso-sistema-pode-oferecer-aos-seus-clientes.jpg'),
(8, 45, 1, 'images/2021/09/sistema-delivery-11-1-13.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes_site`
--

CREATE TABLE `configuracoes_site` (
  `id_config` int(11) NOT NULL,
  `nome_site` varchar(100) NOT NULL,
  `titulo_site` varchar(250) NOT NULL,
  `descricao_site` varchar(250) NOT NULL,
  `palavas_chaves` varchar(500) NOT NULL,
  `tel_adm` varchar(100) NOT NULL,
  `tel_financeiro` varchar(100) NOT NULL,
  `email_suporte` varchar(250) NOT NULL,
  `h_suporte` varchar(250) NOT NULL,
  `btn_link_youtube` varchar(250) NOT NULL,
  `link_do_face` varchar(500) NOT NULL,
  `link_do_insta` varchar(500) NOT NULL,
  `link_do_youtube` varchar(500) NOT NULL,
  `nome_plano_um` varchar(100) NOT NULL,
  `v_plano_um` int(11) NOT NULL,
  `dias_plano_um` int(11) NOT NULL,
  `nome_plano_dois` varchar(100) NOT NULL,
  `v_plano_dois` int(11) NOT NULL,
  `dias_plano_dois` int(11) NOT NULL,
  `nome_plano_tres` varchar(100) NOT NULL,
  `v_plano_tres` int(11) NOT NULL,
  `dias_plano_tres` int(11) NOT NULL,
  `dias_testes` int(11) NOT NULL,
  `public_key_mp` varchar(500) NOT NULL,
  `access_token_mp` varchar(500) NOT NULL,
  `email_pagseguro` varchar(60) NOT NULL,
  `token_pagseguro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `configuracoes_site`
--

INSERT INTO `configuracoes_site` (`id_config`, `nome_site`, `titulo_site`, `descricao_site`, `palavas_chaves`, `tel_adm`, `tel_financeiro`, `email_suporte`, `h_suporte`, `btn_link_youtube`, `link_do_face`, `link_do_insta`, `link_do_youtube`, `nome_plano_um`, `v_plano_um`, `dias_plano_um`, `nome_plano_dois`, `v_plano_dois`, `dias_plano_dois`, `nome_plano_tres`, `v_plano_tres`, `dias_plano_tres`, `dias_testes`, `public_key_mp`, `access_token_mp`, `email_pagseguro`, `token_pagseguro`) VALUES
(1, 'itmenu.com.br', 'itmenu.com.br Delivery online via WhatsApp integrado com Mercadopago.', 'Crie um cardápio online atraente que inspire o apetite.', 'pizza, delivery food, fast food, sushi, take away, chinese, italian food', '92991461245', '92991461245', 'contato@itmenu.com.br', '09:00hs ás 16:00hs', 'https://www.youtube.com', 'facebook', 'instagram', 'youtube', 'PLANO MENSAL', 37, 30, 'PLANO TRIMESTRAL', 90, 90, 'PLANO ANUAL', 300, 365, 30, 'APP_USR-a2633077-40df-4cbe-98b5-0bcfab499c8c', 'APP_USR-1397677709492366-102213-a1563f907d24521c58613df53e590dfb-453450195', 'invalid@gmail.com', '6676476437t234t3432dqwq');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom_desconto`
--

CREATE TABLE `cupom_desconto` (
  `id_cupom` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ativacao` varchar(50) NOT NULL,
  `type_discount` tinyint(4) NOT NULL,
  `porcentagem` int(11) NOT NULL,
  `fixed_value` decimal(10,2) NOT NULL,
  `data_validade` date NOT NULL,
  `total_vezes` int(11) NOT NULL,
  `mostrar_site` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cupom_desconto`
--

INSERT INTO `cupom_desconto` (`id_cupom`, `user_id`, `ativacao`, `type_discount`, `porcentagem`, `fixed_value`, `data_validade`, `total_vezes`, `mostrar_site`) VALUES
(14, 1, 'DESCONTO50', 2, 0, '50.00', '2021-12-31', 997, 0),
(15, 1, 'CUPOMFIXO', 2, 0, '10.00', '2021-03-31', 58, 1),
(17, 1, 'PEDE85', 1, 85, '0.00', '2021-04-30', 0, 0),
(18, 45, '10%OFF', 1, 10, '0.00', '2022-03-31', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `views`
--

CREATE TABLE `views` (
  `id_views` int(11) NOT NULL,
  `contar` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `views`
--

INSERT INTO `views` (`id_views`, `contar`, `user_id`) VALUES
(21, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_cat`
--

CREATE TABLE `ws_adicionais_cat` (
  `id` int(11) NOT NULL,
  `id_itens` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_adicionais_cat` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `img_cat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ws_adicionais_cat`
--

INSERT INTO `ws_adicionais_cat` (`id`, `id_itens`, `user_id`, `id_cat`, `name_adicionais_cat`, `amount`, `pay`, `img_cat`) VALUES
(78, 150, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(76, 148, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(75, 150, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(74, 148, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(72, 150, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(73, 149, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(71, 149, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(69, 146, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(77, 149, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(68, 145, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(65, 146, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(64, 145, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(63, 144, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(70, 148, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(62, 143, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(66, 143, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(67, 144, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(79, 154, 18, 115, 'Sabores', 2, 1, 'img-header.png'),
(85, 158, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(86, 159, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(87, 158, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(88, 159, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(89, 161, 22, 120, 'Pimentão', -1, 0, 'hot-dog.png'),
(95, 175, 1, 127, 'Complemento', 3, 0, ''),
(94, 175, 1, 127, 'Tipo de Carne', 2, 0, ''),
(93, 170, 1, 114, 'Borda', 1, 1, ''),
(96, 175, 1, 127, 'Salada', 1, 0, ''),
(97, 143, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(98, 144, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(99, 145, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(100, 146, 1, 44, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(101, 148, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(102, 149, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(103, 150, 1, 113, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(104, 151, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(105, 152, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(106, 153, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(107, 170, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(108, 171, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(109, 172, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(110, 173, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(111, 174, 1, 114, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(112, 158, 1, 118, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(113, 159, 1, 118, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(114, 162, 1, 121, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(115, 169, 1, 127, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(116, 175, 1, 127, 'Teste Adicionais', 1, 0, 'adicionar.jpg'),
(117, 179, 1, 129, 'Adicionais Grátis', 1, 0, 'adicionar.jpg'),
(118, 180, 1, 129, 'Adicionais Grátis', 1, 0, 'adicionar.jpg'),
(119, 179, 1, 129, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(120, 180, 1, 129, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(123, 184, 1, 132, 'Molhos', 1, 0, 'combohamburgue.png'),
(124, 184, 1, 132, 'Adicionais', -1, 1, 'petisco.png'),
(125, 186, 33, 134, 'Bacon', 1, 1, ''),
(126, 187, 34, 138, 'teste', 1, 1, ''),
(127, 151, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(128, 152, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(129, 153, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(130, 171, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(131, 172, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(132, 173, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(133, 174, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(134, 189, 1, 114, 'Borda Recheada', 1, 1, 'whats.png'),
(135, 190, 45, 132, 'Tamanho', 1, 0, 'whats.png'),
(136, 191, 45, 132, 'Tamanho', 1, 0, 'whats.png'),
(137, 192, 45, 133, 'Tamanho', 1, 0, 'whats.png'),
(138, 193, 45, 133, 'Tamanho', 1, 0, 'whats.png'),
(139, 190, 45, 132, 'Cores', 1, 0, 'cart.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens`
--

CREATE TABLE `ws_adicionais_itens` (
  `id_adicionais` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorias_adicional` varchar(1000) NOT NULL,
  `nome_adicional` varchar(250) NOT NULL,
  `valor_adicional` decimal(10,2) NOT NULL,
  `medida_adicional` varchar(10) NOT NULL,
  `status_adicional` int(1) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens`
--

INSERT INTO `ws_adicionais_itens` (`id_adicionais`, `user_id`, `categorias_adicional`, `nome_adicional`, `valor_adicional`, `medida_adicional`, `status_adicional`, `id_adicionais_cat`) VALUES
(204, 1, '44', 'Hamburger 150g', '5.00', 'UN', 1, 63),
(205, 1, '44', 'Hamburger 150g', '5.00', 'UN', 1, 62),
(201, 1, '44', 'Queijo Mussrela', '1.00', 'UN', 1, 62),
(202, 1, '44', 'Hamburger 150g', '5.00', 'UN', 1, 65),
(203, 1, '44', 'Hamburger 150g', '5.00', 'UN', 1, 64),
(209, 1, '44', 'Catupiry', '1.50', 'UN', 1, 62),
(208, 1, '44', 'Catupiry', '1.50', 'UN', 1, 63),
(207, 1, '44', 'Catupiry', '1.50', 'UN', 1, 64),
(206, 1, '44', 'Catupiry', '1.50', 'UN', 1, 65),
(200, 1, '44', 'Queijo Mussrela', '1.00', 'UN', 1, 63),
(199, 1, '44', 'Queijo Mussrela', '1.00', 'UN', 1, 64),
(198, 1, '44', 'Queijo Mussrela', '1.00', 'UN', 1, 65),
(197, 1, '44', 'Cheddar', '1.00', 'UN', 1, 62),
(193, 1, '44', 'Bacon', '2.50', 'UN', 1, 62),
(194, 1, '44', 'Cheddar', '1.00', 'UN', 1, 65),
(195, 1, '44', 'Cheddar', '1.00', 'UN', 1, 64),
(196, 1, '44', 'Cheddar', '1.00', 'UN', 1, 63),
(192, 1, '44', 'Bacon', '2.50', 'UN', 1, 63),
(191, 1, '44', 'Bacon', '2.50', 'UN', 1, 64),
(190, 1, '44', 'Bacon', '2.50', 'UN', 1, 65),
(215, 1, '118', 'Bacon', '2.00', 'UN', 1, 85),
(216, 1, '118', 'Bacon', '2.00', 'UN', 1, 86),
(217, 1, '118', 'Ovo', '1.00', 'UN', 1, 85),
(218, 1, '118', 'Ovo', '1.00', 'UN', 1, 86),
(219, 1, '44', 'teste', '1.00', 'UN', 1, 62),
(220, 1, '44', 'teste', '1.00', 'UN', 1, 63),
(221, 1, '44', 'teste', '1.00', 'UN', 1, 64),
(222, 1, '44', 'teste', '1.00', 'UN', 1, 65),
(223, 1, '44', 'TESTE 2', '1.00', 'UN', 1, 62),
(224, 1, '44', 'TESTE 2', '1.00', 'UN', 1, 63),
(225, 1, '44', 'TESTE 2', '1.00', 'UN', 1, 64),
(231, 1, '114', 'Catupiry1', '4.00', 'UN', 1, 93),
(232, 1, '114', 'Coxinha', '8.00', 'UN', 1, 93),
(230, 1, '114', 'Cheddar', '4.00', 'UN', 1, 93),
(233, 1, '132', 'Presunto', '1.00', 'UN', 1, 124),
(234, 1, '132', 'Calabresa', '2.00', 'UN', 1, 124),
(235, 1, '132', 'Mussarela', '1.00', 'UN', 1, 124),
(238, 1, '114', 'Cheddar', '5.00', 'UN', 1, 127),
(239, 1, '114', 'Cheddar', '5.00', 'UN', 1, 128),
(240, 1, '114', 'Cheddar', '5.00', 'UN', 1, 129),
(241, 1, '114', 'Cheddar', '5.00', 'UN', 1, 130),
(242, 1, '114', 'Cheddar', '5.00', 'UN', 1, 131),
(243, 1, '114', 'Cheddar', '5.00', 'UN', 1, 132),
(244, 1, '114', 'Cheddar', '5.00', 'UN', 1, 133),
(245, 1, '114', 'Cheddar', '5.00', 'UN', 1, 134),
(246, 1, '114', 'Mussarela', '6.00', 'UN', 1, 127),
(247, 1, '114', 'Mussarela', '6.00', 'UN', 1, 128),
(248, 1, '114', 'Mussarela', '6.00', 'UN', 1, 129),
(249, 1, '114', 'Mussarela', '6.00', 'UN', 1, 130),
(250, 1, '114', 'Mussarela', '6.00', 'UN', 1, 131),
(251, 1, '114', 'Mussarela', '6.00', 'UN', 1, 132),
(252, 1, '114', 'Mussarela', '6.00', 'UN', 1, 133),
(253, 1, '114', 'Mussarela', '6.00', 'UN', 1, 134),
(254, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 127),
(255, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 128),
(256, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 129),
(257, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 130),
(258, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 131),
(259, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 132),
(260, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 133),
(261, 1, '114', 'Catupiry Original', '8.00', 'UN', 1, 134);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens_gratis`
--

CREATE TABLE `ws_adicionais_itens_gratis` (
  `id_adicional_gratis` int(11) NOT NULL,
  `nome_adicional_gratis` varchar(250) NOT NULL,
  `categorias_adicional_gratis` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_adicional_gratis` int(11) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens_gratis`
--

INSERT INTO `ws_adicionais_itens_gratis` (`id_adicional_gratis`, `nome_adicional_gratis`, `categorias_adicional_gratis`, `user_id`, `status_adicional_gratis`, `id_adicionais_cat`) VALUES
(40, 'Catchup', '44', 1, 1, 69),
(41, 'Catchup', '44', 1, 1, 68),
(42, 'Catchup', '44', 1, 1, 66),
(43, 'Catchup', '44', 1, 1, 67),
(44, 'Maionese', '44', 1, 1, 69),
(45, 'Maionese', '44', 1, 1, 68),
(46, 'Maionese', '44', 1, 1, 66),
(47, 'Maionese', '44', 1, 1, 67),
(48, 'Milho', '44', 1, 1, 69),
(49, 'Milho', '44', 1, 1, 68),
(50, 'Milho', '44', 1, 1, 67),
(51, 'Milho', '44', 1, 1, 66),
(52, 'Azeitona', '44', 1, 1, 69),
(53, 'Azeitona', '44', 1, 1, 68),
(54, 'Azeitona', '44', 1, 1, 66),
(55, 'Azeitona', '44', 1, 1, 67),
(56, 'Ovo de Codorna', '44', 1, 1, 69),
(57, 'Ovo de Codorna', '44', 1, 1, 68),
(58, 'Ovo de Codorna', '44', 1, 1, 66),
(59, 'Ovo de Codorna', '44', 1, 1, 67),
(60, 'Fruta Morango', '113', 1, 1, 71),
(61, 'Fruta Morango', '113', 1, 1, 70),
(62, 'Fruta Morango', '113', 1, 1, 72),
(63, 'Fruta Banana', '113', 1, 1, 70),
(64, 'Fruta Banana', '113', 1, 1, 71),
(65, 'Fruta Banana', '113', 1, 1, 72),
(66, 'Fruta Manga', '113', 1, 1, 70),
(67, 'Fruta Manga', '113', 1, 1, 71),
(68, 'Fruta Manga', '113', 1, 1, 72),
(69, 'Fruta Uva', '113', 1, 1, 70),
(70, 'Fruta Uva', '113', 1, 1, 71),
(71, 'Fruta Uva', '113', 1, 1, 72),
(72, 'Fruta Pêssego', '113', 1, 1, 70),
(73, 'Fruta Pêssego', '113', 1, 1, 71),
(74, 'Fruta Pêssego', '113', 1, 1, 72),
(75, 'Leite em Pó', '113', 1, 1, 73),
(76, 'Leite em Pó', '113', 1, 1, 74),
(77, 'Leite em Pó', '113', 1, 1, 75),
(78, 'Granola', '113', 1, 1, 73),
(79, 'Granola', '113', 1, 1, 74),
(80, 'Granola', '113', 1, 1, 75),
(81, 'Paçoca', '113', 1, 1, 74),
(82, 'Paçoca', '113', 1, 1, 75),
(83, 'Paçoca', '113', 1, 1, 73),
(84, 'Amendoim', '113', 1, 1, 73),
(85, 'Amendoim', '113', 1, 1, 74),
(86, 'Amendoim', '113', 1, 1, 75),
(87, 'Chocolate em Confeti', '113', 1, 1, 75),
(88, 'Chocolate em Confeti', '113', 1, 1, 74),
(89, 'Chocolate em Confeti', '113', 1, 1, 73),
(90, 'Granulado', '113', 1, 1, 73),
(91, 'Granulado', '113', 1, 1, 74),
(92, 'Granulado', '113', 1, 1, 75),
(93, 'Nutela', '113', 1, 1, 73),
(94, 'Nutela', '113', 1, 1, 74),
(95, 'Nutela', '113', 1, 1, 75),
(96, 'Chocoball', '113', 1, 1, 73),
(97, 'Chocoball', '113', 1, 1, 74),
(98, 'Chocoball', '113', 1, 1, 75),
(99, 'Leite Condensado', '113', 1, 1, 78),
(100, 'Leite Condensado', '113', 1, 1, 76),
(101, 'Leite Condensado', '113', 1, 1, 77),
(102, 'Morango', '113', 1, 1, 78),
(103, 'Morango', '113', 1, 1, 76),
(104, 'Morango', '113', 1, 1, 77),
(105, 'Chocolate', '113', 1, 1, 78),
(106, 'Chocolate', '113', 1, 1, 76),
(107, 'Chocolate', '113', 1, 1, 77),
(108, 'Kiwi', '113', 1, 1, 78),
(109, 'Kiwi', '113', 1, 1, 76),
(110, 'Kiwi', '113', 1, 1, 77),
(115, 'Maionese Caseira', '118', 1, 1, 87),
(116, 'Maionese Caseira', '118', 1, 1, 88),
(117, 'Catchup', '118', 1, 1, 87),
(118, 'Catchup', '118', 1, 1, 88),
(119, 'Azeitona', '118', 1, 1, 87),
(120, 'Azeitona', '118', 1, 1, 88),
(121, 'Carne Seca', '127', 1, 1, 94),
(122, 'Frango a Parmegiana', '127', 1, 1, 94),
(139, 'Granulado', '113', 1, 1, 78),
(140, 'Granulado', '113', 1, 1, 76),
(141, 'Granulado', '113', 1, 1, 75),
(142, 'Granulado', '113', 1, 1, 74),
(143, 'Granulado', '113', 1, 1, 72),
(144, 'Granulado', '113', 1, 1, 73),
(145, 'Granulado', '113', 1, 1, 71),
(146, 'Granulado', '113', 1, 1, 77),
(147, 'Granulado', '113', 1, 1, 70),
(148, 'Granulado', '113', 1, 1, 101),
(149, 'Granulado', '113', 1, 1, 102),
(150, 'Granulado', '113', 1, 1, 103),
(169, 'Teste 1', '129', 1, 1, 117),
(170, 'Teste 1', '129', 1, 1, 118),
(171, 'Teste 2', '129', 1, 1, 117),
(172, 'Teste 2', '129', 1, 1, 118),
(173, 'Barbecue', '132', 1, 1, 123),
(174, 'Verde', '132', 1, 1, 123),
(175, 'Maionese de Bacon', '132', 1, 1, 123),
(176, 'Azul', '132', 45, 1, 139),
(177, 'Verde', '132', 45, 1, 139),
(178, 'Amarela', '132', 45, 1, 139),
(179, 'Rosa', '132', 45, 1, 139),
(180, 'P', '132', 45, 1, 135),
(181, 'P', '132', 45, 1, 136),
(182, 'P', '132', 45, 1, 139),
(183, 'P', '133', 45, 1, 137),
(184, 'P', '133', 45, 1, 138),
(185, 'M', '132', 45, 1, 135),
(186, 'M', '132', 45, 1, 136),
(187, 'M', '132', 45, 1, 139),
(188, 'M', '133', 45, 1, 137),
(189, 'M', '133', 45, 1, 138),
(190, 'G', '132', 45, 1, 135),
(191, 'G', '132', 45, 1, 136),
(192, 'G', '132', 45, 1, 139),
(193, 'G', '133', 45, 1, 137),
(194, 'G', '133', 45, 1, 138),
(195, 'GG', '132', 45, 1, 135),
(196, 'GG', '132', 45, 1, 136),
(197, 'GG', '132', 45, 1, 139),
(198, 'GG', '133', 45, 1, 137),
(199, 'GG', '133', 45, 1, 138);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_admin`
--

CREATE TABLE `ws_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_senha` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `admin_ultimoacesso` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_admin`
--

INSERT INTO `ws_admin` (`admin_id`, `admin_email`, `admin_senha`, `admin_ultimoacesso`, `admin_level`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_cat`
--

CREATE TABLE `ws_cat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_cat` varchar(250) NOT NULL,
  `desc_cat` varchar(500) NOT NULL,
  `icon_cat` varchar(500) NOT NULL,
  `dias_semana` varchar(300) NOT NULL,
  `posicaocat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_cat`
--

INSERT INTO `ws_cat` (`id`, `user_id`, `nome_cat`, `desc_cat`, `icon_cat`, `dias_semana`, `posicaocat`) VALUES
(44, 1, 'MODELO PARA HAMBURGERIA', 'Escolha Seu Lanche sem Moderação!', 'img/burger.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 1),
(113, 1, 'MODELO PARA AÇAITERIA', 'Todo dia é dia de Açaí!!! Vem !!!', 'img/acai.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 2),
(114, 1, 'MODELO PARA PIZZARIAS', 'Sempre as Melhores Pizzas de Cotia!!!', 'img/pizza.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0),
(118, 1, 'MODELO PARA HOT-DOGS', 'Delicia de Sabor - Experimente nossos Dog´s!!!!', 'img/hot-dog.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 4),
(127, 1, 'MODELO MARMITAS', 'As Melhores Quentinhas de Cotia!', 'img/bandeja.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_datas_close`
--

CREATE TABLE `ws_datas_close` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_datas_close`
--

INSERT INTO `ws_datas_close` (`id`, `user_id`, `data`) VALUES
(18, 1, '14/01/2019'),
(20, 1, '12/01/2019'),
(22, 1, '03/05/2020'),
(24, 1, '16/05/2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_empresa`
--

CREATE TABLE `ws_empresa` (
  `id_empresa` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nome_empresa` varchar(250) DEFAULT NULL,
  `descricao_empresa` varchar(200) DEFAULT NULL,
  `nome_empresa_link` varchar(250) DEFAULT NULL,
  `cnpj_empresa` varchar(250) DEFAULT NULL,
  `email_empresa` varchar(250) DEFAULT NULL,
  `telefone_empresa` varchar(250) DEFAULT NULL,
  `end_rua_n_empresa` varchar(250) DEFAULT NULL,
  `end_bairro_empresa` varchar(250) DEFAULT NULL,
  `cidade_empresa` varchar(250) DEFAULT NULL,
  `end_uf_empresa` varchar(250) DEFAULT NULL,
  `cep_empresa` varchar(250) DEFAULT NULL,
  `img_logo` varchar(300) DEFAULT NULL,
  `img_header` varchar(400) DEFAULT NULL,
  `facebook_status` int(11) DEFAULT NULL,
  `twitter_status` int(11) DEFAULT NULL,
  `instagram_status` int(11) DEFAULT NULL,
  `facebook_empresa` varchar(600) DEFAULT NULL,
  `instagram_empresa` varchar(600) DEFAULT NULL,
  `twitter_empresa` varchar(600) DEFAULT NULL,
  `genero_empresa` varchar(255) DEFAULT NULL,
  `config_segunda` varchar(250) DEFAULT NULL,
  `config_terca` varchar(250) DEFAULT NULL,
  `config_quarta` varchar(250) DEFAULT NULL,
  `config_quinta` varchar(250) DEFAULT NULL,
  `config_sexta` varchar(250) DEFAULT NULL,
  `config_sabado` varchar(250) DEFAULT NULL,
  `config_domingo` varchar(250) DEFAULT NULL,
  `config_segundaa` varchar(50) DEFAULT NULL,
  `config_tercaa` varchar(50) DEFAULT NULL,
  `config_quartaa` varchar(50) DEFAULT NULL,
  `config_quintaa` varchar(50) DEFAULT NULL,
  `config_sextaa` varchar(50) DEFAULT NULL,
  `config_sabadoo` varchar(50) DEFAULT NULL,
  `config_domingoo` varchar(50) DEFAULT NULL,
  `segunda_manha_de` varchar(250) DEFAULT NULL,
  `segunda_manha_ate` varchar(250) DEFAULT NULL,
  `segunda_tarde_de` varchar(250) DEFAULT NULL,
  `segunda_tarde_ate` varchar(250) DEFAULT NULL,
  `terca_manha_de` varchar(250) DEFAULT NULL,
  `terca_manha_ate` varchar(250) DEFAULT NULL,
  `terca_tarde_de` varchar(250) DEFAULT NULL,
  `terca_tarde_ate` varchar(250) DEFAULT NULL,
  `quarta_manha_de` varchar(250) DEFAULT NULL,
  `quarta_manha_ate` varchar(250) DEFAULT NULL,
  `quarta_tarde_de` varchar(250) DEFAULT NULL,
  `quarta_tarde_ate` varchar(250) DEFAULT NULL,
  `quinta_manha_de` varchar(250) DEFAULT NULL,
  `quinta_manha_ate` varchar(250) DEFAULT NULL,
  `quinta_tarde_de` varchar(250) DEFAULT NULL,
  `quinta_tarde_ate` varchar(250) DEFAULT NULL,
  `sexta_manha_de` varchar(250) DEFAULT NULL,
  `sexta_manha_ate` varchar(250) DEFAULT NULL,
  `sexta_tarde_de` varchar(250) DEFAULT NULL,
  `sexta_tarde_ate` varchar(250) DEFAULT NULL,
  `sabado_manha_de` varchar(250) DEFAULT NULL,
  `sabado_manha_ate` varchar(250) DEFAULT NULL,
  `sabado_tarde_de` varchar(250) DEFAULT NULL,
  `sabado_tarde_ate` varchar(250) DEFAULT NULL,
  `domingo_manha_de` varchar(250) DEFAULT NULL,
  `domingo_manha_ate` varchar(250) DEFAULT NULL,
  `domingo_tarde_de` varchar(250) DEFAULT NULL,
  `domingo_tarde_ate` varchar(250) DEFAULT NULL,
  `config_delivery` decimal(10,2) DEFAULT NULL,
  `config_delivery_free` decimal(10,2) DEFAULT NULL,
  `op_entrar_btn` int(11) DEFAULT NULL,
  `empresa_data_renovacao` date DEFAULT NULL,
  `msg_tempo_delivery` varchar(150) DEFAULT NULL,
  `msg_tempo_buscar` varchar(150) DEFAULT NULL,
  `minimo_delivery` decimal(10,2) DEFAULT NULL,
  `confirm_delivery` varchar(20) DEFAULT NULL,
  `confirm_balcao` varchar(20) DEFAULT NULL,
  `confirm_mesa` varchar(20) DEFAULT NULL,
  `cor_topo` varchar(250) DEFAULT NULL,
  `cor_loading` varchar(250) DEFAULT NULL,
  `cor_titulo_produtos` varchar(250) DEFAULT NULL,
  `btn_whats` tinyint(4) NOT NULL DEFAULT 0,
  `token_blocked` tinyint(4) NOT NULL DEFAULT 1,
  `type_pay` tinyint(4) DEFAULT NULL,
  `access_token_mp` varchar(250) DEFAULT NULL,
  `email_pagseguro` varchar(60) DEFAULT NULL,
  `token_pagseguro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_empresa`
--

INSERT INTO `ws_empresa` (`id_empresa`, `user_id`, `nome_empresa`, `descricao_empresa`, `nome_empresa_link`, `cnpj_empresa`, `email_empresa`, `telefone_empresa`, `end_rua_n_empresa`, `end_bairro_empresa`, `cidade_empresa`, `end_uf_empresa`, `cep_empresa`, `img_logo`, `img_header`, `facebook_status`, `twitter_status`, `instagram_status`, `facebook_empresa`, `instagram_empresa`, `twitter_empresa`, `genero_empresa`, `config_segunda`, `config_terca`, `config_quarta`, `config_quinta`, `config_sexta`, `config_sabado`, `config_domingo`, `config_segundaa`, `config_tercaa`, `config_quartaa`, `config_quintaa`, `config_sextaa`, `config_sabadoo`, `config_domingoo`, `segunda_manha_de`, `segunda_manha_ate`, `segunda_tarde_de`, `segunda_tarde_ate`, `terca_manha_de`, `terca_manha_ate`, `terca_tarde_de`, `terca_tarde_ate`, `quarta_manha_de`, `quarta_manha_ate`, `quarta_tarde_de`, `quarta_tarde_ate`, `quinta_manha_de`, `quinta_manha_ate`, `quinta_tarde_de`, `quinta_tarde_ate`, `sexta_manha_de`, `sexta_manha_ate`, `sexta_tarde_de`, `sexta_tarde_ate`, `sabado_manha_de`, `sabado_manha_ate`, `sabado_tarde_de`, `sabado_tarde_ate`, `domingo_manha_de`, `domingo_manha_ate`, `domingo_tarde_de`, `domingo_tarde_ate`, `config_delivery`, `config_delivery_free`, `op_entrar_btn`, `empresa_data_renovacao`, `msg_tempo_delivery`, `msg_tempo_buscar`, `minimo_delivery`, `confirm_delivery`, `confirm_balcao`, `confirm_mesa`, `cor_topo`, `cor_loading`, `cor_titulo_produtos`, `btn_whats`, `token_blocked`, `type_pay`, `access_token_mp`, `email_pagseguro`, `token_pagseguro`) VALUES
(21, 1, 'Loja User Demo', 'Sua Plataforma de Delivery Completa!!!', 'Demo', '', 'demo@gmail.com', '92991461245', 'Rua do Centro', 'Centro', 'Manaus', 'AM', '08200-030', 'images/2021/08/e-se-a-vida-se-tornar-uma-barra-que-seja-de-chocolate-1628854206.png', 'images/2021/08/sub-header-cart.jpg', 1, 1, 2, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.facebook.com/', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '00:00', '15:00', '12:00', '00:00', '00:00', '15:00', '12:00', '00:00', '00:00', '15:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '0.00', '50.00', 1, '2040-10-20', 'Entre 30 e 60 minutos.', 'Em 30 minutos.', '10.00', 'true', 'true', 'true', '#d17000', '#ffffff', '#62092d', 0, 0, 1, 'TEST-2634292899515922-052912-922885e88fa1b2520ada90fa843d18bb-677980923', 'thdantasbueno@gmail.com', '6c01cee9-31fc-4804-9f41-2da309ca62bde0ce551c424da4eb938d6901fef2de44d6bc-c273-4ce9-b94f-1f959d060177');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_formas_pagamento`
--

CREATE TABLE `ws_formas_pagamento` (
  `id_f_pagamento` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_pagamento` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_formas_pagamento`
--

INSERT INTO `ws_formas_pagamento` (`id_f_pagamento`, `user_id`, `f_pagamento`) VALUES
(12, 1, 'Pix - 000000000'),
(16, 1, 'Cartão de Crédito (Na entrega)'),
(17, 1, 'Cartão de Débito (Na entrega)'),
(25, 1, 'Dinheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_fuso_horario`
--

CREATE TABLE `ws_fuso_horario` (
  `id_fuso` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fuso_horario` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_fuso_horario`
--

INSERT INTO `ws_fuso_horario` (`id_fuso`, `user_id`, `fuso_horario`) VALUES
(1, 1, 'America/Manaus'),
(2, 16, 'America/Sao_Paulo'),
(3, 22, 'America/Sao_Paulo'),
(4, 32, 'America/Fortaleza');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_impressora`
--

CREATE TABLE `ws_impressora` (
  `id_impressora` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_impressora` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_impressora`
--

INSERT INTO `ws_impressora` (`id_impressora`, `user_id`, `nome_impressora`) VALUES
(1, 1, 'COM6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_itens`
--

CREATE TABLE `ws_itens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `img_item` varchar(500) NOT NULL,
  `nome_item` varchar(250) NOT NULL,
  `descricao_item` varchar(500) NOT NULL,
  `preco_item` decimal(10,2) NOT NULL,
  `config_total_s` int(11) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `dia_semana` varchar(500) NOT NULL,
  `number_adicional` int(11) NOT NULL,
  `number_adicional_pago` int(11) NOT NULL,
  `posicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_itens`
--

INSERT INTO `ws_itens` (`id`, `user_id`, `id_cat`, `img_item`, `nome_item`, `descricao_item`, `preco_item`, `config_total_s`, `disponivel`, `dia_semana`, `number_adicional`, `number_adicional_pago`, `posicao`) VALUES
(143, 1, 44, 'images/2021/08/download-2.jpg', 'Mercadopago Burger', 'Teste para o módulo de pagamento online do Mercadopago..', '32.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 1),
(144, 1, 44, 'images/2021/08/download-3.jpg', 'Texas Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', '10.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 4),
(145, 1, 44, 'images/2021/08/download.jpg', 'Seatle Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', '15.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 3),
(146, 1, 44, 'images/2021/08/download-1.jpg', 'Chicago Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', '20.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(148, 1, 113, 'images/2021/08/banner-25.png', 'Copo de Açaí', 'Açaí com leite, banana e morango', '0.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(149, 1, 113, 'images/2021/08/combo-tropical.png', 'Copo de Açaí Tropical', 'Açaí com leite, banana e morango', '0.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(150, 1, 113, 'images/2021/08/combo-ninho.png', 'Copo de Açaí Frozen', 'Açaí com leite, banana e morango', '0.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(151, 1, 114, 'images/2021/08/calabre.jpeg', 'Calabresa', 'Pizza Americana, com Frango e Catupiry', '25.00', 0, 1, 'Quinta,Terça,Segunda,Domingo,Quarta,Sexta,Sabado', 0, 0, 2),
(152, 1, 114, 'images/2021/08/napolitana.jpeg', 'Pepperoni com Cream Cheese', 'Pizza Pepperoni com Cream Cheese', '50.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 1),
(153, 1, 114, 'images/2021/08/pop.jpg', 'Carne Seca com CHeddar', 'Pizza Carne Seca com CHeddar', '38.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(158, 1, 118, 'images/2021/08/passo-2-1628848238.png', 'HOT-DOG TRADICIONAL', 'Teste Hot-Dog - Tradicional O melhor de Cotia!', '8.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(159, 1, 118, 'images/2021/08/passo-2.png', 'HOT-DOG AMERICANO', 'Teste para Hot-dog - O melhor da região!', '10.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(169, 1, 127, 'images/2021/08/download-4.jpg', 'Frango a parmegiana', 'Arroz, Feijão, Farofa e Fritas', '16.00', 0, 1, 'Domingo,Terça,Quarta,Quinta,Sexta,Sabado,Segunda', 0, 0, 0),
(171, 1, 114, 'images/2021/08/portuguesa.jpeg', 'Portuguesa', 'A Melhor Pizza de Cotia!', '30.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(172, 1, 114, 'images/2021/08/frangocatu.jpeg', 'Frango com Catupiry', 'A Melhor Pizza de Cotia!', '35.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(173, 1, 114, 'images/2021/08/2quaijos.jpeg', '4 Queijos', 'A Melhor Pizza de Cotia!', '38.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(174, 1, 114, 'images/2021/08/mussarela.jpeg', 'Mussarela', 'Mussarela no capricho,', '20.00', 0, 1, 'Domingo,Terça,Segunda,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(175, 1, 127, 'images/2021/08/download-5.jpg', 'Marmita com 2 pedaços de carne', 'Monte sua marmita', '15.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(190, 45, 132, 'images/2021/09/sistema-delivery-11-1-14.png', 'Camiseta Basica - Varias cores - Gola Careca', '100% agodão, produto de qualidade com toque macio, ideal para o dia a dia!', '34.90', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(191, 45, 132, 'images/2021/09/sistema-delivery-11-1-15.png', 'Black Shirt - Basica', 'T-Shirt Preta peça básica em qualquer guarda-roupas, malha macia 100% algodão!', '39.90', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(192, 45, 133, 'images/2021/09/download.jpg', 'Camiseta LongLine Preta Detalhe em Vinil', 'Estilo e conforto - fio 40 - qualidade indiscutivel', '49.90', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(193, 45, 133, 'images/2021/09/download-1.jpg', 'Camiseta LongLine  Com Capuz', 'Camiseta LongLine  Com Capuz - Muito Estilo e Beleza - Fio 40 muita qualidade', '79.90', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(194, 42, 135, 'images/2021/09/download-2.jpg', 'Dorflex 500 mg - 24 comprimidos', 'DORFLEX® (dipirona monoidratada, citrato de orfenadrina, cafeína anidra). Indicações: no alívio da dor associada a contraturas musculares, incluindo cefaleia tensional. MS: 1.8326.0354. O USO DO MEDICAMENTO PODE TRAZER ALGUNS RISCOS. Leia atentamente a bula. SE PERSISTIREM OS SINTOMAS, O MÉDICO DEVERÁ SER CONSULTADO', '18.99', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(195, 42, 135, 'images/2021/09/download-3.jpg', 'NEOSALDINA  250 mg', 'NEOSALDINA é um medicamento com atividade analgésica (diminui a dor) e antiespasmódica (diminui contração involuntária) indicado para o tratamento de diversos tipos de dor de cabeça, incluindo enxaquecas ou para o tratamento de cólicas.', '15.79', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(196, 42, 136, 'images/2021/09/download-4.jpg', 'Medicamentos Com Prescrição medica', 'Pedimos que coloque o nome da medicação no campo OBSERVAÇÃO, efetue a compra normalmente, o valor sera enviado por WhatsApp e assim que confirmado o Pedido, Vamos solicitar (também via WhatsApp) a Prescrição Medica ) Receita.', '0.00', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(197, 42, 134, 'images/2021/09/download-5.jpg', 'Shampoo Anticaspa Clear Men Limpeza Diária 2 em 1 com 400ml', 'Limpeza diária 2 em 1 - Desenvolvido para homens - Tecnologia Bio-booster. Ativa a proteção natural do couro cabeludo. Contém 400ml.', '22.99', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(198, 42, 134, 'images/2021/09/cicatricure-gel-cicatrizes-e-estrias-com-60g-1.jpg', 'Cicatricure Gel Cicatrizes e Estrias com 60g', 'Desenvolvido especialmente para tratar cicatrizes e estrias, o Cicatricure Gel com sua tecnologia inovadora Regenext, repara e hidrata a pele, uniformizando a cor e a textura da cicatriz ou estria em relação ao resto da pele. Seus ingredientes naturais presentes na fórmula auxiliam para que a pele cicatrizada volte a ter a mesma tonalidade e densidade da pele normal, além de diminuir visivelmente os aspectos das estrias.', '49.99', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(199, 42, 134, 'images/2021/09/82e905f40afcaa217e6b026315bb2a52.jpg', 'Whey Protein Concentrado - Super 1,8kg Baunilha sem Açúcar', 'Proteína concentrada do soro de leite, proteína isolada do soro de leite, proteína hidrolisada do soro de leite, aroma idêntico ao natural, goma xantana (espessante) e sucralose (edulcorante)', '255.99', 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_motoboys`
--

CREATE TABLE `ws_motoboys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deliveryman_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deliveryman_phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_motoboys`
--

INSERT INTO `ws_motoboys` (`id`, `user_id`, `deliveryman_name`, `deliveryman_phone_number`) VALUES
(8, 1, 'Sonic', '(41) 99244-0825'),
(9, 1, 'Ligeirinho', '(41) 87878-7878'),
(10, 1, 'Canela Fina', '(41) 57454-7454');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_observacoes`
--

CREATE TABLE `ws_observacoes` (
  `id_obs` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome_observacao` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_observacoes`
--

INSERT INTO `ws_observacoes` (`id_obs`, `user_id`, `id_categoria`, `nome_observacao`) VALUES
(1, 1, 44, 'Bem passado'),
(3, 1, 114, 'Massa Fina'),
(4, 1, 114, 'Massa Grossa'),
(5, 1, 114, 'Sem Cebola'),
(6, 1, 44, 'Sem Cebola');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcao_complemento`
--

CREATE TABLE `ws_opcao_complemento` (
  `id_opcao_complemento` int(11) NOT NULL,
  `nome_opcao_complemento` varchar(100) NOT NULL,
  `categorias_adicional_opcao_complemento` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_opcao_complemento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcoes_itens`
--

CREATE TABLE `ws_opcoes_itens` (
  `id_option` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nome_option` varchar(250) NOT NULL,
  `valor_tamanho` decimal(10,2) NOT NULL,
  `meio_a_meio` varchar(50) NOT NULL,
  `meio_a_meio_tipo` int(11) NOT NULL,
  `total_qtd_itens` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_opcoes_itens`
--

INSERT INTO `ws_opcoes_itens` (`id_option`, `user_id`, `id_tipo`, `nome_option`, `valor_tamanho`, `meio_a_meio`, `meio_a_meio_tipo`, `total_qtd_itens`) VALUES
(83, 1, 57, '250 ml', '15.00', 'null', 1, 'null'),
(84, 1, 57, '500 ml', '20.00', 'null', 1, 'null'),
(85, 1, 57, '1 L', '35.00', 'null', 1, 'null'),
(93, 1, 67, 'Pizza Grande (Dois Sabores) Meio a Meio', '0.00', 'true', 1, '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos`
--

CREATE TABLE `ws_pedidos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `codigo_pedido` varchar(150) DEFAULT NULL,
  `data` datetime NOT NULL,
  `data_chart` varchar(100) NOT NULL,
  `data_chart2` date NOT NULL,
  `resumo_pedidos` longtext DEFAULT NULL,
  `forma_pagamento` varchar(150) DEFAULT NULL,
  `valor_troco` decimal(10,2) DEFAULT NULL,
  `opcao_delivery` varchar(50) DEFAULT NULL,
  `valor_taxa` decimal(10,2) DEFAULT NULL,
  `telefone_empresa` varchar(200) DEFAULT NULL,
  `adicionais` varchar(250) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `telefone` varchar(150) DEFAULT NULL,
  `rua` varchar(250) DEFAULT NULL,
  `unidade` int(11) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `uf` varchar(10) DEFAULT NULL,
  `complemento` varchar(250) DEFAULT NULL,
  `observacao` varchar(250) DEFAULT NULL,
  `name_observacao_mesa` varchar(250) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `mes` varchar(5) NOT NULL,
  `ano` varchar(5) NOT NULL,
  `view` int(11) NOT NULL,
  `desconto` int(11) DEFAULT NULL,
  `confirm_whatsapp` varchar(50) DEFAULT NULL,
  `msg_delivery_false` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos`
--

INSERT INTO `ws_pedidos` (`id`, `user_id`, `codigo_pedido`, `data`, `data_chart`, `data_chart2`, `resumo_pedidos`, `forma_pagamento`, `valor_troco`, `opcao_delivery`, `valor_taxa`, `telefone_empresa`, `adicionais`, `sub_total`, `total`, `nome`, `telefone`, `rua`, `unidade`, `bairro`, `cidade`, `uf`, `complemento`, `observacao`, `name_observacao_mesa`, `status`, `mes`, `ano`, `view`, `desconto`, `confirm_whatsapp`, `msg_delivery_false`) VALUES
(168, 1, 'PED1122-1', '2022-11-14 19:09:41', '2022-11', '2022-11-14', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Catchup, Maionese<br /><b>Valor:</b> R$ 32,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', '0.00', 'false', '0.00', '92991461245', '0', '32.00', '32.00', 'Marcos', '92991461245', NULL, NULL, NULL, NULL, NULL, '*Não informado*', '*Não informado*', NULL, 'Disponível para Retirada', '11', '22', 1, NULL, 'true', 'Retirada no Balcão'),
(169, 1, 'PED1122-2', '2022-11-21 23:01:54', '2022-11', '2022-11-21', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Catchup<br /><b>Valor:</b> R$ 32,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Na entrega)', '0.00', 'false', '0.00', '92991461245', '0', '32.00', '32.00', 'Marcos', '92991461245', NULL, NULL, NULL, NULL, NULL, '*Não informado*', '*Não informado*', NULL, 'Disponível para Retirada', '11', '22', 0, NULL, 'true', 'Retirada no Balcão'),
(170, 1, 'PED0123-1', '2023-01-18 00:56:29', '2023-01', '2023-01-18', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Catchup, Maionese<br /><b>Adicionais pagos:</b><br />Hamburger 150g, <br /><b>Valor:</b> R$ 37,00<br /><b>OBS:</b> Bem passado<br /><br />', 'Dinheiro', '0.00', 'true', '0.00', '92991461245', '5', '37.00', '37.00', 'Fulano', '92991461245', 'Rua Salvador ', 6, 'col. saijsa', 'Manaus', 'AM', '*Não informado*', '*Não informado*', NULL, 'Cancelado', '01', '23', 0, NULL, 'true', NULL),
(171, 1, 'PED0123-2', '2023-01-18 22:10:02', '2023-01', '2023-01-18', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Azeitona<br /><b>Valor:</b> R$ 32,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', '0.00', 'true', '0.00', '92991461245', '0', '32.00', '32.00', 'Marcos%20Mulinari', '92991461245', 'Rua Salvador ', 6, 'col. saijsa', 'Manaus', 'AM', '*Não informado*', '*Não informado*', NULL, 'Aberto', '01', '23', 0, NULL, 'true', NULL),
(172, 1, 'PED0123-3', '2023-01-18 22:15:30', '2023-01', '2023-01-18', '<b>Qtd:</b> 1x Frango a parmegiana<br /><b>Valor:</b> R$ 16,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', '50.00', 'true', '0.00', '92991461245', '0', '16.00', '16.00', 'Marcos%20Mulinari', '92991461245', 'Rua Salvador ', 6, 'manoa', 'Manaus', 'AM', '*Não informado*', '*Não informado*', NULL, 'Finalizado', '01', '23', 0, NULL, 'true', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos_itens`
--

CREATE TABLE `ws_pedidos_itens` (
  `ID_TABELA` int(11) NOT NULL,
  `ID_WS_PEDIDOS` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODIGO_PEDIDO` varchar(100) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `ADICIONAIS` varchar(250) NOT NULL,
  `OBS` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos_itens`
--

INSERT INTO `ws_pedidos_itens` (`ID_TABELA`, `ID_WS_PEDIDOS`, `USER_ID`, `CODIGO_PEDIDO`, `ID_PRODUTO`, `QTDE`, `VALOR`, `ADICIONAIS`, `OBS`) VALUES
(173, 168, 1, 'PED1122-1', 143, 1, '32.00', '', 'Não'),
(174, 169, 1, 'PED1122-2', 143, 1, '32.00', '', 'Não'),
(175, 170, 1, 'PED0123-1', 143, 1, '37.00', 'Hamburger 150g, ', 'Bem passado'),
(176, 171, 1, 'PED0123-2', 143, 1, '32.00', '', 'Não'),
(177, 172, 1, 'PED0123-3', 169, 1, '16.00', '', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_relacao_tamanho`
--

CREATE TABLE `ws_relacao_tamanho` (
  `id_relacao` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_tamanho` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_relacao_tamanho`
--

INSERT INTO `ws_relacao_tamanho` (`id_relacao`, `id_user`, `id_item`, `id_tipo`, `id_tamanho`) VALUES
(9, 1, 139, 56, '82,81,80'),
(10, 1, 140, 56, '82,81,80'),
(11, 1, 141, 56, '82,81,80'),
(12, 1, 142, 56, '82,81,80'),
(14, 1, 148, 57, '85,84,83'),
(15, 1, 149, 57, '85,84,83'),
(16, 1, 150, 57, '85,84,83'),
(29, 1, 189, 67, '93');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_tipo_produto`
--

CREATE TABLE `ws_tipo_produto` (
  `id_tipo_produto` int(11) NOT NULL,
  `nome_tipo_produto` varchar(250) NOT NULL,
  `user_tipo_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_tipo_produto`
--

INSERT INTO `ws_tipo_produto` (`id_tipo_produto`, `nome_tipo_produto`, `user_tipo_produto`) VALUES
(57, 'Copo de Açai', 1),
(61, 'P', 1),
(67, 'Pizza Dois Sabores (Meio a Meio)', 1);

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
-- Índices para tabela `ateste`
--
ALTER TABLE `ateste`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices para tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  ADD PRIMARY KEY (`id_config`);

--
-- Índices para tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  ADD PRIMARY KEY (`id_cupom`);

--
-- Índices para tabela `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id_views`);

--
-- Índices para tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  ADD PRIMARY KEY (`id_adicionais`);

--
-- Índices para tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  ADD PRIMARY KEY (`id_adicional_gratis`);

--
-- Índices para tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices para tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices para tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  ADD PRIMARY KEY (`id_f_pagamento`);

--
-- Índices para tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  ADD PRIMARY KEY (`id_fuso`);

--
-- Índices para tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  ADD PRIMARY KEY (`id_impressora`);

--
-- Índices para tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  ADD PRIMARY KEY (`id_obs`);

--
-- Índices para tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  ADD PRIMARY KEY (`id_opcao_complemento`);

--
-- Índices para tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  ADD PRIMARY KEY (`id_option`);

--
-- Índices para tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  ADD PRIMARY KEY (`ID_TABELA`);

--
-- Índices para tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  ADD PRIMARY KEY (`id_relacao`);

--
-- Índices para tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  ADD PRIMARY KEY (`id_tipo_produto`);

--
-- Índices para tabela `ws_users`
--
ALTER TABLE `ws_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ateste`
--
ALTER TABLE `ateste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT de tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  MODIFY `id_cupom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `views`
--
ALTER TABLE `views`
  MODIFY `id_views` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  MODIFY `id_adicionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  MODIFY `id_adicional_gratis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  MODIFY `id_f_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  MODIFY `id_fuso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  MODIFY `id_impressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  MODIFY `id_obs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  MODIFY `id_opcao_complemento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  MODIFY `ID_TABELA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  MODIFY `id_relacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  MODIFY `id_tipo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `ws_users`
--
ALTER TABLE `ws_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
