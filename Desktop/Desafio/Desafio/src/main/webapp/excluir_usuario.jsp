<%-- 
    Document   : excluir_usuario
    Created on : 12/11/2019, 16:13:44
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
        <form action="executa_excluir_Usuario.jsp" method="post">
            <h3>Excluir Usuários</h3>
            
            <label>Id do Usuário: </label><br>
            <input type="text" name="id_usuario" value="<%=request.getParameter("id_usuario")%>" disabled> </input>
            <br><br>
            
            <label>Nome: </label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"></input>
            <br><br>
                
            <label>Email: </label><br>
            <input type="text" name="email" value="<%=request.getParameter("email")%>"></input>
            <br><br>
                
            
            <button type="submit" >Excluir</button>

        </form>
    </body>
  
</html>