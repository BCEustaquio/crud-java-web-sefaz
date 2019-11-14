
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="Model.Usuario"%>
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
            <h1>Usuarios</h1><br>
            <h3>Pesquisar por nome</h3>
            <form action="index.jsp" method="post">
                <div class="form-group">
                    <label>Nome: </label><br>
                    <input type="text" class="form-control" name="nome">
                </div>
                <div class="form-group">
                    <input type="submit"  class="btn btn-block btn-lg btn-primary" value="Procurar" name="enviar"></button>
                </div>
            </form>

            <%

                try {
                    out.print("<table class='table table-striped'>");
                    out.print("<thead class='thead-dark'>");
                    out.print("<tr>");
                    out.print("<th>Nome</th><th>Email</th><th>Senha</th><th>Telefones</th><th>Editar</th><th>Excluir</th>");
                    out.print("</tr>");
                    out.print("</thead>");
                    out.print("<tbody>");
                    UsuarioDAO usud = new UsuarioDAO();
                    if (request.getParameter("nome") == "" || request.getParameter("nome") == null) {

                        ArrayList<Usuario> lista = usud.listarTodos();
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getNome() + "</td>");
                            out.print("<td>" + lista.get(num).getEmail() + "</td>");
                            out.print("<td>" + lista.get(num).getSenha() + "</td>");
                            out.print("<td><a class='btn btn-primary' href='inserir_telefones.jsp?id_usuario=" + lista.get(num).getId_usuario() + "&nome =" + lista.get(num).getNome() + "&email = " + lista.get(num).getEmail() + "&senha = " + lista.get(num).getSenha() + "'>Telefones</td>");
                            out.print("<td><a class='btn btn-primary' href='alterar_usuario.jsp?id_usuario=" + lista.get(num).getId_usuario() + "&nome =" + lista.get(num).getNome() + "&email = " + lista.get(num).getEmail() + "&senha = " + lista.get(num).getSenha() + "'>Editar</td>");
                            out.print("<td><a class='btn btn-primary' href='executa_excluir_Usuario.jsp?id_usuario=" + lista.get(num).getId_usuario()+ "'>Excluir</td>");
                            out.print("</tr>");
                            
                            
                        }
                    } else {
                        ArrayList<Usuario> lista = usud.listarPorNome(request.getParameter("nome"));
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getNome() + "</td>");
                            out.print("<td>" + lista.get(num).getEmail() + "</td>");
                            out.print("<td>" + lista.get(num).getSenha() + "</td>");
                            out.print("<td><a class='btn btn-primary' href='inserir_telefones.jsp?id_usuario=" + lista.get(num).getId_usuario() + "&nome =" + lista.get(num).getNome() + "&email = " + lista.get(num).getEmail() + "&senha = " + lista.get(num).getSenha() + "'>Telefones</td>");
                            out.print("<td><a class='btn btn-primary' href='alterar_usuario.jsp?id_usuario=" + lista.get(num).getId_usuario() + "&nome =" + lista.get(num).getNome() + "&email = " + lista.get(num).getEmail() + "&senha = " + lista.get(num).getSenha() + "'>Editar</td>");
                            out.print("<td><a class='btn btn-primary' href='executa_excluir_Usuario.jsp?id_usuario=" + lista.get(num).getId_usuario() + "'>Excluir</td>");
                            out.print("</tr>");
                           
                            
                        }

                    }
                   
                    
                    out.print("</table>");

                } catch (Exception erro) {
                    throw new RuntimeException("Erro 15:" + erro);

                }
            %>

            <a class ="btn btn-primary btn-lg btn-block" href="inserir_usuario.jsp">Novo usuário</a>
        </div>

        <footer>
            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>
        </footer>
    </body>
</html>
