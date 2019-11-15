<%-- 
    Document   : login_novo_usuario
    Created on : 15/11/2019, 15:26:15
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Desafio Sefaz</title>
    </head>
    <body>
        <div class="container-fluid">
            <form action="executa_login_novo_usuario.jsp" method="post">
                <h3>Cadastro de Usuários</h3>
                <div class="form-group">
                    <label>Nome: </label><br>
                    <input class="form-control" type="text" name="nome"></input>
                </div>
                <div class="form-group">
                    <label>Email: </label><br>
                    <input class="form-control" type="text" name="email"></input>
                </div>
                <div class="form-group">
                    <label>Senha: </label><br>
                    <input class="form-control" type="text" name="senha"></input>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Salvar</button>

            </form>
        </div>
        <footer>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
