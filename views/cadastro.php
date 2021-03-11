<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="../semantic/semantic.css">
    <title>Cadastro</title>

    <style type="text/css">
        body {
            background-color: #DADADA;
        }
        body .grid {
            height: 100%;
        }
        .column {
            max-width: 450px;
        }
    </style>
    
</head>
<body>

<div class="ui middle aligned center aligned grid">
    <div class="column">
        <div class="ui icon message">
            <i class="notched circle loading icon"></i>
            <div class="content">
                <p>Preencha as informações para se cadastrar</p>
            </div>
        </div>  

        <form class="ui form" method="post" action="">
            <div class="field">
                <div class="ui left icon input">
                    <i class="keyboard icon"></i>
                    <input type="text" name="nome" placeholder="Nome">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="user icon"></i>
                    <input type="text" name="login" placeholder="Login">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="address card icon"></i>
                    <input type="text" name="cpf" placeholder="CPF">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="barcode icon"></i>
                    <input type="text" name="numMatricula" placeholder="Número de matricula">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="at icon"></i>
                    <input type="text" name="email" placeholder="Email">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="lock icon"></i>
                    <input type="text" name="senha" placeholder="Senha">
                </div>
            </div>

            <div class="field">
                <div class="ui left icon input">
                    <i class="lock icon"></i>
                    <input type="text" name="confirmarSenha" placeholder="Confirmar Senha">
                </div>
            </div>
            <button class="ui button teal" type="submit" >Cadastrar </button>
        </form>
    
        <div class="ui message">
            Já possui cadastro ? <a href="login.php">login</a>
        </div>
    </div>
</div>
</body>
</html>