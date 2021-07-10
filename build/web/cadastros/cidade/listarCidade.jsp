<%-- 
    Document   : listarAdministrador]
    Created on : 30/05/2021, 20:41:31
    Author     : fbrcmmelo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <c:import url="../../head.jsp"></c:import>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
            <title>Rappidinho - Lista de Cidades</title>
        </head>
        <body>

            <!--Corpo da pagina-->
            <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
                 data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">

                <!--Cabeçalho-->
            <c:import url="../../cabecalho.jsp"></c:import>

                <!--Menu-->
            <c:import url="../../menu.jsp"></c:import>

                <!--Conteudo-->
                <div class="page-wrapper">
                    <div class="row justify-content-center">
                        <!-- Titulo -->
                        <div class="col-xlg-4 col-lg-10 col-md-10">
                            <div class="white-box text-center">
                                <h3>Cidades</h3>
                                <h4>${mensagem}
                                <a href="${pageContext.request.contextPath}/DadosCidade" class="btn btn-danger text-white">
                                    <i class="fa fa-plus" aria-hidden="true"></i> Cadastrar Cidade
                                </a>
                            </h4>
                        </div>
                    </div>

                    <div class="col-xlg-10 col-lg-10 col-md-10">
                        <div class="white-box table-responsive">
                            <table class="table text-nowrap">
                                <thead>
                                    <tr>
                                        <th class="border-top-0">ID</th>
                                        <th class="border-top-0">Nome</th>
                                        <th class="border-top-0">Estado</th>
                                        <th class="border-top-0" colspan="2">Editar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cidade" items="${cidades}">
                                        <tr>    
                                            <td>${cidade.idCidade}</td>
                                            <td>${cidade.nomeCidade}</td>
                                            <td>${cidade.estado.siglaEstado}</td>
                                            <td><a href="${pageContext.request.contextPath}/CarregarCidade?idcidade=${cidade.idCidade}">Alterar</a></td>
                                            <td><a href="${pageContext.request.contextPath}/ExcluirCidade?idcidade=${cidade.idCidade}">Excluir</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-12">
                                <a href="${pageContext.request.contextPath}/cadastros.jsp">Voltar</a>
                                </div>
                        </div>
                    </div>
                </div>
                <!--Rodape-->
                <c:import url="../../footer.jsp"></c:import>
                </div>
            </div>

            <!--Import dos scripts-->
        <c:import url="../../scripts.jsp"></c:import>
    </body>
</html>
