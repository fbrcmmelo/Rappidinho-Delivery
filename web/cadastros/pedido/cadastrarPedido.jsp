<%-- 
    Document   : cadastrarPedido
    Created on : 13/06/2021, 13:31:48
    Author     : fbrcmmelo
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:import url="/head.jsp"></c:import>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>Cadastro de Pedidos</title>

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
                    <div class="row justify-content-center">
                        <!-- Column -->
                        <div class="col-xlg-4 col-lg-10 col-md-10">
                            <div class="white-box text-center">
                                <h1>Cadastro de Pedido</h1>
                            </div>
                        </div>

                        <div class="col-xlg-6 col-lg-10 col-md-10">
                            <div class="card">
                                <div class="row justify-content-center card-body">
                                    <form class="col-10 row form-horizontal form-material" name="cadastrarPedido" action="${pageContext.request.contextPath}/CadastrarPedido" method="POST">
                                    <c:choose><c:when test="${pedido.idPedido != null}">
                                            <div class="form-group col-md-12 col-sm-12">     
                                                <label class="col-md-12 p-0">ID Rota</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="idpedido" name="idpedido" value="${pedido.idPedido}" readonly="true" class="form-control p-0 border-0">
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6 col-sm-12">
                                                <label class="col-md-12 p-0">Latitude Destino</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="latdestinopedido" step="0.00000001" value="${pedido.latDestinoPedido}" placeholder="" name="latdestinopedido" maxlength="10" required="true" class="form-control p-0 border-0">
                                                </div>
                                            </div> 
                                            <div class="form-group col-md-6 col-sm-12">
                                                <label class="col-md-12 p-0">Longitude Destino</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="lngdestinopedido" step="0.00000001" value="${pedido.lngDestinoPedido}" placeholder="" name="lngdestinopedido" maxlength="11" required="true" class="form-control p-0 border-0">
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label class="col-md-12 p-0">Produto</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idproduto" id="idproduto">

                                                        <c:forEach var="produto" items="${produtos}">                        
                                                            <option value="${produto.idProduto}" ${pedido.produto.idProduto == produto.idProduto ? 'selected' : ''} >${produto.nomeProduto}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label class="col-md-12 p-0">Contratado</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idcontratado" id="idcontratado">

                                                        <c:forEach var="contratado" items="${contratados}">                        
                                                            <option value="${contratado.idContratado}" ${pedido.contratado.idContratado == contratado.idContratado ? 'selected' : '' }>${contratado.nomePessoa}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label class="col-md-12 p-0">Rota</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idrota" id="idrota">

                                                        <c:forEach var="rota" items="${rotas}">                        
                                                            <option value="${rota.idRota}" ${pedido.rota.idRota == rota.idRota ? 'selected' : ''} >${rota.nomeRota}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label class="col-12 p-0">Contratante</label>
                                                <div class="col-12 border-bottom p-0">
                                                    <input type="number" id="idpessoa" name="idpessoa" value="${pessoa.idPessoa}" readonly="true" class="form-control p-0 border-0">
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="form-group col-md-2 col-sm-12">     
                                                <label class="col-md-12 p-0">ID Rota</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="idpedido" name="idpedido" value="${pedido.idPedido}" readonly="true" class="form-control p-0 border-0">
                                                </div>
                                            </div>
                                                <div class="form-group col-md-6 col-sm-12">
                                        <label class="col-12 p-0">Data</label>
                                        <div class="col-12 border-bottom p-0">
                                            <input type="text" name="datapedido" id="datapedido" value="<fmt:formatDate pattern="dd/MM/yyyy" type="date" value="${datapedido}"></fmt:formatDate>" placeholder="dd/mm/aaaa" class="form-control p-0 border-0">
                                            </div>
                                        </div>
                                            <div class="form-group col-md-6 col-sm-12">
                                                <label class="col-md-12 p-0">Latitude Destino</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="latdestinopedido" step="0.00000001" value="${pedido.latDestinoPedido}" placeholder="" name="latdestinopedido" maxlength="10" required="true" class="form-control p-0 border-0">
                                                </div>
                                            </div> <div class="form-group col-md-6 col-sm-12">
                                                <label class="col-md-12 p-0">Longitude Destino</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="lngdestinopedido" step="0.00000001" value="${pedido.lngDestinoPedido}" placeholder="" name="lngdestinopedido" maxlength="11" required="true" class="form-control p-0 border-0">
                                                </div>
                                            </div><div class="form-group col-12">
                                                <label class="col-md-12 p-0">Produto</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idproduto" id="idproduto">

                                                        <c:forEach var="produto" items="${produtos}">                        
                                                            <option value="${produto.idProduto}" ${pedido.produto.idProduto == produto.idProduto ? 'selected' : ''} >${produto.nomeProduto}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div><div class="form-group col-12">
                                                <label class="col-md-12 p-0">Contratado</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idcontratado" id="idcontratado">

                                                        <c:forEach var="contratado" items="${contratados}">                        
                                                            <option value="${contratado.idContratado}" ${pedido.contratado.idContratado == contratado.idContratado ? 'selected' : '' }>${contratado.nomePessoa}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label class="col-md-12 p-0">Rota</label>
                                                <div class="col-sm-12 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line" name="idrota" id="idrota">

                                                        <c:forEach var="rota" items="${rotas}">                        
                                                            <option value="${rota.idRota}" ${pedido.rota.idRota == rota.idRota ? 'selected' : ''} >${rota.nomeRota}</option>                               
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-12 col-sm-12">
                                                <label class="col-12 p-0">Contratante</label>
                                                <div class="col-12 border-bottom p-0">
                                                    <input type="number" id="idpessoa" name="idpessoa" value="${pessoa.idPessoa}" readonly="true" class="form-control p-0 border-0">
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                    <div class="form-group col-12 row">
                                        <div class="col-md-6 col-sm-12">
                                            <input class="btn btn-success text-white" type="submit" value="Cadastrar" name="cadastrar">
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <input class="btn btn-danger text-white" type="reset" value="Limpar" name="Limpar">
                                        </div>

                                    </div>
                                </form>
                                <div class="col-md-6 col-sm-12">
                                    <a href="ListarPedido">Voltar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                    
            </div>
            <c:import url="/footer.jsp"></c:import>
            </div>

            <!--Import dos scripts-->
        <c:import url="/scripts.jsp"></c:import>
    </body>
</html>