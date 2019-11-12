<%-- 
    Document   : deletar_telefones
    Created on : 12/11/2019, 16:28:26
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
         <form action="executa_excluir_telefones.jsp" method="post">
            <h3>Excluir Telefones</h3>
            
            <label>Id do Telefone: </label><br>
            <input type="text" name="id_usuario" value="<%=request.getParameter("id_tel")%>" disabled> </input>
            <br><br>
            
            <label>Nome do Usuário: </label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>" disabled> </input>
            <br><br>
            
            <label>DDD: </label><br>
            <input type="text" name="ddd" value="<%=request.getParameter("ddd")%>" disabled></input>
            <br><br>
                
            <label>Numero: </label><br>
            <input type="text" name="numero" value="<%=request.getParameter("numero")%>"disabled></input>
            <br><br>
            
            <label>tipo </label><br>
            <input type="text" name="tipo" value="<%=request.getParameter("tipo")%>"disabled></input>
            <br><br>
                
            
            <button type="submit" >Excluir</button>

        </form>
    </body>
</html>
