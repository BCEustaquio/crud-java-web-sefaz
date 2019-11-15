<%-- 
    Document   : alterar_usuario
    Created on : 12/11/2019, 16:06:29
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
        <form action="executa_alterar_Usuario.jsp" method="post">
            <h3>Alterar Usuários</h3>
            
            <input type="text" name="id_usuario" value="<%=request.getParameter("id_usuario")%>" hidden > </input>
            
            <div class="form-group">
                <label>Nome: </label>
                <input class="form-control" type="text" name="nome" value="<%=request.getParameter("nome")%>"></input>

            </div>
            <div class="form-group">
                <label>Email: </label>
                <input class="form-control" type="text" name="email" value="<%=request.getParameter("email")%>"></input>
            </div>
            
            <div class="form-group">
                <label>Senha: </label>
                <input class="form-control" type="text" name="senha" value="<%=request.getParameter("senha")%>"></input>
            </div>
            <button class="btn btn-lg btn-block btn-primary" type="submit" >Alterar</button>

        </form>
            </div>
        <footer>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
