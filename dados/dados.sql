  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  SET AUTOCOMMIT = 0;
  START TRANSACTION;
  SET time_zone = "+00:00";

  CREATE TABLE `forms` (
    `dataFim` date DEFAULT NULL,
    `dataInicio` date DEFAULT NULL,
    `idForms` int(11) NOT NULL,
    `descForms` varchar(350) DEFAULT NULL,
    `idUser` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;



  CREATE TABLE `perguntas` (
    `idPerguntas` int(11) NOT NULL,
    `perguntas` varchar(350) DEFAULT NULL,
    `idForms` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


  CREATE TABLE `responde` (
    `idForms` int(11) DEFAULT NULL,
    `idUser` int(11) DEFAULT NULL,
    `data` date DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;



  INSERT INTO `responde` (`idForms`, `idUser`, `data`) VALUES
  (2, 13, '2018-11-15'),
  (1, 13, '2018-11-15'),
  (4, 13, '2018-11-22');



  CREATE TABLE `respostas` (
    `idResposta` int(11) NOT NULL,
    `textoResposta` varchar(350) DEFAULT NULL,
    `idPerguntas` int(11) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  CREATE TABLE `tipuser` (
    `idTipUser` int(11) NOT NULL,
    `tipUser` tinyint(1) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


  INSERT INTO `tipuser` (`idTipUser`, `tipUser`) VALUES
  (1, 0),
  (2, 1),
  (3, 2);

  -- --------------------------------------------------------


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


  ALTER TABLE `forms`
    ADD PRIMARY KEY (`idForms`),
    ADD KEY `idUser` (`idUser`);


  ALTER TABLE `perguntas`
    ADD PRIMARY KEY (`idPerguntas`),
    ADD KEY `idForms` (`idForms`);


  ALTER TABLE `responde`
    ADD KEY `idForms` (`idForms`),
    ADD KEY `idUser` (`idUser`);


  ALTER TABLE `respostas`
    ADD PRIMARY KEY (`idResposta`),
    ADD KEY `idPerguntas` (`idPerguntas`);


  ALTER TABLE `tipuser`
    ADD PRIMARY KEY (`idTipUser`);


  ALTER TABLE `user`
    ADD PRIMARY KEY (`idUser`),
    ADD KEY `idTipUser` (`idTipUser`);


  ALTER TABLE `forms`
    MODIFY `idForms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


  ALTER TABLE `perguntas`
    MODIFY `idPerguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


  ALTER TABLE `respostas`
    MODIFY `idResposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

  ALTER TABLE `tipuser`
    MODIFY `idTipUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


  ALTER TABLE `user`
    MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

  ALTER TABLE `forms`
    ADD CONSTRAINT `forms_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);


  ALTER TABLE `perguntas`
    ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`idForms`) REFERENCES `forms` (`idForms`);


  ALTER TABLE `responde`
    ADD CONSTRAINT `responde_ibfk_1` FOREIGN KEY (`idForms`) REFERENCES `forms` (`idForms`),
    ADD CONSTRAINT `responde_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);


  ALTER TABLE `respostas`
    ADD CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`idPerguntas`) REFERENCES `perguntas` (`idPerguntas`);

  ALTER TABLE `user`
    ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idTipUser`) REFERENCES `tipuser` (`idTipUser`);
  COMMIT;