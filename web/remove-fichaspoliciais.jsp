<%-- 
    Document   : remove-fichapolicial
    Created on : 13/11/2014, 08:06:18
    Author     : Carina
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="negocios.MelianteDao"%>
<%@page import="negocios.Meliante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remoção de Meliantes</title>
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
                        <li><a href="index.jsp">Delegacia</a></li>
                        <li><a href="cadastra-fichapolicial.jsp">Cadastro</a></li>
                        <li><a href="mvc?logica=ListaMelianteLogica">Lista de meliantes</a></li>
                        <li class="active"><a href="mvc?logica=ListaParaRemoverMelianteLogica">Remoção</a></li>
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
                <h1>Remoção de Meliantes</h1>
                
                <table class="table table-hover">                  
                    <c:forEach var ="meliante" items ="${meliante}">
                        <tr>                            
                            <td><a href = "mvc?logica=RemoveMelianteLogica&id=${meliante.id}">${meliante.id} - Remover</a></td>
                            <td>${meliante.nome}<br><br></td >
                            <td>${meliante.cpf}<br><br></td>
                            <td>${meliante.endereco}&nbsp;&nbsp;<br><br></td>
                            <td>${meliante.delito}&nbsp;&nbsp;<br><br></td>
                            <td><fmt:formatDate value="${meliante.data.time}" pattern="dd/MM/yyyy"/><br><br></td>
                            <td>${meliante.hora}&nbsp;&nbsp;<br><br></td>
                            <td>${meliante.local}&nbsp;&nbsp;<br><br></td>   
                            <td>${meliante.estado}&nbsp;&nbsp;<br><br></td> 
                            <td><img src="${meliante.foto}" style="height:90px;"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
