<%-- 
    Document   : incluir_telefones
    Created on : 12/11/2019, 16:27:07
    Author     : BCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.TelefonesDAO"%>
<%@page import="Model.Telefones"%>
<%@page import="java.util.ArrayList"%>
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
                    <input class="form-control" type="text" name="id_usuario" value="<%=request.getParameter("id_usuario")%>" hidden>
                </div>
                <div class="row">
                    <div class="col-3">
               
                <div class="form-group">
                    <label>DDD: </label>
                    <input class = "form-control" type="text" name="ddd"></input>
                </div>
                </div>
                <div class="col-6">
                <div class="form-group">
                    <label>Número: </label><br>
                    <input class= "form-control" type="text" name="numero"></input>
                </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>Tipo: </label><br>
                        <select class="form-control" name="tipo">
                            <option value="Fixo">Fixo</option>
                            <option value="Celular">Celular</option>
                        </select> 
                    </div>
                </div>

                    <button type="submit" class="btn btn-primary btn-lg btn-block">Salvar</button>
                </div>
            </form>
       </div>
                
                 <%

                try {
                    out.print("<table class='table table-striped'style='margin-top:20px'>");
                    out.print("<thead class='thead-dark'>");
                    out.print("<tr>");
                    out.print("<th>DDD</th><th>Número</th><th>Tipo</th><th>Editar</th><th>Excluir</th>");
                    out.print("</tr>");
                    out.print("</thead>");
                    out.print("<tbody>");
                    TelefonesDAO teld = new TelefonesDAO();
                    ArrayList<Telefones> lista = teld.listarTodos(Integer.parseInt(request.getParameter("id_usuario")));
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getDdd() + "</td>");
                            out.print("<td>" + lista.get(num).getNumero() + "</td>");
                            out.print("<td>" + lista.get(num).getTipo() + "</td>");
                            out.print("<td><a class='btn btn-primary' href='alterar_telefones.jsp?id_tel=" + lista.get(num).getId_tel() +   "&id_usuario=" + lista.get(num).getId_usuario() + "&ddd=" + lista.get(num).getDdd() + "&numero=" + lista.get(num).getNumero() +"&tipo=" + lista.get(num).getTipo() + "'>Editar</td>");
                            out.print("<td><a class='btn btn-primary' href='executa_excluir_telefones.jsp?id_tel=" + lista.get(num).getId_tel() + "&id_usuario=" + lista.get(num).getId_usuario() + "'>Excluir</td>");
                            out.print("</tr>");
                          
                        }

                    out.print("</table>");

                } catch (Exception erro) {
                    throw new RuntimeException("Erro 15:" + erro);

                }
            %>
            
            <a class="btn btn-block btn-lg btn-primary" href="index.jsp"> Concluir</a>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
