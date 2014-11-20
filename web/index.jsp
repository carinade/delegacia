<%-- 
    Document   : index
    Created on : 10/11/2014, 15:05:55
    Author     : Carina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delegacia</title>
    </head>
    <body>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Home</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Delegacia</a></li>
                        <li><a href="cadastra-fichapolicial.jsp">Cadastro</a></li>
                        <li><a href="mvc?logica=ListaMelianteLogica">Lista de meliantes</a></li>
                        <li><a href="mvc?logica=ListaParaRemoverMelianteLogica">Remoção</a></li>
                        <li><a href="mvc?logica=ListaForagidosLogica">Foragidos</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron">                   
            <h1>Delegacia de Townsville<br>
            <small>Ambinte de controle de meliantes</small>
            </h1>
        </div>
        <div class="container">            
            <div class="col-sm-offset-1 col-sm-10">
                <div class="btn-group btn-group-justified">
                    <div class="btn-group">
                        <form method="post" action="cadastra-fichapolicial.jsp">
                            <button type="submit" class="btn btn-default">Cadastro</button>
                        </form>
                    </div>
                    <div class="btn-group">
                        <form method="post" action="mvc?logica=ListaMelianteLogica">
                            <button type="submit" class="btn btn-default">Lista de meliantes</button>
                        </form>
                    </div>
                    <div class="btn-group">
                        <form method="post" action="mvc?logica=ListaParaRemoverMelianteLogica">
                            <button type="submit" class="btn btn-default">Remoção</button>
                        </form>
                    </div>
                    <div class="btn-group">
                        <form method="post" action="mvc?logica=ListaForagidosLogica">
                            <button type="submit" class="btn btn-default">Foragidos</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>
<!--
    -Sistema web no padrao mvc
    -Administra a ficha policial de uma delgacia
    -id(AI)/nome/cpf/endereço/tipo de delito/data/hora/local do crime
    -tabela fichapolicial
    -Servlet
    -Logicas necessárias
    -JSP: index.jsp e cadastra-fichapolicial.jsp
-->
