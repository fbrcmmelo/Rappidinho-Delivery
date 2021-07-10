<%-- 
    Document   : cabecalho
    Created on : 06/05/2021, 18:27:57
    Author     : hiago
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html dir="ltr" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex,nofollow">
        <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/Rappdinho_icon.png">
        <!-- Custom CSS -->
        <link href="plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
        <link rel="stylesheet" href="plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
        <!-- Custom CSS -->
        <link href="css/style.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
             data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->

            <header class="topbar" data-navbarbg="skin5">
                <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                    <div class="navbar-header" data-logobg="skin6">
                        <!-- ============================================================== -->
                        <!-- Logo -->
                        <!-- ============================================================== -->
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
                            <!-- Logo icon -->
                            <b class="logo-icon d-none d-xl-block">
                                <!-- Dark Logo icon -->
                                <img src="plugins/images/Rappdinho A.png" width="200" alt="homepage" />
                            </b>
                            <!--End Logo icon -->
                            <b class="logo-icon d-xl-none">
                                <!-- Dark Logo icon -->
                                <img src="plugins/images/Rappdinho_icon.png" width="50" alt="homepage" />
                            </b>
                        </a>
                        <!-- ============================================================== -->
                        <!-- End Logo -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- toggle and nav items -->
                        <!-- ============================================================== -->
                        <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                           href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                        <!-- ============================================================== -->
                        <!-- Right side toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav ms-auto d-flex align-items-center">

                            <!-- ============================================================== -->
                            <!-- Search -->
                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- User profile and search -->
                            <!-- ============================================================== -->
                            <li>
                                <c:choose>
                                    <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                        <a class="profile-pic" href="${pageContext.request.contextPath}/CarregarAdministrador?idpessoa=${pessoa.idPessoa}">
                                        </c:when>
                                    </c:choose>

                                    <c:choose>
                                        <c:when test="${pessoa.tipoPessoa eq 'C'}">
                                            <a class="profile-pic" href="${pageContext.request.contextPath}/CarregarContratante?idpessoa=${pessoa.idPessoa}">
                                            </c:when>
                                        </c:choose>

                                        <c:choose>
                                            <c:when test="${pessoa.tipoPessoa eq 'M'}">
                                                <a class="profile-pic" href="${pageContext.request.contextPath}/CarregarContratado?idpessoa=${pessoa.idPessoa}">
                                                </c:when>
                                            </c:choose>

                                            <c:choose>
                                                <c:when test="${pessoa.tipoPessoa eq 'C'}">
                                                    <img src="${pageContext.request.contextPath}/MostrarFotoContratante?idpessoa=${pessoa.idPessoa}" alt="user-img" width="36" 
                                                         class="img-circle">
                                                </c:when>
                                                <c:when test="${pessoa.tipoPessoa eq 'M'}">
                                                    <img src="${pageContext.request.contextPath}/MostrarFotoContratado?idpessoa=${pessoa.idPessoa}" alt="user-img" width="36" 
                                                         class="img-circle">
                                                </c:when>
                                                <c:when test="${pessoa.tipoPessoa eq 'A'}">
                                                    <img src="${pageContext.request.contextPath}/plugins/images/avatar.png" alt="user-img" width="36" 
                                                         class="img-circle">
                                                </c:when>
                                            </c:choose>
                                            <span class="text-white font-medium">${pessoa.nomePessoa}</span></a>
                                        </li>
                                        <!-- ============================================================== -->
                                        <!-- User profile and search -->
                                        <!-- ============================================================== -->
                                        </ul>
                                        </div>
                                        </nav>
                                        </header>
