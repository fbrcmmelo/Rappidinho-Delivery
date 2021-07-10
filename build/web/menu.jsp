<%-- 
    Document   : menu
    Created on : 06/05/2021, 18:28:41
    Author     : hiago
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside class="left-sidebar" data-sidebarbg="skin6">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Big Sidebar navigation-->
        <nav class="sidebar-nav d-none d-xl-block">
            <ul id="sidebarnav">
                <!-- User Profile-->
                <div class="mb-4 m-4 text-danger" align="center"> 
                <span class="hide-menu"><h5>${saudacao}</h5></span>
                <!-- Menu customizado / Depende Tipo Usuario-->
                </div>
                <hr>
                <!-- Cadastros-->
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/dashboard.jsp"
                       aria-expanded="false">
                        <i class="fas fa-chart-pie" aria-hidden="true"></i>
                        <span class="hide-menu">Painel de controle</span>
                    </a>
                </li>
                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'A'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/cadastros.jsp"
                               aria-expanded="false">
                                <i class="fas fa-database" aria-hidden="true"></i>
                                <span class="hide-menu">Cadastros</span>
                            </a>
                        </li>
                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'M'}">


                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ListarEntrega"
                               aria-expanded="false">
                                <i class="fas fa-boxes" aria-hidden="true"></i>
                                <span class="hide-menu">Minhas entregas</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedido"
                               aria-expanded="false">
                                <i class="fas fa-box" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Pedidos</span>
                            </a>
                        </li>
                        
                          <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedidoContratado"
                               aria-expanded="false">
                                <i class="fas fa-truck" aria-hidden="true"></i>
                                <span class="hide-menu">Pedidos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarRota"
                               aria-expanded="false">
                                <i class="fas fa-road" aria-hidden="true"></i>
                                <span class="hide-menu">Minhas Rotas</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ListarVeiculo"
                               aria-expanded="false">
                                <i class="fas fa-car" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Veículos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarProduto"
                               aria-expanded="false">
                                <i class="fas fa-box-open" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Produtos</span>
                            </a>
                        </li>



                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'C'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarProduto"
                               aria-expanded="false">
                                <i class="fas fa-box-open" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Produtos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedido"
                               aria-expanded="false">
                                <i class="fas fa-box" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Pedidos</span>
                            </a>
                        </li>
                    </c:when>
                </c:choose>



                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/LogarPessoa?acao=logout"
                       aria-expanded="false">
                        <i class="fa fa-power-off" aria-hidden="true"></i>
                        <span class="hide-menu">Sair</span>
                    </a>
                </li>

            </ul>
        </nav>
 <hr>
        <!-- End Big Sidebar navigation -->

        <!-- Sidebar navigation-->
        <nav class="sidebar-nav d-xl-none">
            <ul id="sidebarnav">
                <!-- User Profile-->



                <!-- Menu customizado / Depende Tipo Usuario-->

                <!-- Cadastros-->
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/dashboard.jsp"
                       aria-expanded="false">
                        <i class="fas fa-chart-pie" aria-hidden="true"></i>
                        <span class="hide-menu">Painel de controle</span>
                    </a>
                </li>
                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'A'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/cadastros.jsp"
                               aria-expanded="false">
                                <i class="fas fa-database" aria-hidden="true"></i>
                                <span class="hide-menu">Cadastros</span>
                            </a>
                        </li>
                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'M'}">


                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ListarEntrega"
                               aria-expanded="false">
                                <i class="fas fa-boxes" aria-hidden="true"></i>
                                <span class="hide-menu">Minhas entregas</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedido"
                               aria-expanded="false">
                                <i class="fas fa-box" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Pedidos</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedidoContratado"
                               aria-expanded="false">
                                <i class="fas fa-truck" aria-hidden="true"></i>
                                <span class="hide-menu">Pedidos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarRota"
                               aria-expanded="false">
                                <i class="fas fa-road" aria-hidden="true"></i>
                                <span class="hide-menu">Minhas Rotas</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ListarVeiculo"
                               aria-expanded="false">
                                <i class="fas fa-car" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Veículos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarProduto"
                               aria-expanded="false">
                                <i class="fas fa-box-open" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Produtos</span>
                            </a>
                        </li>



                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${pessoa.tipoPessoa eq 'C'}">
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarProduto"
                               aria-expanded="false">
                                <i class="fas fa-box-open" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Produtos</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/ListarPedido"
                               aria-expanded="false">
                                <i class="fas fa-box" aria-hidden="true"></i>
                                <span class="hide-menu">Meus Pedidos</span>
                            </a>
                        </li>

                    </c:when>
                </c:choose>



                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="${pageContext.request.contextPath}/LogarPessoa?acao=logout"
                       aria-expanded="false">
                        <i class="fa fa-power-off" aria-hidden="true"></i>
                        <span class="hide-menu">Sair</span>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
