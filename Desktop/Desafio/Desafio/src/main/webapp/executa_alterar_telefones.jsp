<%-- 
    Document   : executa_alterar_telefones
    Created on : 12/11/2019, 14:03:35
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Telefones"%>
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
                Telefones telefones = new Telefones();
                TelefonesDAO teld = new TelefonesDAO();
                if(request.getParameter("id_usuario").equals("") ||
                    request.getParameter("ddd").equals("") || 
                    request.getParameter("numero").equals("") ||
                    request.getParameter("tipo").equals("") || 
                    request.getParameter("id_tel").equals("")){
                    
                     response.sendRedirect("inserir_telefones.jsp?id_usuario="+request.getParameter("id_usuario"));
                
                }else{
                    telefones.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
                    telefones.setDdd(Integer.parseInt(request.getParameter("ddd")));
                    telefones.setNumero(request.getParameter("numero"));
                    telefones.setTipo(request.getParameter("tipo"));
                    telefones.setId_tel(Integer.parseInt(request.getParameter("id_tel")));
                    teld.alterar(telefones);
                     response.sendRedirect("inserir_telefones.jsp?id_usuario="+request.getParameter("id_usuario"));
                
                }               
                              
            }catch(Exception erro){
                throw new RuntimeException("Erro 14: " + erro );
            }
        %>
    </body>
</html>
