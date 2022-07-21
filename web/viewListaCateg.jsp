<%@page import="Aplicacao.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Aplicacao.*" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.html" />
        <link rel="stylesheet" href="css/css/BodyPage1.css">
    </head>
    <body>
        <div class="container mt-2">
            
            <jsp:include page="header.jsp" />
            
            <h1>Lista de Categorias</h1>
            <p></p>
            <a href="CategoriaController?acao=incluir" class="btn btn-outline-primary">Incluir</a>
            <p></p>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nome da Categoria</th>
                            <th scope="col"><div class="float-right">Ações</div><br></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Categoria> ListaCategoria = (ArrayList<Categoria>) request.getAttribute("meusCategorias");
                            for (int i = 0; i < ListaCategoria.size(); i++) {
                                Categoria aux = ListaCategoria.get(i);
                                String link_editar = "CategoriaController?acao=editar&id="+aux.getId();
                                String link_excluir = "CategoriaController?acao=excluir&id="+aux.getId();
                        %>
                        <tr>
                            <td><%=aux.getId()%></td>
                            <td><%=aux.getNome_categoria()%></td>
                            <td><a href="<%=link_excluir%>" class="btn btn-outline-danger float-right">Excluir</a> <a href="<%=link_editar%>" class="btn btn-outline-secondary float-right">Editar</a> 
                            </td> 
                           
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <jsp:include page="scripts.html" /> 
</html>
