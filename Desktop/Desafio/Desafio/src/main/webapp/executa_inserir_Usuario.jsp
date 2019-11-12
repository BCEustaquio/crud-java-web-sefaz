<%-- 
    Document   : executa_inserir
    Created on : 12/11/2019, 13:32:21
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Usuario"%>
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
                Usuario usuario = new Usuario();
                UsuarioDAO usud = new UsuarioDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("") || request.getParameter("senha").equals("")){
                    response.sendRedirect("index.jsp");
                    
                }else{
                    usuario.setNome(request.getParameter("nome"));
                    usuario.setEmail(request.getParameter("email"));
                    usuario.setSenha(request.getParameter("senha"));
                    usud.inserir(usuario);
                    response.sendRedirect("index.jsp");
                }        
             
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " + erro );
            }
        %>
    </body>
</html>
