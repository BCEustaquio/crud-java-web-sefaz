<%-- 
    Document   : executa_alterar
    Created on : 12/11/2019, 13:34:06
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
                Usuario usuario = new Usuario();
                UsuarioDAO usud = new UsuarioDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("") || request.getParameter("senha").equals("")){
                    response.sendRedirect("inicio.jsp");
                    
                }else{
                    usuario.setNome(request.getParameter("nome"));
                    usuario.setEmail(request.getParameter("email"));
                    usuario.setSenha(request.getParameter("senha"));
                    usuario.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
                    usud.alterar(usuario);
                    response.sendRedirect("inicio.jsp");
                }        
             
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 11: " + erro );
            }
        %>
    </body>
</html>
