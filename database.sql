-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.19-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para agenda_wsd
CREATE DATABASE IF NOT EXISTS `agenda_wsd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agenda_wsd`;

-- Copiando estrutura para tabela agenda_wsd.agendaservico
CREATE TABLE IF NOT EXISTS `agendaservico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idservico` int(11) NOT NULL,
  `dthr_ini` datetime NOT NULL,
  `dthr_fim` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela agenda_wsd.agendaservico: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `agendaservico` DISABLE KEYS */;
INSERT INTO `agendaservico` (`id`, `idservico`, `dthr_ini`, `dthr_fim`) VALUES
	(1, 11, '2019-04-14 10:00:00', '2019-04-14 11:00:00'),
	(2, 11, '2019-04-14 16:00:00', '2019-04-14 17:00:00'),
	(3, 12, '2019-04-14 21:00:00', '2019-04-14 22:00:00'),
	(4, 12, '2019-04-14 21:00:00', '2019-04-14 22:00:00'),
	(5, 13, '2019-04-21 07:00:00', '2019-04-21 08:00:00'),
	(6, 13, '2019-04-21 09:00:00', '2019-04-21 10:00:00'),
	(7, 11, '2019-04-14 13:00:00', '2019-04-14 14:00:00'),
	(8, 12, '2019-04-14 22:00:00', '2019-04-14 23:00:00'),
	(9, 14, '2019-04-14 22:00:00', '2019-04-14 23:00:00'),
	(10, 14, '2019-04-14 23:00:00', '2019-04-14 00:00:00'),
	(11, 14, '2019-04-14 19:00:00', '2019-04-14 20:00:00'),
	(12, 14, '2019-04-14 20:00:00', '2019-04-14 21:00:00'),
	(13, 11, '2019-04-14 11:00:00', '2019-04-14 12:00:00'),
	(14, 15, '2019-04-14 20:00:00', '2019-04-14 21:00:00'),
	(15, 15, '2019-04-14 21:00:00', '2019-04-14 22:00:00');
/*!40000 ALTER TABLE `agendaservico` ENABLE KEYS */;

-- Copiando estrutura para tabela agenda_wsd.confirmacaoagendaservico
CREATE TABLE IF NOT EXISTS `confirmacaoagendaservico` (
  `idagendaservico` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `observacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela agenda_wsd.confirmacaoagendaservico: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `confirmacaoagendaservico` DISABLE KEYS */;
INSERT INTO `confirmacaoagendaservico` (`idagendaservico`, `usuario`, `observacao`) VALUES
	(1, 'WEB', NULL),
	(2, 'WEB', NULL),
	(7, 'WEB', NULL),
	(13, 'WEB', NULL),
	(10, 'MOBILE', NULL),
	(6, 'MOBILE', NULL),
	(4, 'MOBILE', NULL),
	(5, 'MOBILE', NULL);
/*!40000 ALTER TABLE `confirmacaoagendaservico` ENABLE KEYS */;

-- Copiando estrutura para tabela agenda_wsd.servico
CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  `url_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela agenda_wsd.servico: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` (`id`, `descricao`, `url_img`) VALUES
	(11, 'Quadra Futsal 1', 'https://br.habcdn.com/files/dynamic_content/624602028167900-1279974_gallery.jpg'),
	(12, 'Quadra Futsal 2', 'https://imprensanewssul.com.br/wp-content/uploads/Maracaj%C3%A1-nova-quadra-de-futsal-3.jpg'),
	(13, 'Quadra Futsal 3', 'https://br.habcdn.com/photos/quotation/gallery/maracanazinho-01-507766_507766.jpg'),
	(14, 'Quadra Futebol 7', 'http://www.soccercitypoa.com.br/wp-content/uploads/2016/05/SOCCER-10.jpg'),
	(15, 'Quadra FutVolei', 'https://assets.izap.com.br/asbemge.com.br/plus/images?src=posts/362_WhatsApp_Image_2017-05-10_at_19.41.39.jpeg&');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
