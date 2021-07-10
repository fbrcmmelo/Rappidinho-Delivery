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
            <title>Cadastro de Produtos</title><script type="text/javascript">

                function isImg(file) {
                    var img = file;
                    img.src="${pageContext.request.contextPath}/plugins/images/padrao.png";
                }

        </script>
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
                                <h1>Cadastro de Produtos</h1>
                            </div>
                        </div>
                        <div class="col-xlg-6 col-lg-10 col-md-10">
                            <div class="card">
                                <div class="row justify-content-center card-body">
                                    <form class="col-10 row form-horizontal form-material" name="cadastrarProduto" action="${pageContext.request.contextPath}/CadastrarProduto" method="POST" enctype="multipart/form-data">
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label class="col-12 p-0">ID</label>
                                        <div class="col-12 border-bottom p-0">
                                            <input type="number" id="idproduto" value="${produto.idProduto}" name="idproduto" placeholder="ID" readonly="true" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 col-sm-12">
                                        <label class="col-md-12 p-0">Nome</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <input type="text" id="nomeproduto" value="${produto.nomeProduto}" required="true" placeholder="Nome do Produto" name="nomeproduto" maxlength="100" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                        <div class="form-group col-12">
                                        <label class="col-md-12 p-0">Descrição</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <textarea type="text" id="descricaoproduto" required="true" name="descricaoproduto" class="form-control p-0 border-0" rows="2">
                                                ${produto.descricaoProduto}
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <img src="${pageContext.request.contextPath}/plugins/images/padrao.png" alt="Avatar" width="100" height="100" ${produto.fotoProduto != null ? 'hidden' : ''} /> <img src="${pageContext.request.contextPath}/MostrarFotoProduto?idproduto=${produto.idProduto}" width="150" heigth="150" id="fotoproduto" alt="Foto Produto" ${produto.fotoProduto == null ? 'hidden' : ''} onerror="isImg(this);" />
                                        <label class="col-12 p-0" for="fotoproduto">Imagem Produto</label>
                                        <div class="col-12 border-bottom p-0">
                                            <input type="file" name="fotoproduto" id="fotoproduto" class="form-control p-0 border-0">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3 col-sm-12">
                                        <label class="col-md-12 p-0">Pessoa</label>
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
                                    <a href="ListarProduto">Voltar</a>
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
