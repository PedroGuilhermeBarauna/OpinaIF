<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
  <title>login</title>
</head>

<style type="text/css">
  body {
    background-color: white;
  }
  .ui.info.message {
    margin-top: 50px;
  }
  .column {
    max-width: 400px;
  }
  .ui.small.circular.image{
    max-width: 100px;
    max-height: 150px;
  }
</style>

</head>
<body>
  <div class="ui middle aligned center aligned grid">
    <div class="column">
      <div class="ui info message">
        <h2>Exponha sua opnião, diga o que você pensa; e participe na construção de um IFC melhor para todos !</h2>
      </div>
      <form class="ui form" action="">
        <div class="ui stacked segment">
          <div class="field">
            <div class="ui left icon input">
              <i class="user icon"></i>
              <input type="text" name="login" placeholder="Login">
            </div>
          </div>
          <div class="field">
            <div class="ui left icon input">
              <i class="lock icon"></i>
              <input type="password" name="senha" placeholder="Senha">
            </div>
          </div>
          <input type="submit" name="enviar" value="Entrar" class="ui fluid large green submit button">
        </div>
      </form>
      <div class="ui message">
        Não possui conta? <a href="cadastro.php">Cadastre-se</a>
      </div>
      <center><img class="ui small circular image" src="../img/Logo_IFC.png"> </center>
      <br>
    </div>
  </div>
</body>
</html>