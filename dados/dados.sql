  -- phpMyAdmin SQL Dump
  -- version 4.7.7
  -- https://www.phpmyadmin.net/
  --
  -- Host: 127.0.0.1
  -- Generation Time: 22-Nov-2018 às 21:42
  -- Versão do servidor: 10.1.30-MariaDB
  -- PHP Version: 7.2.2

  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  SET AUTOCOMMIT = 0;
  START TRANSACTION;
  SET time_zone = "+00:00";


  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;

  --
  -- Database: `projetotcc`
  --

  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `forms`
  --

  CREATE TABLE `forms` (
    `dataFim` date DEFAULT NULL,
    `dataInicio` date DEFAULT NULL,
    `idForms` int(11) NOT NULL,
    `descForms` varchar(350) DEFAULT NULL,
    `idUser` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `forms`
  --



  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `perguntas`
  --

  CREATE TABLE `perguntas` (
    `idPerguntas` int(11) NOT NULL,
    `perguntas` varchar(350) DEFAULT NULL,
    `idForms` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `perguntas`
  --


  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `responde`
  --

  CREATE TABLE `responde` (
    `idForms` int(11) DEFAULT NULL,
    `idUser` int(11) DEFAULT NULL,
    `data` date DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `responde`
  --

  INSERT INTO `responde` (`idForms`, `idUser`, `data`) VALUES
  (2, 13, '2018-11-15'),
  (1, 13, '2018-11-15'),
  (4, 13, '2018-11-22');

  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `respostas`
  --

  CREATE TABLE `respostas` (
    `idResposta` int(11) NOT NULL,
    `textoResposta` varchar(350) DEFAULT NULL,
    `idPerguntas` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `respostas`
  --



  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `tipuser`
  --

  CREATE TABLE `tipuser` (
    `idTipUser` int(11) NOT NULL,
    `tipUser` tinyint(1) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `tipuser`
  --

  INSERT INTO `tipuser` (`idTipUser`, `tipUser`) VALUES
  (1, 0),
  (2, 1),
  (3, 2);

  -- --------------------------------------------------------

  --
  -- Estrutura da tabela `user`
  --

  CREATE TABLE `user` (
    `cpf` varchar(20) DEFAULT NULL,
    `senha` varchar(15) DEFAULT NULL,
    `email` varchar(25) DEFAULT NULL,
    `nome` varchar(50) DEFAULT NULL,
    `idUser` int(11) NOT NULL,
    `numMatricula` int(11) DEFAULT NULL,
    `login` varchar(18) DEFAULT NULL,
    `idTipUser` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Extraindo dados da tabela `user`
  --


  --
  -- Indexes for dumped tables
  --

  --
  -- Indexes for table `forms`
  --
  ALTER TABLE `forms`
    ADD PRIMARY KEY (`idForms`),
    ADD KEY `idUser` (`idUser`);

  --
  -- Indexes for table `perguntas`
  --
  ALTER TABLE `perguntas`
    ADD PRIMARY KEY (`idPerguntas`),
    ADD KEY `idForms` (`idForms`);

  --
  -- Indexes for table `responde`
  --
  ALTER TABLE `responde`
    ADD KEY `idForms` (`idForms`),
    ADD KEY `idUser` (`idUser`);

  --
  -- Indexes for table `respostas`
  --
  ALTER TABLE `respostas`
    ADD PRIMARY KEY (`idResposta`),
    ADD KEY `idPerguntas` (`idPerguntas`);

  --
  -- Indexes for table `tipuser`
  --
  ALTER TABLE `tipuser`
    ADD PRIMARY KEY (`idTipUser`);

  --
  -- Indexes for table `user`
  --
  ALTER TABLE `user`
    ADD PRIMARY KEY (`idUser`),
    ADD KEY `idTipUser` (`idTipUser`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `forms`
  --
  ALTER TABLE `forms`
    MODIFY `idForms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

  --
  -- AUTO_INCREMENT for table `perguntas`
  --
  ALTER TABLE `perguntas`
    MODIFY `idPerguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

  --
  -- AUTO_INCREMENT for table `respostas`
  --
  ALTER TABLE `respostas`
    MODIFY `idResposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

  --
  -- AUTO_INCREMENT for table `tipuser`
  --
  ALTER TABLE `tipuser`
    MODIFY `idTipUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

  --
  -- AUTO_INCREMENT for table `user`
  --
  ALTER TABLE `user`
    MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

  --
  -- Constraints for dumped tables
  --

  --
  -- Limitadores para a tabela `forms`
  --
  ALTER TABLE `forms`
    ADD CONSTRAINT `forms_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

  --
  -- Limitadores para a tabela `perguntas`
  --
  ALTER TABLE `perguntas`
    ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`idForms`) REFERENCES `forms` (`idForms`);

  --
  -- Limitadores para a tabela `responde`
  --
  ALTER TABLE `responde`
    ADD CONSTRAINT `responde_ibfk_1` FOREIGN KEY (`idForms`) REFERENCES `forms` (`idForms`),
    ADD CONSTRAINT `responde_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

  --
  -- Limitadores para a tabela `respostas`
  --
  ALTER TABLE `respostas`
    ADD CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`idPerguntas`) REFERENCES `perguntas` (`idPerguntas`);

  --
  -- Limitadores para a tabela `user`
  --
  ALTER TABLE `user`
    ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idTipUser`) REFERENCES `tipuser` (`idTipUser`);
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
