<%-- 
    Document   : incluir_telefones
    Created on : 12/11/2019, 16:27:07
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Desafio Sefaz</title>
    </head>
    <body>
        <div class="container-fluid">
            <form action="executa_inserir_telefones.jsp" method="post">
                  
                <h3>Cadastro de Telefones</h3>
                
                <div class="form-group">
                    <input class="form-control" type="text" value="<%=request.getParameter("id_usuario")%>" hidden>
                </div>
                <div class="form-group">
                    <label>DDD: </label>
                    <input class = "form-control" type="text" name="ddd"></input>
                </div>
                <div class="form-group">
                    <label>Número: </label><br>
                    <input class= "form-control" type="text" name="numero"></input>
                </div>
                <div class="form-group">
                <label>Tipo: </label><br>
                <select id="tipo">
                    <option value="fixo">Fixo</option>
                    <option value="celular">Celular</option>
                </select> 
                </div>

                <button type="submit" class="btn btn-primary btn-lg btn-block">Salvar</button>

            </form>
        </div>
        <footer>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
