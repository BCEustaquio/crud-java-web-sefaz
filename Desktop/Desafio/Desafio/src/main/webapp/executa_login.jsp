<%-- 
    Document   : executa_login
    Created on : 15/11/2019, 17:39:04
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>

        <%
            try{

                UsuarioDAO usud = new UsuarioDAO();
                if(request.getParameter("email").equals("") || request.getParameter("senha").equals("")){
                    response.sendRedirect("login.jsp");
                    
                }else if(usud.validar(request.getParameter("email"),request.getParameter("senha"))){
                    
                   response.sendRedirect("index.jsp");
                }else{
                    response.sendRedirect("login.jsp?val=false");
                }  
             
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " + erro );
            }
        %>
    </body>
</html>
