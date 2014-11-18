
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
        <title>Lista Foragidos</title>
    </head>
    <body>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <div class="container">
            <div class="col-sm-offset-1 col-sm-10">
                <div class="jumbotron">                   
                    <h1>Delegacia de Townsville</h1>
                </div>
            </div>
            <div class="col-sm-offset-1 col-sm-10">
                <h1>Foragidos</h1>

                <table class="table table-hover">                  
                    <c:forEach var ="meliante" items ="${meliante}">
                        <tr>                            
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
    </body>
</html>

