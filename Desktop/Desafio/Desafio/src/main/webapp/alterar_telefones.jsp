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
                  </div>
                    <div>                     
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
