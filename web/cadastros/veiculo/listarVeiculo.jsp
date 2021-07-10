<%-- 
    Document   : listarVeiculo
    Created on : 20/06/2021, 11:19:12
    Author     : fbrcmmelo
--%>

<%-- 
    Document   : listarProduto
    Created on : 20/06/2021, 12:36:33
    Author     : fbrcmmelo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <c:import url="/head.jsp"></c:import>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
            <title>Lista de Produtos</title>
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
                        <div class="col-md-10 col-lg-10 col-sm-12">
                            <div class="white-box">
                                <div class="d-md-flex mb-3">

                                    <h3 class="box-title mb-0">Veiculos cadastrados <a href="${pageContext.request.contextPath}/DadosVeiculo" class="btn btn-danger text-white">
                                        <i class="fa fa-plus" aria-hidden="true"></i> Veiculo
                                    </a>
                                </h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table no-wrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">ID</th>
                                            <th class="border-top-0">Nome do Veículo</th>
                                            <th class="border-top-0">Renavam do Veículo</th>
                                            <th class="border-top-0">Tipo de Veículo</th>
                                            <th class="border-top-0">ID</th>
                                            <th class="border-top-0">Nome Contratado</th>
                                                <c:choose>
                                                    <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                    <th class="border-top-0" colspan="2">Editar</th>
                                                    </c:when>
                                                </c:choose>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                <c:forEach var="veiculo" items="${veiculos}">
                                                    <tr>    
                                                        <td>${veiculo.idVeiculo}</td>
                                                        <td>${veiculo.nomeVeiculo}</td>
                                                        <td>${veiculo.renavamVeiculo}</td>
                                                        <td>${veiculo.tipoVeiculo}</td>
                                                        <td>${veiculo.pessoa.idPessoa}</td>
                                                        <td>${veiculo.pessoa.nomePessoa}</td>   
                                                        <td><a href="CarregarVeiculo?idveiculo=${veiculo.idVeiculo}">Alterar</a></td>     
                                                        <td><a href="ExcluirVeiculo?idveiculo=${veiculo.idVeiculo}">Excluir</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:when>
                                        </c:choose>
                                                    
                                        <c:forEach var="veiculo" items="${veiculos}">
                                            <c:choose>
                                                <c:when test="${veiculo.pessoa.nomePessoa == pessoa.nomePessoa}">
                                                    <tr>    
                                                        <td>${veiculo.idVeiculo}</td>
                                                        <td>${veiculo.nomeVeiculo}</td>
                                                        <td>${veiculo.renavamVeiculo}</td>
                                                        <td>${veiculo.tipoVeiculo}</td>
                                                        <td>${veiculo.pessoa.idPessoa}</td>
                                                        <td>${veiculo.pessoa.nomePessoa}</td>   
                                                        <c:choose>
                                                            <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                                <td><a href="CarregarVeiculo?idveiculo=${veiculo.idVeiculo}">Alterar</a></td>     
                                                                <td><a href="ExcluirVeiculo?idveiculo=${veiculo.idVeiculo}">Excluir</a></td>
                                                            </c:when>
                                                        </c:choose>
                                                    </tr>
                                                </c:when>
                                            </c:choose>



                                        </c:forEach>
                                    </tbody>

                                </table>
                                <h4><p align="center"><b>${mensagem}</b></p></h4> 
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