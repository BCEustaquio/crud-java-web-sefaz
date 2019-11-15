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
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Desafio Sefaz</title>
    </head>
    <body>
        <div class="container-fluid">
        <form action="executa_alterar_telefones.jsp" method="post">
            <h3>Alterar Telefones</h3>

            <input type="text" name="id_tel" value="<%=request.getParameter("id_tel")%>" hidden></input>
            <input type="text" name="id_usuario" value="<%=request.getParameter("id_usuario")%>" hidden></input>
            
            <div class="row">
                <div class="col-3">
                    <div class="form-group">
                        <label>DDD: </label><br>
                        <input class="form-control" type="text" name="ddd" value="<%=request.getParameter("ddd")%>"></input>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label>Número: </label><br>
                        <input class="form-control" type="text" name="numero" value="<%=request.getParameter("numero")%>"></input>
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>Tipo: </label><br>
                        <select class="form-control"name="tipo">
                            <option value="Fixo">Fixo</option>
                            <option value="Celular">Celular</option>
                         </select> 
                    </div>
                </div>
            
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" >Alterar</button>

        </form>
            </div>
        <footer>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
