<%-- 
    Document   : cadastrarProduto
    Created on : 20/06/2021, 12:36:12
    Author     : fbrcmmelo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <c:import url="/head.jsp"></c:import>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Rappdinho -- Cadastro de Cidades</title>
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
                    <div class="row justify-content-center">
                        <!-- Column -->
                        <div class="col-xlg-4 col-lg-10 col-md-10">
                            <div class="white-box text-center">
                                <h1>Cadastro de Cidades</h1>
                            </div>
                        </div>
                        <div class="col-xlg-6 col-lg-10 col-md-12">
                            <div class="card">
                                <div class="row justify-content-center card-body">
                                    <form class="col-10 row form-horizontal form-material" name="cadastrarCidade" action="${pageContext.request.contextPath}/CadastrarCidade" method="POST">

                                    <div class="form-group col-md-6 col-sm-12">
                                        <label class="col-md-12 p-0">ID</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="idcidade" value="${cidade.idCidade}" name="idcidade" readonly="true" class="form-control p-0 border-0">
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6 col-sm-12">
                                        <label class="col-md-12 p-0">Nome</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="text"id="nomecidade" value="${cidade.nomeCidade}" required="true" name="nomecidade" maxlength="100" class="form-control p-0 border-0">
                                        </div>
                                    </div>   

                                    <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Estado</label>
                                        <div class="col-sm-12 border-bottom">
                                            <select class="form-select shadow-none p-0 border-0 form-control-line" name="idestado" id="idestado">
                                                <option value="">Selecione</option>
                                                <c:forEach var="estado" items="${estados}">                        
                                                    <option value="${estado.idEstado}" ${cidade.estado.idEstado == estado.idEstado ? 'selected' : ''} >${estado.nomeEstado}</option>                               
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                        
                                    <div class="form-group col-12 row">
                                        <div class="col-md-6 col-sm-12">
                                            <input class="btn btn-success text-white" type="submit" value="Cadastrar" name="cadastrar">
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <input class="btn btn-danger text-white" type="reset" value="Limpar" name="Limpar">
                                        </div>
                                    </div>
                                </form>
                                        
                                <div class="col-12">
                                    <a href="ListarCidade">Voltar</a>
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
