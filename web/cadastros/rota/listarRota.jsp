<%-- 
    Document   : listarRota
    Created on : 18/06/2021, 17:55:27
    Author     : fbrcmmelo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>

<html> 
    <head>
        <c:import url="/head.jsp"></c:import>
            <title>Rappidinho - Rotas</title>
        </head>

        <body>

            <!--Corpo da pagina-->
            <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
                 data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">

                <!--CabeÃ§alho-->
            <c:import url="/cabecalho.jsp"></c:import>

                <!--Menu-->
            <c:import url="/menu.jsp"></c:import>

                <!--Conteudo-->
                <div class="page-wrapper">
                    <!--taca os bag aqui dentro-->

                    <div class="row justify-content-center">
                        <div class="col-md-11 col-lg-11 col-sm-12">
                            <div class="white-box">
                                <div class="d-md-flex mb-3">

                                    <h3 class="box-title mb-0">Rotas Cadastradas Recentemente <a href="${pageContext.request.contextPath}/DadosRota" class="btn btn-danger text-white">
                                        <i class="fa fa-plus" aria-hidden="true"></i> Rota
                                        
                                    </a>
                                </h3>
                                        
                            </div>
                             <h4><p align="center"><b>${mensagem}</b></p></h4>           
                                        
                            <div class="table-responsive">
                                <table class="table no-wrap">
                                    <thead>
                                    <th colspan="11" align="center">Rotas</th>
                                    <tr>
                                        <th class="border-top-0">ID</th>
                                        <th class="border-top-0">Nome Rota</th>
                                        <th class="border-top-0">Latitude Saída Rota</th>
                                        <th class="border-top-0">Longitude Saída Rota</th>
                                        <th class="border-top-0">Latitude Chegada Rota</th>
                                        <th class="border-top-0">Longitude Chegada Rota</th>
                                        <th class="border-top-0">Status</th>
                                        <th class="border-top-0">ID Pessoa</th>
                                        <th class="border-top-0">Nome Pessoa</th>
                                        <th class="border-top-0" colspan="2">Editar</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                <c:forEach var="rota" items="${rotas}">
                                                    <tr>    
                                                        <td>${rota.idRota}</td>
                                                        <td>${rota.nomeRota}</td>
                                                        <td>${rota.latSaidaRota}</td>
                                                        <td>${rota.lngSaidaRota}</td>
                                                        <td>${rota.latChegadaRota}</td> 
                                                        <td>${rota.lngChegadaRota}</td> 
                                                        <td>${rota.statusRota}</td> 
                                                        <td>${rota.pessoa.idPessoa}</td> 
                                                        <td>${rota.pessoa.nomePessoa}</td>  
                                                        <td><a href="${pageContext.request.contextPath}/CarregarRota?idrota=${rota.idRota}">Alterar</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/ExcluirRota?idrota=${rota.idRota}">Excluir</a></td>
                                                    </tr>
                                                </c:forEach>                                
                                            </c:when>
                                        </c:choose>
                                                    
                                        <c:forEach var="rota" items="${rotas}">
                                            <c:choose>
                                                <c:when test="${rota.pessoa.nomePessoa == pessoa.nomePessoa}">
                                                    <tr>    
                                                        <td>${rota.idRota}</td>
                                                        <td>${rota.nomeRota}</td>
                                                        <td>${rota.latSaidaRota}</td>
                                                        <td>${rota.lngSaidaRota}</td>
                                                        <td>${rota.latChegadaRota}</td> 
                                                        <td>${rota.lngChegadaRota}</td> 
                                                        <td>${rota.statusRota}</td> 
                                                        <td>${rota.pessoa.idPessoa}</td> 
                                                        <td>${rota.pessoa.nomePessoa}</td>  
                                                        <td><a href="${pageContext.request.contextPath}/CarregarRota?idrota=${rota.idRota}">Alterar</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/ExcluirRota?idrota=${rota.idRota}">Excluir</a></td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>

                                        </c:forEach>
                                    </tbody>
                                </table>
                                 
                            </div>
                        </div>
                    </div>
                </div>

                <!--Rodape-->
                <c:import url="/footer.jsp"></c:import>
                </div>
            </div>
            <!--Import dos scripts-->
        <c:import url="/scripts.jsp"></c:import>
    </body>
</html>