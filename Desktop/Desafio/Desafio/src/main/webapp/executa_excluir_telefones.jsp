<%-- 
    Document   : executa_excluir_telefones
    Created on : 12/11/2019, 14:04:10
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.TelefonesDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        try{
            TelefonesDAO teld = new TelefonesDAO();
            teld.excluir(Integer.parseInt(request.getParameter("id_tel")));
            response.sendRedirect("index.jsp");
        }catch(Exception erro){
                throw new RuntimeException("Erro 15: " + erro );
            }

        
        %>
    </body>
</html>
