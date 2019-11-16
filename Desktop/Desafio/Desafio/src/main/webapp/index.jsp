
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="Model.Usuario"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Desafio Sefaz</title>
        <style>
            .bd-placeholder-img {
              font-size: 1.125rem;
              text-anchor: middle;
              -webkit-user-select: none;
              -moz-user-select: none;
              -ms-user-select: none;
              user-select: none;
            }
      
            @media (min-width: 768px) {
              .bd-placeholder-img-lg {
                font-size: 3.5rem;
              }
            }
    </style>
      
      <style type="text/css">/* Chart.js */
    @-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}
    </style>
     
        
    </head>
    <body>
         <div class="container-fluid" style="min-height: 617px;">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar" style="padding: 20px 0 0 0 ;">
                  <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                      <li class="nav-item">
                        <a class="nav-link active" href="login.jsp">
                           
                            <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-log-out" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" width="24" height="24"><path d="M 9 21 H 5 a 2 2 0 0 1 -2 -2 V 5 a 2 2 0 0 1 2 -2 h 4" /><polyline points="16,17 21,12 16,7" /><line x1="21" y1="12" x2="9" y2="12" /></svg>

                          Deslogar <span class="sr-only">(current)</span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="index.jsp">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                          Lista Usuário
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="inserir_usuario.jsp">
                          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                          Novo Usuário
                        </a>
                      </li>
                    </ul>
                  </div>
                </nav>
                
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                
            <h1>Usuarios</h1><br>
            </div>
                    <div>
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
                            out.print("<td><a class='btn btn-primary' href='inserir_telefones.jsp?id_usuario=" + lista.get(num).getId_usuario() + "'>Telefones</td>");
                            out.print("<td><a class='btn btn-primary' href='alterar_usuario.jsp?id_usuario=" + lista.get(num).getId_usuario() + "&nome=" + lista.get(num).getNome() + "&email= " + lista.get(num).getEmail() + "&senha= " + lista.get(num).getSenha() + "'>Editar</td>");
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
                            out.print("<td><a class='btn btn-primary' href='inserir_telefones.jsp?id_usuario=" + lista.get(num).getId_usuario() + "'>Telefones</td>");
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

                 </div>
                               
                  </div>
                </main>
              </div>
            </div>

        <footer >

            Desenvolvido por BCE Version 1.0
            
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

        </footer>
    </body>
</html>
