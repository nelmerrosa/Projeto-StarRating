-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jul-2021 às 21:17
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `moviestar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `trailer` varchar(150) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `image`, `trailer`, `category`, `length`, `users_id`) VALUES
(3, 'Hércules', 'Filme foi uma bosta, melhor ver o filme do Pelé.', '83476eda0023b43c3f6308344921f5085809180a894db6dde74c245712f4d04da44abd87093b3b49b0219090fb86e3e6b122614083ff5993856decee.jpg', 'https://www.youtube.com/embed/Py5_SVwSe8w', 'Ação', '3h', 19),
(4, 'Gente Grande 2', 'Ri muito! Mentira, é filme do Adam Sandler', 'd3d28cf612c6106e29f28d5dbf76f59624a3678b8b41068a96aabde7ba6ef580d70ad8d0e18375981864a21300bffa151d34a9a34c2c2e60a9a51f50.jpg', 'https://www.youtube.com/embed/wGyjbrMC-Ok', 'Comédia', '1:46h', 21),
(5, 'Asterix e Obelix contra César', 'Filme antigo, muito engraçado, recomendado pelo grande cinéfilo Luiz Iuri.', 'c8b2f1d0d68dddc6b36539dc2018c3daba81793afe984c9314c901da5fa36504902f041f15fe011c303fe2fa95a0d502c2fd92ce6f3eff1ed77d3ff1.jpg', 'https://www.youtube.com/watch?v=hUA8niCIltk&ab_channel=AiltonLopes', 'Comédia', '1h 49min', 22),
(6, 'Viúva Negra', 'Filme de herói padrão', 'af982011093df3ab4ef12c53c6e78b71fe1539f451f9ba7659767b8d14b362d1b1df794a3da0466a75e9abf9de01e3334179768a046977ad7f1093cd.jpg', 'https://www.youtube.com/embed/uNAxHLp7wv8', 'Ação', '2h 14min', 22),
(7, 'Rua do Medo: 1978 – Parte 2', 'Rua do Medo: 1978 é o segundo filme adaptado da trilogia de R.L. Stine e acompanha um grupo de adolescentes que descobrem eventos aterrorizantes sobre sua cidade, onde há gerações acontecem assassinatos brutais. Todos essas mortes parecem estar conectadas e eles podem ser as próximas vítimas. O segundo longa se passa em um acampamento onde jovens das cidades de Shadyside e Sunnyvale se encontram e descobrem que as duas cidades estão unidas por esse mistério.', 'ce06fec561854cf76c92003f1d2bd9facbd24d71f98ca1429cf13a0184edbfe9cf6d9fa7824a1c4ae9fc0a29c13d80a44379bfd325e5368dd49dd0e9.jpg', 'https://www.youtube.com/embed/uohgm0__5Es', 'Terror', '1h 49min', 22),
(8, 'Cruella', 'Bem antes da atual moda de remakes de animações clássicas, a Disney já tinha um live-action famoso: Os 101 Dálmatas, onde Glenn Close imortalizou sua versão de Cruella De Vil nos anos 90. Logo, quando anunciaram o prelúdio Cruella, surgiu uma expectativa ainda maior sobre quem iria interpretar tal personagem. Afinal, as comparações seriam inevitáveis, certo? Errado! Emma Stone surge com uma versão completamente diferente da icônica vilã, mas ainda assim maravilhosa.Cruella acompanha o início da jornada da personagem-título, desde quando ainda era Estella, uma criança rebelde, até virar uma jovem adulta criativa, que vive de pequenos golpes ao lado de Jasper (Joel Fry) e Horácio (Paul Walter Hauser). Porém, ela tem um talento nato para a moda, algo que chama a atenção da poderosa Baronesa Von Hellman (Emma Thompson), dona de um império e sem nenhum caráter.', '317ac51c9a0ac4f833af1e4ebb5a6b22911a661cca0e44e94ad348a9f9656e6b5fbff1df295e6b4fb107be692cfe818ba425996b822f226023bf2ff8.jpg', 'https://www.youtube.com/embed/-qq_6xqm1FU', 'Drama', '2h 14min', 22),
(9, 'SCOOBY! O Filme', 'As animações de Scooby-Doo e seus filmes em live-action sempre se basearam na urgência das missões misteriosas que o grupo formado por Scooby, Salsicha, Velma, Dafne e Fred tenta solucionar. Na mais nova animação da franquia que chega diretamente ao público através do video on demand, tal \"costume\" visto nas histórias sai um pouco da curva – o que pode causar certa surpresa em alguns espectadores.Porém, SCOOBY! O Filme funciona no quesito entretenimento graças ao longevo carisma do grupo que percorre casas mal assombradas e tantos outros lugares dentro da Máquina Mistério.', 'ad4a5e0bf11779496d76133a858e7326beb9c3fcc4ba5d3e75c43da0fe4cb52c4836667e373d2781707a5836100de895568e4f9aa5ee5d29ac0ae195.jpg', 'https://www.youtube.com/embed/b15_u5wYB0I\"', 'Fantasia / Ficção', '1h 34min', 22),
(10, 'Joker', 'Isolado, intimidado e desconsiderado pela sociedade, o fracassado comediante Arthur Fleck inicia seu caminho como uma mente criminosa após assassinar três homens em pleno metrô. Sua ação inicia um movimento popular contra a elite de Gotham City, da qual Thomas Wayne é seu maior representante.', '31b56ba810dfb6f2bc453a593e3a38b1f1de4a1bad7f86fc9a4a02158c4cf50666c3b4db019f9f3b6b2f504df3ef1d722010e5ab10844d68493978cf.jpg', 'https://www.youtube.com/embed/zAGVQLHvwOY', 'Suspense', '2h 30min', 22),
(11, 'Fuga das Galinhas', 'Um clássico!', NULL, 'https://www.youtube.com/embed/Vfirqr2Gt44', 'Comédia', '2h 15min', 22),
(12, 'Espartalhões', 'Filme ruim que o Pedro gosta.', 'fe2296e5ca2fd3870be6a140d83b2a7dd25fee2136ebbea2fb2f966c46701ca522072616112f15cd4b6d8908b7edc39f6c8f101b939cf9afac23901c.jpg', 'https://www.youtube.com/embed/01QiUg2sUwQ', 'Comédia', ' 1h 24min', 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL,
  `movies_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `review`, `users_id`, `movies_id`) VALUES
(1, 8, 'Achei bom!', 20, 3),
(2, 6, 'Achei meio clichê, mas é divertido.', 22, 4),
(3, 10, 'Filme mt brabo', 23, 10),
(4, 8, 'filme bom', 23, 11),
(5, 4, 'Achei muito hetero top, nao gostei!', 23, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `image`, `token`, `bio`) VALUES
(17, 'Nelmer S.', 'Rosa', 'nelmerrosa@adm.com', '$2y$10$PURx4fOi8L3./HZg45VBqOgcUME4nzK8K1UaIsHVGsJ17MxDwwDr2', '5e182fea5506240feae28c389e8ae6c5a6969c356c18e002e88ba46d6a96a05197cee13973f63d51a18d1e8722770b01e8cdeb1e7f23fd6510f94385.jpg', '45f90f7a82612b75986b46fde5352dfe197dd5b78bd07aeb7bd09bc1a8dc9ab20febd3154f949bc1c6dde4938753756c9e8d', 'Dev JR'),
(18, 'Teste', '1', 'teste01@teste.com', '$2y$10$R7AuhPXPxltcVSch2BjyfuxjTIbT3FthWIDltogvpBnUSK3bS1j9O', 'c7439a2a0c57cd2d576612bc91f61326d04675b47789e48bc8069a30d8065e9f316f2eea505603a3f770b1c710e123330970a07b4fb316ebbb15969a.jpg', '5a4d9776db29be1c4f54228ebb70d0d06bd2e76f76f9621a3e06640bef0c36369b347692f37dceb7d8ebb4eac5dc64ca3b8e', ''),
(19, 'teste iuri', '23', 'teste2@outlook.com', '$2y$10$i0i8OkpRposiPh.Xh.gZD.0FIMf3rv50PWLkdqKmsfXVqtgMHCXey', 'db6ec18d19c310be86f893b17a85a3793bb9a59a8a9f6ea46c16438398e960b8089df25cc6fd85b0af58d62292079b1969c724345502e964a9774925.jpg', '1ea3c241be4bcfce9cd080d2f8e8e79e7214152aecf8b5a3d7a8c72f2cec578cf5d6237688c3155904f46c7918c53cd23429', 'Sou dev'),
(20, 'Teste 2', 'Monteiro', 'teste3@outlook.com', '$2y$10$kF8odtWUESX3rAF27Db10ulQbkHiSDxJkdzM.rc9urSyBwoid3N1u', NULL, 'feb0523490703d766aee734783743f0d1d5446b4d7574ee6db6057d8a7210ef5bb7bb3105a174d3ba5a53adbb75d0cca8044', NULL),
(21, 'Usuário', 'Novo', 'teste3@teste.com', '$2y$10$1E4dJaBy/cbxy.vmI6Ee.Og0xN.GTPvTUvbBCxldQDgapXt0Qg4KC', NULL, '21d12a6e06a00c095ccfff140cabc451d1555aa7f1bd953f287113789dd198346a67330856edff6a12c774128d18e5515241', NULL),
(22, 'ADM', 'Master', 'master@email.com', '$2y$10$7xIP2556KvWBp/YhrqH1HuErFPszMS58JRFge7IgLGWcw0nADmO6K', '77f6e74ab04627e4be9165d93e7089573af96e3d6d13ae85345a0a8bb6c7febf2b1b1221ba6d68a1f3f6676dd59b45444c6d63565940650c5354c56b.jpg', '221b7363b413b1c9a06b38839b5dd00ddc5301d5a23dd797d1a0aacc94ec1c9b366debf167f8aa0748ec3b97cf1e8925c509', ''),
(23, 'Pedro Henrique', 'Gaio', 'pedro@gaio.com', '$2y$10$EaltT.K81YuLi0khloxtAOJSSl8Pgieq8tSGbyERnUqxhA3egHs4K', '54b64c8abfcfc6c84b58c555bf85db08a1fa60585e0f349aa8f898962ce44bbbda2bb5b6536fb26167e1e429cd264b79f78f91c94578bfd93f0b9236.jpg', 'adea0c483ecd1601170ba50ec6b90b7dc579580a6bbdefac6e50cc80be08c5971f55686c90ca017bf633d83fd0d8a05fa341', 'Latente e Ansioso');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Índices para tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `movies_id` (`movies_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
