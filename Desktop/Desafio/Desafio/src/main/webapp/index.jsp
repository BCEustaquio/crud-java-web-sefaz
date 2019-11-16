<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="Model.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Desafio Sefaz</title>

    </head>
    <body>
        <div class="container-fluid" style="background-image: url('img/cidade.jpg');
             background-size: 100%;
             min-height: 617px;
             padding: 75px 0 0 0;">

            <div class="row no-gutters efeito">
                <div class="col-4">


                </div>
                <div class="col-4">

                    <form class="form-signin" action="executa_login.jsp" method="post">
                        <h1 class="h3 mb-3 font-weight-normal" style="color: white; text-shadow:1px 1px 1px #111111; text-align: center;">Vamos Logar ?</h1>
                        <div class="form-group">
                            <label for="inputEmail" class="sr-only">Endereço de Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Email" required="" autofocus="">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="sr-only">Senha</label>
                            <input type="password" name="senha" class="form-control" placeholder="Senha" required="">
                        </div>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Logar</button>

                    </form>

                    <div style="margin-top:20px; text-align: center; padding-top:30px;">
                        <a href="login_novo_usuario.jsp" class="btn btn-lg btn-outline-light">Criar Conta</a>
                    </div>

                </div>

                <div class="col-4" style="text-align: center;">


                    <%
                        try {

                            if (request.getParameter("val") == "" || request.getParameter("val") == null) {
                                out.print("<label style='color:white; padding-top: 80px;' hidden>Email e/ou Senha inválidos</label>");
                            } else {
                                out.print("<label style='color:white; padding-top: 80px;' >Email e/ou Senha inválidos</label>");
                            }
                        } catch (Exception erro) {
                            throw new RuntimeException("Erro 18:" + erro);

                        }

                    %>
                </div>
            </div>

        </div>
        <footer>

            Desenvolvido por BCE Version 1.0

            <script src="js/jquery.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>

        </footer>

    </body>
</html>
