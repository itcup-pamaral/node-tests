-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: 10.240.0.2    Database: testes
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `custom_admin_autenticacao`
--

DROP TABLE IF EXISTS `custom_admin_autenticacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_admin_autenticacao` (
  `id` int(11) NOT NULL DEFAULT '0',
  `gmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_admin_bds`
--

DROP TABLE IF EXISTS `custom_admin_bds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_admin_bds` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `porta` varchar(100) DEFAULT NULL,
  `nome_bd` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_admin_empresa`
--

DROP TABLE IF EXISTS `custom_admin_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_admin_empresa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(100) DEFAULT NULL,
  `morada` text,
  `telefone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `logo_itcup` varchar(100) DEFAULT NULL,
  `nuit` varchar(20) DEFAULT NULL,
  `autenticacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_admin_user`
--

DROP TABLE IF EXISTS `custom_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_joomla_user` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `extensao` varchar(100) DEFAULT NULL,
  `movel1` varchar(100) DEFAULT NULL,
  `movel2` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `departamento` text,
  `funcao` text,
  `depfun` text,
  `editor` varchar(100) DEFAULT 'no',
  `block` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_bi_dados`
--

DROP TABLE IF EXISTS `custom_bi_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_bi_dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `selecionar` varchar(1000) DEFAULT NULL,
  `de` varchar(1000) DEFAULT NULL,
  `onde` varchar(1000) DEFAULT NULL,
  `campo_data` varchar(100) DEFAULT NULL,
  `formula` varchar(1000) DEFAULT NULL,
  `media_dia` tinyint(4) DEFAULT '0',
  `publicado` tinyint(4) DEFAULT '0',
  `tipodb` varchar(100) DEFAULT NULL,
  `id_campo_comparacao` varchar(100) DEFAULT NULL,
  `tabela` varchar(100) DEFAULT NULL,
  `id_tabela` varchar(100) DEFAULT NULL,
  `campo_comparacao` varchar(100) DEFAULT NULL,
  `tempo_top` varchar(100) DEFAULT NULL,
  `relacao` tinyint(4) DEFAULT '0',
  `sistema` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_bi_graficos`
--

DROP TABLE IF EXISTS `custom_bi_graficos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_bi_graficos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `subtitulo` varchar(100) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `legenda_grafico` varchar(100) DEFAULT NULL,
  `legenda_detalhe` varchar(100) DEFAULT NULL,
  `orientacao` varchar(100) DEFAULT '0',
  `ordem_inversa` tinyint(4) DEFAULT '1',
  `agrupa` tinyint(4) DEFAULT '0',
  `orientacao_grafico` varchar(100) DEFAULT '',
  `tipo_grafico` varchar(100) DEFAULT '',
  `total` tinyint(4) DEFAULT '0',
  `legenda_total` varchar(100) DEFAULT NULL,
  `publicado` tinyint(4) DEFAULT '0',
  `permissoes` text,
  `sistema` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_bi_graficos_dados`
--

DROP TABLE IF EXISTS `custom_bi_graficos_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_bi_graficos_dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_graficos` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `id_dados` int(11) NOT NULL,
  `cor` varchar(10) DEFAULT NULL,
  `stack` varchar(10) DEFAULT NULL,
  `sistema` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_graficos` (`id_graficos`),
  KEY `id_dados` (`id_dados`),
  CONSTRAINT `custom_bi_graficos_dados_ibfk_1` FOREIGN KEY (`id_graficos`) REFERENCES `custom_bi_graficos` (`id`),
  CONSTRAINT `custom_bi_graficos_dados_ibfk_2` FOREIGN KEY (`id_dados`) REFERENCES `custom_bi_dados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_empresa_comentarios`
--

DROP TABLE IF EXISTS `custom_empresa_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_empresa_comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` mediumtext NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `data` varchar(20) NOT NULL,
  `id_joomla_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`),
  KEY `id` (`id`),
  CONSTRAINT `custom_empresa_comentarios_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `custom_empresa_posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_empresa_posts`
--

DROP TABLE IF EXISTS `custom_empresa_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_empresa_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensagem` mediumtext NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `vid_url` varchar(100) NOT NULL,
  `data` varchar(20) NOT NULL,
  `id_joomla_user` int(11) DEFAULT NULL,
  `destaque` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_empresa_posts_lidos`
--

DROP TABLE IF EXISTS `custom_empresa_posts_lidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_empresa_posts_lidos` (
  `id_post` int(11) DEFAULT NULL,
  `id_joomla_user` int(11) DEFAULT NULL,
  UNIQUE KEY `post_user` (`id_post`,`id_joomla_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_campos`
--

DROP TABLE IF EXISTS `custom_ent_campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_est_dados` int(11) DEFAULT NULL,
  `id_entidades` int(11) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `campo_text` varchar(100) DEFAULT NULL,
  `campo_alinhar` varchar(100) DEFAULT NULL,
  `campo_modificar` varchar(100) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  `sistema` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_dados_inseridos`
--

DROP TABLE IF EXISTS `custom_ent_dados_inseridos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_dados_inseridos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_extensao` int(11) NOT NULL,
  `id_registo` int(11) NOT NULL,
  `id_entidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_dados_inseridos_campos`
--

DROP TABLE IF EXISTS `custom_ent_dados_inseridos_campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_dados_inseridos_campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dados` int(11) NOT NULL,
  `ComponentId` int(11) NOT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `id_entidade` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `custom_ent_dados_inseridos_campos_ibfk_1` (`id_dados`),
  CONSTRAINT `custom_ent_dados_inseridos_campos_ibfk_1` FOREIGN KEY (`id_dados`) REFERENCES `custom_ent_dados_inseridos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_entidades`
--

DROP TABLE IF EXISTS `custom_ent_entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_entidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipodb` varchar(100) DEFAULT NULL,
  `tabela` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `campoid` varchar(100) DEFAULT NULL,
  `filtro` varchar(1000) DEFAULT NULL,
  `campo_text` varchar(100) DEFAULT NULL,
  `publicado` tinyint(4) DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `sistema` tinyint(4) DEFAULT '0',
  `permissoes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_estrutura_dados`
--

DROP TABLE IF EXISTS `custom_ent_estrutura_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_estrutura_dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_entidades` int(11) DEFAULT NULL,
  `id_pai` int(11) DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `tipodb` varchar(100) DEFAULT NULL,
  `tabela` varchar(100) DEFAULT NULL,
  `campoid` varchar(100) DEFAULT NULL,
  `campoidpai` varchar(100) DEFAULT NULL,
  `campoordem` varchar(100) DEFAULT NULL,
  `filtro` varchar(1000) DEFAULT NULL,
  `tipo` varchar(100) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `publicado` tinyint(4) DEFAULT '0',
  `ordem` int(11) DEFAULT NULL,
  `permissoes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_rsform_component_types`
--

DROP TABLE IF EXISTS `custom_ent_rsform_component_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_rsform_components`
--

DROP TABLE IF EXISTS `custom_ent_rsform_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_rsform_forms`
--

DROP TABLE IF EXISTS `custom_ent_rsform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_rsform_properties`
--

DROP TABLE IF EXISTS `custom_ent_rsform_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=715 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_tabela`
--

DROP TABLE IF EXISTS `custom_ent_tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_tabela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_ent_tabela_campos`
--

DROP TABLE IF EXISTS `custom_ent_tabela_campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_ent_tabela_campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tabela` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_pms_movimentos`
--

DROP TABLE IF EXISTS `custom_pms_movimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_pms_movimentos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Referencia` varchar(50) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `DataTrans` varchar(50) DEFAULT NULL,
  `DataValor` varchar(50) DEFAULT NULL,
  `RefTrans` varchar(50) DEFAULT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `Credito` int(11) DEFAULT NULL,
  `DataTab` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Entidade` varchar(50) DEFAULT NULL,
  `Conta` varchar(50) DEFAULT NULL,
  `DataDeposito` datetime DEFAULT NULL,
  `NumAvisoLanc` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_agendamento`
--

DROP TABLE IF EXISTS `custom_wf_agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_agendamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `id_joomla_user` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_ini` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_fim` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publicado` int(1) DEFAULT '0',
  `alias` varchar(100) DEFAULT NULL,
  `periodo` int(1) DEFAULT '0',
  `dia_semana` int(1) DEFAULT NULL,
  `dia_mes` int(1) DEFAULT NULL,
  `hora` int(1) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL,
  `resultado` varchar(100) DEFAULT NULL,
  `executado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_alertas`
--

DROP TABLE IF EXISTS `custom_wf_alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `id_joomla_user` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_ini` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_fim` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publicado` int(1) DEFAULT '0',
  `texto` text,
  `alias` varchar(100) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_diagrama`
--

DROP TABLE IF EXISTS `custom_wf_diagrama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_diagrama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `sim` varchar(100) DEFAULT NULL,
  `nao` varchar(100) DEFAULT NULL,
  `seg` varchar(100) DEFAULT NULL,
  `texto` text,
  `permissoes` text,
  `email_su` text,
  `tempo_exec` int(11) DEFAULT NULL,
  `processo` varchar(100) DEFAULT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  `tempo_alerta` int(11) DEFAULT NULL,
  `tipo_entidade` int(11) DEFAULT NULL,
  `subprocesso` int(11) DEFAULT NULL,
  `accao` int(11) DEFAULT NULL,
  `iniciado` tinyint(4) NOT NULL DEFAULT '0',
  `alterado` tinyint(4) NOT NULL DEFAULT '0',
  `id_macroprocesso` int(11) DEFAULT NULL,
  `dificuldade` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_macroprocesso` (`id_macroprocesso`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_diagrama_producao`
--

DROP TABLE IF EXISTS `custom_wf_diagrama_producao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_diagrama_producao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `sim` varchar(100) DEFAULT NULL,
  `nao` varchar(100) DEFAULT NULL,
  `seg` varchar(100) DEFAULT NULL,
  `texto` text,
  `permissoes` text,
  `email_su` text,
  `tempo_exec` int(11) DEFAULT NULL,
  `processo` varchar(100) DEFAULT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  `tempo_alerta` int(11) DEFAULT NULL,
  `tipo_entidade` int(11) DEFAULT NULL,
  `versao` int(11) DEFAULT NULL,
  `subprocesso` int(11) DEFAULT NULL,
  `accao` int(11) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iniciado` tinyint(4) NOT NULL DEFAULT '0',
  `dificuldade` int(11) DEFAULT '0',
  `id_macroprocesso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_macroprocesso` (`id_macroprocesso`),
  CONSTRAINT `custom_wf_diagrama_producao_ibfk_1` FOREIGN KEY (`id_macroprocesso`) REFERENCES `custom_wf_macroprocesso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_macroprocesso`
--

DROP TABLE IF EXISTS `custom_wf_macroprocesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_macroprocesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo`
--

DROP TABLE IF EXISTS `custom_wf_processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pai` int(11) DEFAULT NULL,
  `id_joomla_user` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_ini` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `estado` int(1) DEFAULT '0',
  `hash` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `ownergroup` varchar(100) DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `versao` int(11) DEFAULT NULL,
  `entidade` int(11) DEFAULT '0',
  `tipoentidade` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo_alertas`
--

DROP TABLE IF EXISTS `custom_wf_processo_alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo_alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) DEFAULT NULL,
  `emails` text,
  PRIMARY KEY (`id`),
  KEY `id_processo` (`id_processo`),
  CONSTRAINT `custom_wf_processo_alertas_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `custom_wf_processo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo_arvore`
--

DROP TABLE IF EXISTS `custom_wf_processo_arvore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo_arvore` (
  `id` int(11) NOT NULL,
  `id_filho` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `motivo` varchar(20) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `texto` varchar(2000) DEFAULT NULL,
  `tempo_exec` int(11) DEFAULT NULL,
  `tempo_alerta` int(11) DEFAULT NULL,
  `versao` int(11) DEFAULT NULL,
  `subprocesso` int(11) DEFAULT NULL,
  `accao` int(11) DEFAULT NULL,
  `dificuldade` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`id_filho`,`id_processo`),
  KEY `id_processo` (`id_processo`),
  CONSTRAINT `custom_wf_processo_arvore_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `custom_wf_processo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo_notificacoes`
--

DROP TABLE IF EXISTS `custom_wf_processo_notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo_notificacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) DEFAULT NULL,
  `id_joomla_user` int(11) NOT NULL,
  `nota` text,
  `tipo` varchar(100) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_processo` (`id_processo`),
  CONSTRAINT `custom_wf_processo_notificacoes_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `custom_wf_processo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo_tarefa`
--

DROP TABLE IF EXISTS `custom_wf_processo_tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo_tarefa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) DEFAULT NULL,
  `data_aceitacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_ini` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_fim` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_joomla_user` int(11) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `id_reg_form` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  `id_subprocesso` int(11) DEFAULT NULL,
  `accao` int(11) DEFAULT NULL,
  `dificuldade` int(11) DEFAULT '0',
  `id_detector` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_processo` (`id_processo`),
  CONSTRAINT `custom_wf_processo_tarefa_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `custom_wf_processo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=980 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_processo_tarefa_permissoes`
--

DROP TABLE IF EXISTS `custom_wf_processo_tarefa_permissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_processo_tarefa_permissoes` (
  `email` varchar(100) NOT NULL,
  `permissao` char(1) NOT NULL,
  `id_processo` int(11) NOT NULL DEFAULT '0',
  `id_processo_tarefa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`,`id_processo`,`id_processo_tarefa`),
  KEY `id_processo` (`id_processo`),
  KEY `id_processo_tarefa` (`id_processo_tarefa`),
  CONSTRAINT `custom_wf_processo_tarefa_permissoes_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `custom_wf_processo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_seguir_processo`
--

DROP TABLE IF EXISTS `custom_wf_seguir_processo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_seguir_processo` (
  `id_processo` int(11) DEFAULT NULL,
  `joomla_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_soap`
--

DROP TABLE IF EXISTS `custom_wf_soap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_soap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `funcao` varchar(100) NOT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  `resposta` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `id_estrutura` int(11) DEFAULT NULL,
  `id_entidade` int(11) DEFAULT NULL,
  `tipo_retorno` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_soap_param`
--

DROP TABLE IF EXISTS `custom_wf_soap_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_soap_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_soap` int(11) DEFAULT NULL,
  `id_field_form` int(11) DEFAULT NULL,
  `fixo` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  `especial` varchar(100) DEFAULT '',
  `tiporesultado` varchar(100) DEFAULT NULL,
  `ComponentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_tabela`
--

DROP TABLE IF EXISTS `custom_wf_tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_tabela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `publicado` tinyint(4) NOT NULL DEFAULT '0',
  `ok` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_wf_tabela_campos`
--

DROP TABLE IF EXISTS `custom_wf_tabela_campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_wf_tabela_campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tabela` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_banned_users`
--

DROP TABLE IF EXISTS `frei_banned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_banned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_chat`
--

DROP TABLE IF EXISTS `frei_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `from_name` varchar(30) NOT NULL,
  `to` int(11) NOT NULL,
  `to_name` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  `time` double(15,4) NOT NULL,
  `GMT_time` bigint(20) NOT NULL,
  `message_type` int(11) NOT NULL DEFAULT '0',
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_config`
--

DROP TABLE IF EXISTS `frei_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) DEFAULT 'NULL',
  `cat` varchar(20) DEFAULT 'NULL',
  `subcat` varchar(20) DEFAULT 'NULL',
  `val` varchar(500) DEFAULT 'NULL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_groupchat`
--

DROP TABLE IF EXISTS `frei_groupchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_groupchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `group_author` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_created` int(11) NOT NULL,
  `group_participants` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_rooms`
--

DROP TABLE IF EXISTS `frei_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_author` varchar(100) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `room_type` tinyint(4) NOT NULL,
  `room_password` varchar(100) NOT NULL,
  `room_created` int(11) NOT NULL,
  `room_last_active` int(11) NOT NULL,
  `room_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_name` (`room_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_session`
--

DROP TABLE IF EXISTS `frei_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_session` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `time` int(100) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `permanent_id` int(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_mesg` varchar(100) NOT NULL,
  `guest` tinyint(3) NOT NULL,
  `in_room` int(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permanent_id` (`permanent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_smileys`
--

DROP TABLE IF EXISTS `frei_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_smileys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_video_session`
--

DROP TABLE IF EXISTS `frei_video_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_video_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT 'unique room id',
  `from_id` int(11) NOT NULL,
  `msg_type` varchar(10) NOT NULL,
  `msg_label` int(2) NOT NULL,
  `msg_data` varchar(3000) NOT NULL,
  `msg_time` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frei_webrtc`
--

DROP TABLE IF EXISTS `frei_webrtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frei_webrtc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `participants_id` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_article_maps`
--

DROP TABLE IF EXISTS `joomla_art_article_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_article_maps` (
  `articleid` int(11) NOT NULL DEFAULT '0',
  `status` enum('pending','normal','rejected','draft') DEFAULT 'pending',
  `reason` int(11) DEFAULT NULL,
  `approver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_cbfields`
--

DROP TABLE IF EXISTS `joomla_art_cbfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_cbfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `cb_field` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_email_templates`
--

DROP TABLE IF EXISTS `joomla_art_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`id`),
  KEY `title` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_reject_reasons`
--

DROP TABLE IF EXISTS `joomla_art_reject_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_reject_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `reason` text,
  `toolbar` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_resource_boxes`
--

DROP TABLE IF EXISTS `joomla_art_resource_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_resource_boxes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `text` text,
  `file` varchar(255) DEFAULT NULL,
  `file_params` text,
  PRIMARY KEY (`Id`),
  KEY `authorId` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_art_revisions`
--

DROP TABLE IF EXISTS `joomla_art_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_art_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `xreference` varchar(50) NOT NULL,
  `content_id` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `contentid` (`content_id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_assets`
--

DROP TABLE IF EXISTS `joomla_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_associations`
--

DROP TABLE IF EXISTS `joomla_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_banner_clients`
--

DROP TABLE IF EXISTS `joomla_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_banner_tracks`
--

DROP TABLE IF EXISTS `joomla_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_banners`
--

DROP TABLE IF EXISTS `joomla_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_categories`
--

DROP TABLE IF EXISTS `joomla_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler`
--

DROP TABLE IF EXISTS `joomla_comprofiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT '1',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) NOT NULL DEFAULT '',
  `cbactivation` varchar(50) NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext,
  `acceptedterms` tinyint(1) NOT NULL DEFAULT '0',
  `cb_extenso` varchar(255) DEFAULT NULL,
  `cb_departamento` mediumtext,
  `cb_subdep` varchar(255) DEFAULT NULL,
  `cb_cel1` varchar(255) DEFAULT NULL,
  `cb_cel2` varchar(255) DEFAULT NULL,
  `cb_nivel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`),
  KEY `lastupdatedate` (`lastupdatedate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_field_values`
--

DROP TABLE IF EXISTS `joomla_comprofiler_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_field_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`),
  KEY `fieldid_ordering` (`fieldid`,`ordering`),
  KEY `fieldtitle_id` (`fieldtitle`,`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_fields`
--

DROP TABLE IF EXISTS `joomla_comprofiler_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tablecolumns` text NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '#__comprofiler',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `tabid` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `profile` tinyint(1) NOT NULL DEFAULT '1',
  `displaytitle` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `pluginid` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext,
  PRIMARY KEY (`fieldid`),
  KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`),
  KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`),
  KEY `registration_published_order` (`registration`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_lists`
--

DROP TABLE IF EXISTS `joomla_comprofiler_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_lists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `usergroupids` varchar(255) DEFAULT NULL,
  `useraccessgroupid` int(9) NOT NULL DEFAULT '18',
  `sortfields` varchar(255) DEFAULT NULL,
  `filterfields` mediumtext,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `col1title` varchar(255) DEFAULT NULL,
  `col1enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col1fields` mediumtext,
  `col2title` varchar(255) DEFAULT NULL,
  `col2enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col1captions` tinyint(1) NOT NULL DEFAULT '0',
  `col2fields` mediumtext,
  `col2captions` tinyint(1) NOT NULL DEFAULT '0',
  `col3title` varchar(255) DEFAULT NULL,
  `col3enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col3fields` mediumtext,
  `col3captions` tinyint(1) NOT NULL DEFAULT '0',
  `col4title` varchar(255) DEFAULT NULL,
  `col4enabled` tinyint(1) NOT NULL DEFAULT '0',
  `col4fields` mediumtext,
  `col4captions` tinyint(1) NOT NULL DEFAULT '0',
  `params` mediumtext,
  PRIMARY KEY (`listid`),
  KEY `pub_ordering` (`published`,`ordering`),
  KEY `default_published` (`default`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_members`
--

DROP TABLE IF EXISTS `joomla_comprofiler_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_members` (
  `referenceid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '1',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `membersince` date NOT NULL DEFAULT '0000-00-00',
  `reason` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `type` mediumtext,
  PRIMARY KEY (`referenceid`,`memberid`),
  KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`),
  KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`),
  KEY `membrefid` (`memberid`,`referenceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_plugin`
--

DROP TABLE IF EXISTS `joomla_comprofiler_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT '',
  `folder` varchar(100) DEFAULT '',
  `backend_menu` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`),
  KEY `type_pub_order` (`type`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_sessions`
--

DROP TABLE IF EXISTS `joomla_comprofiler_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_sessions` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ui` tinyint(4) NOT NULL DEFAULT '0',
  `incoming_ip` varchar(39) NOT NULL DEFAULT '',
  `client_ip` varchar(39) NOT NULL DEFAULT '',
  `session_id` varchar(33) NOT NULL DEFAULT '',
  `session_data` mediumtext NOT NULL,
  `expiry_time` int(14) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `expiry_time` (`expiry_time`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_tabs`
--

DROP TABLE IF EXISTS `joomla_comprofiler_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_tabs` (
  `tabid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `ordering_register` int(11) NOT NULL DEFAULT '10',
  `width` varchar(10) NOT NULL DEFAULT '.5',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `pluginclass` varchar(255) DEFAULT NULL,
  `pluginid` int(11) DEFAULT NULL,
  `fields` tinyint(1) NOT NULL DEFAULT '1',
  `params` mediumtext,
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `displaytype` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `viewaccesslevel` int(10) unsigned NOT NULL DEFAULT '0',
  `useraccessgroupid` int(9) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`tabid`),
  KEY `enabled_position_ordering` (`enabled`,`position`,`ordering`),
  KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_userreports`
--

DROP TABLE IF EXISTS `joomla_comprofiler_userreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_userreports` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `reporteduser` int(11) NOT NULL DEFAULT '0',
  `reportedbyuser` int(11) NOT NULL DEFAULT '0',
  `reportedondate` date NOT NULL DEFAULT '0000-00-00',
  `reportexplaination` text NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportid`),
  KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`),
  KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_comprofiler_views`
--

DROP TABLE IF EXISTS `joomla_comprofiler_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_comprofiler_views` (
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  `lastview` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL DEFAULT '0',
  `vote` tinyint(3) DEFAULT NULL,
  `lastvote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`viewer_id`,`profile_id`,`lastip`),
  KEY `lastview` (`lastview`),
  KEY `profile_id_lastview` (`profile_id`,`lastview`,`viewer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_contact_details`
--

DROP TABLE IF EXISTS `joomla_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_content`
--

DROP TABLE IF EXISTS `joomla_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_content_frontpage`
--

DROP TABLE IF EXISTS `joomla_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_content_rating`
--

DROP TABLE IF EXISTS `joomla_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_content_types`
--

DROP TABLE IF EXISTS `joomla_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_contentitem_tag_map`
--

DROP TABLE IF EXISTS `joomla_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_core_log_searches`
--

DROP TABLE IF EXISTS `joomla_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_example_items`
--

DROP TABLE IF EXISTS `joomla_example_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_example_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_extensions`
--

DROP TABLE IF EXISTS `joomla_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10062 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_filters`
--

DROP TABLE IF EXISTS `joomla_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links`
--

DROP TABLE IF EXISTS `joomla_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms0`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms1`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms2`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms3`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms4`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms5`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms6`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms7`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms8`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_terms9`
--

DROP TABLE IF EXISTS `joomla_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termsa`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termsb`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termsc`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termsd`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termse`
--

DROP TABLE IF EXISTS `joomla_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_links_termsf`
--

DROP TABLE IF EXISTS `joomla_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_taxonomy`
--

DROP TABLE IF EXISTS `joomla_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `joomla_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_terms`
--

DROP TABLE IF EXISTS `joomla_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_terms_common`
--

DROP TABLE IF EXISTS `joomla_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_tokens`
--

DROP TABLE IF EXISTS `joomla_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `joomla_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_finder_types`
--

DROP TABLE IF EXISTS `joomla_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_jsn_poweradmin_favourite`
--

DROP TABLE IF EXISTS `joomla_jsn_poweradmin_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_jsn_poweradmin_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `icon` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_jumi`
--

DROP TABLE IF EXISTS `joomla_jumi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_jumi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `custom_script` text,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_languages`
--

DROP TABLE IF EXISTS `joomla_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_menu`
--

DROP TABLE IF EXISTS `joomla_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=627 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_menu_types`
--

DROP TABLE IF EXISTS `joomla_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_messages`
--

DROP TABLE IF EXISTS `joomla_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_messages_cfg`
--

DROP TABLE IF EXISTS `joomla_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_modules`
--

DROP TABLE IF EXISTS `joomla_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_modules_menu`
--

DROP TABLE IF EXISTS `joomla_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_newsfeeds`
--

DROP TABLE IF EXISTS `joomla_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_overrider`
--

DROP TABLE IF EXISTS `joomla_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_phocadownload_logging`
--

DROP TABLE IF EXISTS `joomla_phocadownload_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_phocadownload_logging` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_postinstall_messages`
--

DROP TABLE IF EXISTS `joomla_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_redirect_links`
--

DROP TABLE IF EXISTS `joomla_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_calculations`
--

DROP TABLE IF EXISTS `joomla_rsform_calculations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_calculations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_component_type_fields`
--

DROP TABLE IF EXISTS `joomla_rsform_component_type_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_component_types`
--

DROP TABLE IF EXISTS `joomla_rsform_component_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_components`
--

DROP TABLE IF EXISTS `joomla_rsform_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=1880 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_condition_details`
--

DROP TABLE IF EXISTS `joomla_rsform_condition_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_conditions`
--

DROP TABLE IF EXISTS `joomla_rsform_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_config`
--

DROP TABLE IF EXISTS `joomla_rsform_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_directory`
--

DROP TABLE IF EXISTS `joomla_rsform_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_directory` (
  `formId` int(11) NOT NULL,
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_directory_fields`
--

DROP TABLE IF EXISTS `joomla_rsform_directory_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_emails`
--

DROP TABLE IF EXISTS `joomla_rsform_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_forms`
--

DROP TABLE IF EXISTS `joomla_rsform_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_mappings`
--

DROP TABLE IF EXISTS `joomla_rsform_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_pdfs`
--

DROP TABLE IF EXISTS `joomla_rsform_pdfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_pdfs` (
  `form_id` int(11) NOT NULL,
  `useremail_send` tinyint(1) NOT NULL,
  `useremail_filename` varchar(255) NOT NULL,
  `useremail_php` text NOT NULL,
  `useremail_layout` text NOT NULL,
  `adminemail_send` tinyint(1) NOT NULL,
  `adminemail_filename` varchar(255) NOT NULL,
  `adminemail_php` text NOT NULL,
  `adminemail_layout` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_posts`
--

DROP TABLE IF EXISTS `joomla_rsform_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_properties`
--

DROP TABLE IF EXISTS `joomla_rsform_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=13657 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_submission_columns`
--

DROP TABLE IF EXISTS `joomla_rsform_submission_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_submission_values`
--

DROP TABLE IF EXISTS `joomla_rsform_submission_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM AUTO_INCREMENT=6125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_submissions`
--

DROP TABLE IF EXISTS `joomla_rsform_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_rsform_translations`
--

DROP TABLE IF EXISTS `joomla_rsform_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_schemas`
--

DROP TABLE IF EXISTS `joomla_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_session`
--

DROP TABLE IF EXISTS `joomla_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_sh_config`
--

DROP TABLE IF EXISTS `joomla_sh_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_sh_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_sh_ldap_config`
--

DROP TABLE IF EXISTS `joomla_sh_ldap_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_sh_ldap_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  `params` text NOT NULL,
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_tags`
--

DROP TABLE IF EXISTS `joomla_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_template_styles`
--

DROP TABLE IF EXISTS `joomla_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_ucm_base`
--

DROP TABLE IF EXISTS `joomla_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_ucm_content`
--

DROP TABLE IF EXISTS `joomla_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_ucm_history`
--

DROP TABLE IF EXISTS `joomla_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_update_sites`
--

DROP TABLE IF EXISTS `joomla_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_update_sites_extensions`
--

DROP TABLE IF EXISTS `joomla_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_updates`
--

DROP TABLE IF EXISTS `joomla_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_user_keys`
--

DROP TABLE IF EXISTS `joomla_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_user_notes`
--

DROP TABLE IF EXISTS `joomla_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_user_profiles`
--

DROP TABLE IF EXISTS `joomla_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_user_usergroup_map`
--

DROP TABLE IF EXISTS `joomla_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_usergroups`
--

DROP TABLE IF EXISTS `joomla_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_users`
--

DROP TABLE IF EXISTS `joomla_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_viewlevels`
--

DROP TABLE IF EXISTS `joomla_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joomla_weblinks`
--

DROP TABLE IF EXISTS `joomla_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joomla_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-10 14:02:41
