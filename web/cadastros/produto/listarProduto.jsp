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

                                    <h3 class="box-title mb-0">Produtos cadastrados <a href="${pageContext.request.contextPath}/DadosProduto" class="btn btn-danger text-white">
                                        <i class="fa fa-plus" aria-hidden="true"></i> Produto
                                    </a>
                                </h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table no-wrap">
                                    <thead>
                                        <tr>
                                            <th class="border-top-0">Foto</th>
                                            <th class="border-top-0">ID</th>
                                            <th class="border-top-0">Nome do Produto</th>
                                            <th class="border-top-0">Descrição do Produto</th>
                                            <th class="border-top-0">Produto da Pessoa</th>

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
                                                <c:forEach var="produto" items="${produtos}">
                                                    <tr>  
                                                        <td><img src="${pageContext.request.contextPath}/MostrarFotoProduto?idproduto=${produto.idProduto}" height="100" width="100" /></td>
                                                        <td>${produto.idProduto}</td>
                                                        <td>${produto.nomeProduto}</td>
                                                        <td>${produto.descricaoProduto}</td>
                                                        <td>${produto.pessoa.nomePessoa}</td> 
                                                        <td><a href="${pageContext.request.contextPath}/CarregarProduto?idproduto=${produto.idProduto}">Alterar</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/ExcluirProduto?idproduto=${produto.idProduto}">Excluir</a></td>
                                                    </tr>
                                                </c:forEach>  
                                            </c:when>
                                        </c:choose>
                                                    
                                        <c:forEach var="produto" items="${produtos}">

                                            <c:choose>
                                                <c:when test="${produto.pessoa.nomePessoa == pessoa.nomePessoa}">
                                                    <tr>  
                                                        <td><img src="${pageContext.request.contextPath}/MostrarFotoProduto?idproduto=${produto.idProduto}" height="100" width="100" /></td>
                                                        <td>${produto.idProduto}</td>
                                                        <td>${produto.nomeProduto}</td>
                                                        <td>${produto.descricaoProduto}</td>
                                                        <td>${produto.pessoa.nomePessoa}</td>  
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