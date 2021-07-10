<%-- 
    Document   : cadastrarRota
    Created on : 20/06/2021, 12:36:12
    Author     : fbrcmmelo
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <c:import url="/head.jsp"></c:import>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Cadastro de Rotas</title>
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
                    <div class="row justify-content-center">
                        <!-- Column -->
                        <div class="col-xlg-4 col-lg-10 col-md-10">
                            <div class="white-box text-center">
                                <h1>Cadastro de Rotas</h1>
                            </div>
                        </div>
                        <div class="col-xlg-6 col-lg-10 col-md-10">
                            <div class="card">
                                <div class="row justify-content-center card-body">
                                    <form class="col-10 row form-horizontal form-material" name="cadastrarRota" action="${pageContext.request.contextPath}/CadastrarRota" method="POST" ">
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label class="col-12 p-0">ID</label>
                                        <div class="col-12 border-bottom p-0">
                                            <input type="number" id="idrota" value="${rota.idRota}" name="idrota" placeholder="ID" readonly="true" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 col-sm-12">
                                        <label class="col-md-12 p-0">Nome</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="text" id="nomerota" value="${rota.nomeRota}" required="true" placeholder="Nome do Rota" name="nomerota" maxlength="100" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Latitude Saída Rota:</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="latsaidarota" step="0.00000001" value="${rota.latSaidaRota}" placeholder="" name="latsaidarota" maxlength="10" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Longitude Saída Rota:</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="lngsaidarota" step="0.00000001" value="${rota.lngSaidaRota}" placeholder="" name="lngsaidarota" maxlength="11" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Latitude Chegada Rota:</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="latchegadarota" step="0.00000001" value="${rota.latChegadaRota}" placeholder="" name="latchegadarota" maxlength="10" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Longitude Chegada Rota:</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="lngchegadarota" step="0.00000001" value="${rota.lngChegadaRota}" placeholder="" name="lngchegadarota" maxlength="11" class="form-control p-0 border-0">
                                        </div>
                                    </div>

                                    <div class="form-group col-md-3 col-sm-12">
                                        <label class="col-md-12 p-0">Contratado</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="number" id="idpessoa" value="${pessoa.idPessoa}" name="idpessoa" placeholder="ID" readonly="true" class="form-control p-0 border-0">
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
                                    <a href="ListarRota">Voltar</a>
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
