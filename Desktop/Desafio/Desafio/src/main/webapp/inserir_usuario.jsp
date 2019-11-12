<%-- 
    Document   : inserir_usuario
    Created on : 12/11/2019, 15:32:23
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executa_inserir_Usuario.jsp" method="post">
            <h3>Cadastro de Usuários</h3>
            <label>Nome: </label><br>
            <input type="text" name="nome"></input>
            <br><br>
                
            <label>Email: </label><br>
            <input type="text" name="email"></input>
            <br><br>
                
            <label>Senha: </label><br>
            <input type="password" name="senha"></input>
            <br><br>
            <button type="submit" >Salvar</button>

        </form>
    </body>
</html>
