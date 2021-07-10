<%-- 
    Document   : listarContratante
    Created on : 13/06/2021, 13:26:09
    Author     : fbrcmmelo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <c:import url="/head.jsp"></c:import>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
            <title>Lista de Contratantes</title>
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

                                    <h3 class="box-title mb-0">Contratantes Cadastrados </h3>
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">Foto</th>
                                                <th class="border-top-0">ID</th>
                                                <th class="border-top-0">Nome</th>
                                                <th class="border-top-0">Email</th>
                                                <th class="border-top-0">CPF</th>
                                                <th class="border-top-0">CNH</th>
                                                <th class="border-top-0">Endereço</th>
                                                <th class="border-top-0">Telefone</th>
                                                <th class="border-top-0">Cidade</th>
                                                <th class="border-top-0">Estado</th>
                                                <th class="border-top-0" colspan="2">Editar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="contratado" items="${contratados}">
                                            <tr>  
                                                <td><img src="${pageContext.request.contextPath}/MostrarFotoContratado?idpessoa=${contratado.idPessoa}" height="100" width="100" /></td>
                                                <td>${contratado.idPessoa}</td>
                                                <td>${contratado.nomePessoa}</td>
                                                <td>${contratado.emailPessoa}</td>
                                                <td>${contratado.cpfPessoa}</td>
                                                <td>${contratado.cnhContratado}</td>
                                                <td>${contratado.enderecoPessoa}</td>
                                                <td>${contratado.telefonePessoa}</td>
                                                <td>${contratado.cidade.nomeCidade}</td>
                                                <td>${contratado.estado.siglaEstado}</td>
                                                <td><a href="${pageContext.request.contextPath}/CarregarContratado?idpessoa=${contratado.idPessoa}">Alterar</a></td>
                                                <td><a href="${pageContext.request.contextPath}/ExcluirContratado?idpessoa=${contratado.idPessoa}">Excluir</a></td>
                                            </tr>
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

