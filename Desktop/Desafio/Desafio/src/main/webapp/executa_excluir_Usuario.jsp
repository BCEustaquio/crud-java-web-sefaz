<%-- 
    Document   : executa_excluir
    Created on : 12/11/2019, 13:34:30
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            UsuarioDAO usud = new UsuarioDAO();
            usud.excluir(Integer.parseInt(request.getParameter("id_usuario")));
        }catch(Exception erro){
                throw new RuntimeException("Erro 12: " + erro );
            }

        
        %>
    </body>
</html>
