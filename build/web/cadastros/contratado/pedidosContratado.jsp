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
            <title>Rappidinho - Pedidos Contratados</title>
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
                                <center>
                                    <div class="d-md-grid mb-5">

                                        <h5 class="box-title mb-4">Lista de Pedidos</h5>
                                        <h4><p align="center"><b>${mensagem}</b></p></h4> 
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap">
                                        <thead>
                                        <th colspan="11" align="center">Pedidos</th>
                                        <tr>
                                            <th class="border-top-0">ID</th>
                                            <th class="border-top-0">Data Pedido</th>
                                            <th class="border-top-0">Latitude Destino</th>
                                            <th class="border-top-0">Longitude Destino</th>
                                            <th class="border-top-0">Produto</th>
                                            <th class="border-top-0">ID Contratante</th>
                                            <th class="border-top-0">Contratado</th>
                                            <th class="border-top-0">Rota</th>
                                            <th class="border-top-0">Status do Pedido</th>
                                            <th class="border-top-0" colspan="2">Editar</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="pedido" items="${pedidos}">
                                                <c:choose>
                                                    <c:when test="${pedido.pessoa.nomePessoa == pessoa.nomePessoa}">
                                                        <tr> 
                                                            <td>${pedido.idPedido}</td>
                                                            <td><fmt:formatDate type="date" pattern="dd/MM/yyyy" value="${pedido.dataPedido}"></fmt:formatDate></td>                                               
                                                            <td>${pedido.latDestinoPedido}</td> 
                                                            <td>${pedido.lngDestinoPedido}</td>
                                                            <td>${pedido.produto.nomeProduto}</td> 
                                                            <td>${pedido.pessoa.idPessoa}</td> 
                                                            <td>${pedido.pessoa.nomePessoa}</td> 
                                                            <td>${pedido.rota.nomeRota}</td>
                                                            <td>${pedido.statusPedido}</td> 
                                                            <td><a href="${pageContext.request.contextPath}/ExcluirPedido?idpedido=${pedido.idPedido}">Excluir</a></td>
                                                        </tr>
                                                    </c:when>
                                                </c:choose>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <center><p>Status: (A)<b>Aguardando</b> (T)<b>Transportando</b> (R)<b>Realizada</b></p></center>
                                    <div class="d-inline-flex mb-6">
                                        <h3 class="box-title mb-2">  Novo Pedido <a href="${pageContext.request.contextPath}/DadosPedido" class="btn btn-danger text-white">
                                                <i class="fa fa-plus" aria-hidden="true"></i>    Pedido      
                                            </a>
                                    </div><div class="d-inline-flex mb-6">
                                        <h3 class="box-title mb-6">   Nova Entrega <a href="${pageContext.request.contextPath}/DadosEntrega" class="btn btn-danger text-white">
                                                <i class="fa fa-plus" aria-hidden="true"></i> Entrega
                                            </a>
                                        </h3>          
                                        </a>
                                    </div>
                                </div>
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