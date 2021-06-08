<%-- 
    Document   : cliente
    Created on : 09/05/2021, 16:46:25
    Author     : monteiro
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Esperança</title>
        <link rel="stylesheet" href="assets/css/cadastrarCliente.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="assets/img/pinterest_profile_image.png" />
    </head>
    <body>
        <c:import url="nav.jsp"/>
        <div class="cointainer m-5 p-3">


            <h2 >Cadastrar Cliente</h2>
            <br>



            <c:if test="${empty cliente}">
                <form action="CadastrarClienteServelet" method="POST">

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Nome</label>
                            <input type="text" name="nome" required="true" class="form-control  "  required/><br/><br/>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">RG</label>
                            <input type="text" name="rg" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>       

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">CPF</label>
                            <input type="text" name="cpf" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Cep</label>
                            <input type="text" name="cep" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Endereço</label>
                            <input type="text" name="endereco" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Telefone</label>
                            <input type="number" name="telefone" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Celular</label>
                            <input type="tel" name="celular" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Email</label>
                            <input type="text" name="email" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <label for="inputState" class="form-label">Estado Civil</label>
                            <select id="inputState" class="form-select" name="estado_civil">
                                <option selected>Selecione</option>
                                <option value="solteiro">Solteiro(a)</option>
                                <option value="casado">Casado(a)</option>
                                <option value="viuvo">Viuvo(a)</option>
                                <option value="divorciado">Divorciado(a)</option>
                            </select>
                        </div>
                    </div>
                    <br>    <br> 

                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">Data_nascimento</label>
                            <input type="date" name="data_nascimento" required="true" class="form-control" required/><br/><br/>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Cadastrar</button> 
                </form>
            </c:if>
            <c:if test="${not empty cliente}">
                <form action="AlterarClienteServelet" method="POST">


                    <label>Nome</label>
                    <input type="text" name="nome" required="true" value="${cliente.nome}"/><br/><br/>

                    <label>RG</label>
                    <input type="text" name="rg" required="true" value="${cliente.rg}"/><br/><br/>
                    <label>CPF</label>
                    <input type="text" name="cpf" required="true" value="${cliente.cpf}" readonly="true"/><br/><br/>
                    <label>Cep</label>
                    <input type="text" name="cep" required="true" value="${cliente.cep}"/><br/><br/>
                    <label>Endereço</label>
                    <input type="text" name="endereco" required="true" value="${cliente.endereco}"/><br/><br/>
                    <label>Telefone</label>
                    <input type="text" name="telefone" required="true" value="${cliente.telefone}"/><br/><br/>
                    <label>Celular</label>
                    <input type="text" name="celular" required="true" value="${cliente.celular}"/><br/><br/>
                    <label>Email</label>
                    <input type="text" name="email" required="true" value="${cliente.email}"/><br/><br/>


                    <div class="row">
                        <div class="col-md-3">

                            <label for="inputState" class="form-label">Estado Civil</label>
                            <select id="inputState" class="form-select" required="true"  name="estado_civil" >
                                <option>Selecione</option>
                                <option <c:if test="${cliente.estado_civil == 'solteiro'}">selected</c:if> value="solteiro">Solteiro(a)</option>
                                <option <c:if test="${cliente.estado_civil == 'casado'}">selected</c:if> value="casado">Casado(a)</option>
                                <option <c:if test="${cliente.estado_civil == 'viuvo'}">selected</c:if> value="viuvo">Viuvo(a)</option>
                                <option <c:if test="${cliente.estado_civil == 'divorciado'}">selected</c:if> value="divorciado">Divorciado(a)</option>
                                </select>
                            </div>
                        </div>
                        <br>    <br> 



                        <label>Data_nascimento</label>
                        <input type="date" name="data_nascimento" required="true" value="${cliente.data_nascimento}"/><br/><br/>

                    <button type="submit">Atualizar</button> 
                </form>
            </c:if>

        </div>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <c:import url="footer.jsp"/>
    </body>
</html>