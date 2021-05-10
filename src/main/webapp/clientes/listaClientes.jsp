<%-- 
    Document   : listaClientes
    Created on : 27/04/2021, 16:23:02
    Author     : Dell i5
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>

        <script type="text/javascript">
            function mostraTelaConfirmacao(nome, cpf) {
                console.log("nome", nome);
                $("#nomeCliente").html(nome);
                $("#cpfCliente").val(cpf);

                var modalConfirmacao = $("#modalConfirmacao");
                myModal.show();
            }

            function fecharTelaConfirmacao() {
                $("#modalConfirmacao").hide();
            }

            function deletarCliente() {
                var cpf = $("#cpfCliente").val();
                fecharTelaConfirmacao();
                  $.ajax("ExcluirClienteServelet?cpf=" + cpf).done(function () {
                         location.reload();
                      })
                      .fail(function () {
                         console.log("error");
                            $("#alerta").css("display", "block");
                            setTimeout(function() {
                               $("#alerta").css("display", "none"); 
                            }),1000);
                      });
                      
            }
        </script>
    </head>
    <body class="container">
        <c:import url="header.jsp"/>
        <h1>Clientes:</h1>

        <div class="alert alert-danger" role="alert" id="alerta" style="display: nome">
            Erro ao excluir cliente!
        </div>
        
        <table class="table">
            <th>Nome</th>
            <th>Sobrenome</th>
            <th>RG</th>
            <th>CPF</th>
            <th>CEP</th>
            <th>Cidade</th>
            <th>Bairro</th>
            <th>Complemento</th>
            <th>Endereço</th>
            <th>número</th>
            <th>Telefone</th>
            <th>Celular</th>
            <th>Email</th>
            <th>Genero</th>
            <th>Estado Civil</th>
            <th>Data Nascimento</th>

            <c:forEach items="${listaClientes}" var="cliente">
                <tr>
                    <td>${cliente.nome}</td>
                    <td>${cliente.sobrenome}</td>
                    <td>${cliente.rg}</td>
                    <td>${cliente.cpf}</td>
                    <td>${cliente.cep}</td>
                    <td>${cliente.cidade}</td>
                    <td>${cliente.bairro}</td>
                    <td>${cliente.complemento}</td>
                    <td>${cliente.endereco}</td>
                    <td>${cliente.numero}</td>
                    <td>${cliente.telefone}</td>
                    <td>${cliente.celular}</td>
                    <td>${cliente.email}</td>
                    <td>${cliente.genero}</td>
                    <td>${cliente.estado_civil}</td>
                    <td>${cliente.data_nascimento}</td>
                    <td><a href="AlterarClienteServelet?=cpf=${cliente.cpf}">Alterar</a></td>

                    <td><button type="button" class="btn btn-link" onclick="mostrarTelaConfirmacao('${cliente.nome}', '${cliente.cpf}')">Excluir</button></td>
                </tr>        
            </c:forEach>
        </table>


        <!-- Modal -->
        <div class="modal " id="modalConfirmacao" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirmar Exclusão</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Confirma excluão do cliente <label id="nomeCliente"></label> ?</p>
                        <input type="hidden" id="cpfCliente"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="fecharTelaConfirmacao()">Cancelar</button>
                        <button type="button" class="btn btn-primary" onclick="deletarCliente()">Confirmar</button>
                    </div>
                </div>
            </div>
        </div>


        <c:import url="footer.jsp"/>
    </body>
</html>
