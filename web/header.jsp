<%@ page contentType="text/html; charset=UTF-8" import="Aplicacao.Funcionario" %>
<link rel="stylesheet" href="css/css/Header.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp">Canadian Store&nbsp&nbsp&nbsp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <%
        Funcionario usuario = (Funcionario) session.getAttribute("usuario");
        if (usuario == null){ %>
            <a class="navbar-brand" href="Login">Login</a>
        <%} else {
        switch (usuario.getPapel()){
            case 0:%>
                <jsp:include page="header_adm.jsp" />
                <%break;
            case 1:%>
                <jsp:include page="header_vend.jsp" />
                <%break;
            case 2:%>
                <jsp:include page="header_comp.jsp" />
                <%break;
            }
        }
    %>
    
</nav>