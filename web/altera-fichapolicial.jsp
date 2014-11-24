<%-- 
    Document   : cadastra-fichapolicial
    Created on : 11/11/2014, 08:50:52
    Author     : Carina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteracao</title>
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
                        <li class="active"><a href="mvc?logica=ListaMelianteLogica">Lista de meliantes</a></li>
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


                <h1>Insira todos os dados do meliante para alterar<br>
                    <small>*todos os campos são obrigatórios</small></h1>

                <div class="col-sm-6">                    
                    <form action ="mvc?logica=AdicionaMelianteLogica" method="POST">

                        <table style="border: 2px solid transparent;">
                            <tr>
                                <td>Id:<br><br></td>
                                <td><input type ="text" name ="id" value="${id}"/><br><br></td>
                            </tr>
                            <tr>
                                <td>Nome:<br><br></td>
                                <td><input type ="text" name ="nome" /><br><br></td>
                            </tr>
                            <tr>
                                <td>CPF:<br><br></td>
                                <td><input type ="text" name ="cpf" /><br><br></td>
                            </tr>
                            <tr>
                                <td>Endereço:<br><br></td>
                                <td><input type ="text" name ="endereco" /><br><br></td>
                            </tr>
                            <tr>
                                <td>Delito:<br><br></td>
                                <td><input type ="text" name ="delito" /><br><br></td>
                            </tr>
                            <tr>
                                <td>Data:&nbsp;<br><br></td>
                                <td><input type ="text" name ="data" /><br><br></td>
                            </tr>
                        </table>  
                </div>
                <div class="col-sm-6">
                    
                    <table style="border: 2px solid transparent;">
                        <tr>
                            <td>Hora: <br><br></td>
                            <td><input type ="text" name ="hora" /><br><br></td>
                        </tr>
                        <tr>
                            <td>Local:<br><br></td>
                            <td><input type ="text" name ="local" /><br><br></td>
                        </tr>
                        <tr>
                            <td>Estado:<br><br></td>
                            <td><input type ="text" name ="estado" /> (preso, solto ou foragido)<br><br></td>
                        </tr>
                        <tr>
                            <td>Foto:<br><br></td>
                            <td><input type ="text" name ="foto" /> insira link<br><br></td>
                        </tr>
                        <tr><td> </td>
                            <td><input type ="submit" value ="Adicionar" /></td>
                        </tr>
                        <tr><td>&nbsp; </td>
                            <td>&nbsp; </td>
                        </tr>

                    </table>                         
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>