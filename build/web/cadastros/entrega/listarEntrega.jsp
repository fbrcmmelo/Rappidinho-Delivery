<%-- 
    Document   : listarEntrega
    Created on : 13/06/2021, 13:32:48
    Author     : fbrcmmelo
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>

<html> 
    <head>
        <c:import url="/head.jsp"></c:import>
            <title>Rappidinho - Entregas</title>
        </head>

        <body>

            <!--Corpo da pagina-->
            <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
                 data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">

                <!--Cabeçalho-->
            <c:import url="/cabecalho.jsp"></c:import>

                <!--Menu-->
            <c:import url="/menu.jsp"></c:import>

                <!--Conteudo-->
                <div class="page-wrapper">
                    <!--taca os bag aqui dentro-->

                    <div class="row justify-content-center">
                        <div class="col-md-10 col-lg-10 col-sm-12">
                            <div class="white-box">
                                <div class="d-inline-flex mb-6">
                                                <h3 class="box-title mb-6">   Nova Entrega <a href="${pageContext.request.contextPath}/DadosEntrega" class="btn btn-danger text-white">
                                                        <i class="fa fa-plus" aria-hidden="true"></i> Entrega
                                                    </a>
                                                </h3>  
                                            </div>

                                <div class="table-responsive">
                                    <table class="table no-wrap">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">ID</th>
                                                <th class="border-top-0">Data Pedido</th>
                                                <th class="border-top-0">Status Entrega</th>
                                                <th class="border-top-0">Data Status Entrega</th>
                                                <th class="border-top-0">Pessoa Contratada</th>
                                                <th class="border-top-0">ID Pedido</th>
                                                <c:choose>
                                                    <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                    <th class="border-top-0" colspan="2">Editar</th>
                                                    </c:when>
                                                </c:choose>
                                            <th class="border-top-0" colspan="2">Alterar Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                <c:forEach var="entrega" items="${entregas}">
                                                    <tr>  
                                                        <td>${entrega.idEntrega}</td>
                                                        <td><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${entrega.pedido.dataPedido}"></fmt:formatDate></td>                                                                                          
                                                        <td>${entrega.statusEntrega}</td>
                                                        <td><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${entrega.dataEntrega}"></fmt:formatDate></td> 
                                                        <td>${entrega.pessoa.nomePessoa}</td>
                                                        <td>${entrega.pedido.idPedido}</td>
                                                        <td><a href="${pageContext.request.contextPath}/CarregarEntrega?identrega=${entrega.idEntrega}">Alterar</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/ExcluirEntrega?identrega=${entrega.idEntrega}">Excluir</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/AlterarStatusEntrega?identrega=${entrega.idEntrega}&idpedido=${entrega.pedido.idPedido}&statusentrega=t">Em Transporte</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/AlterarStatusEntrega?identrega=${entrega.idEntrega}&idpedido=${entrega.pedido.idPedido}&statusentrega=r">Realizada</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:when>
                                        </c:choose>

                                        <c:forEach var="entrega" items="${entregas}">
                                            <c:choose>
                                                <c:when test="${pessoa.nomePessoa == entrega.pessoa.nomePessoa}">
                                                    <tr>  
                                                        <td>${entrega.idEntrega}</td>
                                                        <td><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${entrega.pedido.dataPedido}"></fmt:formatDate></td>                                                                                          
                                                        <td>${entrega.statusEntrega}</td>
                                                        <td><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${entrega.dataEntrega}"></fmt:formatDate></td> 
                                                        <td>${entrega.pessoa.nomePessoa}</td>
                                                        <td>${entrega.pedido.idPedido}</td>                                              
                                                        <td><a href="${pageContext.request.contextPath}/AlterarStatusEntrega?identrega=${entrega.idEntrega}&idpedido=${entrega.pedido.idPedido}&statusentrega=t">Em Transporte</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/AlterarStatusEntrega?identrega=${entrega.idEntrega}&idpedido=${entrega.pedido.idPedido}&statusentrega=r">Realizada</a></td>
                                                    </tr>
                                                </c:when>
                                            </c:choose>
                                        </c:forEach>
                                    <center><p>Status: (A)<b>Aguardando</b> (T)<b>Transportando</b> (R)<b>Realizada</b></p></center>
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