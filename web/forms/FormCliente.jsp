<%@page import="Aplicacao.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../header.html" />
        <link rel="stylesheet" href="css/css/BodyPage1.css">
    </head>
    <body>
        <div class = "container mt-2">

            <jsp:include page="../header.jsp" />

            <%
                Cliente aux = (Cliente) request.getAttribute("cliente");
            %>

            <h1>Cadastro de Cliente</h1>
            <br>
            <form method="POST" action="ClienteController" class="needs-validation" novalidate>
                <input type="hidden" class="form-control" id="id" name="id" value="<%= aux.getId()%>">
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="nome">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome" value="<%= aux.getNome()%>" placeholder="Nome" required>
                        <div class="valid-feedback">
                            Parece bom!
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="cpf">CPF</label>
                        <input type="text" class="form-control cpf" id="cpf" name="cpf" value="<%= aux.getCpf()%>" placeholder="000.000.000-00" maxlength="14" required>
                        <div class="valid-feedback">
                            Parece bom!
                        </div>
                    </div>

                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="endereco">Endereço</label>
                        <input type="text" class="form-control" id="endereco" name="endereco" value="<%= aux.getEndereco()%>" placeholder="Endereço" required>
                        <div class="invalid-feedback">
                            Informe um Endereço válido.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="cidade">Cidade</label>
                        <input type="text" class="form-control" id="cidade" name="cidade" value="<%= aux.getCidade()%>" placeholder="Cidade" required>
                        <div class="invalid-feedback">
                            Informe uma cidade válida.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="bairro">Bairro</label>
                        <input type="text" class="form-control" id="bairro" name="bairro" value="<%= aux.getBairro()%>" placeholder="Bairro" required>
                        <div class="invalid-feedback">
                            Informe um municipio válido.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="uf">Estado</label>
                        <select class="custom-select custom-select-m" id="uf" name="uf" value="<%= aux.getUf()%>" required>
                            <option value="AC">Acre</option>
                            <option value="AL">Alagoas</option>
                            <option value="AP">Amapá</option>
                            <option value="AM">Amazonas</option>
                            <option value="BA">Bahia</option>
                            <option value="CE">Ceará</option>
                            <option value="DF">Distrito Federal</option>
                            <option value="ES">Espírito Santo</option>
                            <option value="GO">Goiás</option>
                            <option value="MA">Maranhão</option>
                            <option value="MT">Mato Grosso</option>
                            <option value="MS">Mato Grosso do Sul</option>
                            <option value="MG">Minas Gerais</option>
                            <option value="PA">Pará</option>
                            <option value="PB">Paraíba</option>
                            <option value="PR">Paraná</option>
                            <option value="PE">Pernambuco</option>
                            <option value="PI">Piauí</option>
                            <option value="RJ">Rio de Janeiro</option>
                            <option value="RN">Rio Grande do Norte</option>
                            <option value="RS">Rio Grande do Sul</option>
                            <option value="RO">Rondônia</option>
                            <option value="RR">Roraima</option>
                            <option value="SC">Santa Catarina</option>
                            <option value="SP">São Paulo</option>
                            <option value="SE">Sergipe</option>
                            <option value="TO">Tocantins</option>
                            <option value="EX">Estrangeiro</option>
                        </select>                   
                        <div class="invalid-feedback">
                            Selecione um estado.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cep">CEP</label>
                        <input type="text" class="form-control cep" id="cep" name="cep" value="<%= aux.getCep()%>" placeholder="00.000.000" maxlength="10" required>
                        <div class="invalid-feedback">
                            Informe um CEP válido.
                        </div>
                    </div>

                </div>

                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="telefone">Telefone</label>
                        <input type="tel" class="form-control telefone" id="telefone" name="telefone" value="<%= aux.getTelefone()%>" maxlength="14" placeholder="(99)99999-9999" required>
                        <div class="valid-feedback">
                            Parece bom!
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="<%= aux.getEmail()%>" placeholder="Email" required>
                        <div class="valid-feedback">
                            Parece bom!
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary" type="submit">Enviar</button>
                <a href="ClienteController?acao=mostrar" class="btn btn-outline-danger">Retornar</a>
            </form>
        </div>
    </body>
    <jsp:include page="../scripts.html" />
</html>
