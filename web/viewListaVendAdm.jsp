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
            
            <h1>Lista de Vendas</h1>

            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Quantidade Venda</th>
                            <th scope="col">Data Venda</th>
                            <th scope="col">Valor Venda</th>
                            <th scope="col">Id Cliente</th>
                            <th scope="col">Id Produto</th>
                            <th scope="col">Id Funcionario</th>
                         
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Venda> ListaVenda = (ArrayList<Venda>) request.getAttribute("meusVendas");
                            for (int i = 0; i < ListaVenda.size(); i++) {
                                Venda aux = ListaVenda.get(i);
                        %>
                        <tr>
                            <td><%=aux.getId()%></td>
                            <td><%=aux.getQuantidade_venda()%></td>
                            <td><%=aux.getData_venda()%></td>
                            <td><%=aux.getValor_venda()%></td> 
                            <td><%=aux.getId_cliente()%></td> 
                            <td><%=aux.getId_produto()%></td> 
                            <td><%=aux.getId_funcionario()%></td> 
                            
                           
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
