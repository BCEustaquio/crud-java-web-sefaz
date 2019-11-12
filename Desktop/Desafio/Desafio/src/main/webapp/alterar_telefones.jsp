<%-- 
    Document   : alterar_telefones
    Created on : 12/11/2019, 16:27:24
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
        <form action="executa_alterar_telefones.jsp" method="post">
            <h3>Alterar Telefones</h3>
            
            <label>Id do telefone:  </label><br>
            <input type="text" name="id_tel" value="<%=request.getParameter("id_tel")%>" disabled></input>
            <br><br>
            
            <label>Id do usuário:  </label><br>
            <input type="text" name="id_usuario" value="<%=request.getParameter("id_usuario")%>"></input>
            <br><br>
                
            <label>DDD: </label><br>
            <input type="text" name="ddd" value="<%=request.getParameter("ddd")%>"></input>
            <br><br>
                
            <label>Número: </label><br>
            <input type="password" name="numero" value="<%=request.getParameter("numero")%>"></input>
            <br><br>
            
            <label>Tipo: </label><br>
            <select id="tipo">
                <option value="fixo">Fixo</option>
                <option value="celular">Celular</option>
            </select> 
            
            <br><br>
            <button type="submit" >Alterar</button>

        </form>
    </body>
</html>
