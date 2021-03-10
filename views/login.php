<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
    <title>login</title>
  </head>

  <style type="text/css">
  body {
  background-color: #DADADA;
  }

  .column {
  max-width: 400px;
  }
  </style>

  </head>

  <body>
    <div class="ui middle aligned center aligned grid">
      <div class="column">
        <h2 class="ui teal image header">
        <div class="ui info message">
            <label> De a sua opnião e participe na construção de um IFC melhor !</label>
        </div>
        <div class="content">
          Faça login com a sua conta
        </div>
        </h2>
        <form class="ui large form" action="../controller/ControladorUser.php?">
          <div class="ui stacked segment">
            <div class="field">
              <div class="ui left icon input">
                <i class="user icon"></i>
                <input type="text" name="login" placeholder="login">
              </div>
            </div>
            <div class="field">
              <div class="ui left icon input">
                <i class="lock icon"></i>
                <input type="password" name="senha" placeholder="senha">
              </div>
            </div>
            <input type="submit" name="enviar" value="Entrar" class="ui fluid large teal submit button" onClick="Nova()">
          </div>
          <div class="ui error message"></div>
        </form>
        <div class="ui message">
          Não possui conta? <a href="cadastro.php">Cadastre-se</a>
        </div>
        <br><br><br><br><br>
        <center><img class="ui small circular image" src="Logo_IFC.png"> </center>
        <br>
      </div>
    </div>
  </body>
</html>