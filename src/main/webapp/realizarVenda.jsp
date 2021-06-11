<%-- 
    Document   : realizarVenda
    Created on : 10 de jun de 2021, 11:30:07
    Author     : vinic
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var produtosCarrinho = {};
            var clienteSelecionado;
            var filialNome = "São Paulo - SP";

            function addProduto(produto) {
                $("#carrinho tbody").empty();
                var produtoCarrinho = produtosCarrinho[produto.id];
                if (produtoCarrinho == null) {
                    produto.quantidade = 1;
                    produtosCarrinho[produto.id] = produto;
                } else {
                    produtosCarrinho[produto.id].quantidade++;
                }

                var total = 0;
                for (index in produtosCarrinho) {
                    var produto = produtosCarrinho[index];
                    var html = "<tr><td>" + produto.nome + "</td><td>" + produto.preco + "</td><td>" + produto.quantidade + "</td></tr>";
                    total += produto.preco * produto.quantidade;
                    $("#carrinho tbody").append(html);
                    $("#totalVenda").html(total);
                }
            }

            function selecionarCliente() {
                clienteSelecionado = $("#cliente").val();
            }

            function finalizarVenda() {
                var dadosVenda = {produtos: [], cliente: clienteSelecionado, filial: filialNome};
                for (index in produtosCarrinho) {
                    var produto = produtosCarrinho[index];
                    dadosVenda.produtos.push(produto);
                }

                console.log("dadosVenda  ", dadosVenda);
                $.post("RealizarVendaServlet", "dados=" + JSON.stringify(dadosVenda), function sucesso(response) {
                    alert("Venda Realizada com sucesso!");
                    $("#carrinho tbody").empty();
                    $("#totalVenda").html("0,00");
                });

            }
        </script>
    </head>

    <body>
    <body>
        <c:import url="nav.jsp"/>
        <h2>Lista de Clientes</h2>
        <select id="cliente" onchange="selecionarCliente()">
            <option value="">Selecione</option>
            <c:forEach items="${listaClientes}" var="cliente">
                <option value="${cliente.id}">${cliente.nome}</option>    `
            </c:forEach>
        </select>

        <h2>Lista de Produtos</h2>
        <table>
            <thead>
            <th>Nome</th>
            <th>Preco</th>
        </thead>
        <tbody>
            <c:forEach items="${listaProdutos}" var="produto">
                <tr><td>${produto.nome}</td><td><fmt:formatNumber type="currency" value="${produto.preco}" /></td>
                    <td><button onclick="addProduto(${produto})">Adicionar</button></td></tr>
                </c:forEach>
        </tbody>

    </table>

    <h2>Carrinho</h2>
    <table id="carrinho">
        <thead>
        <th>Nome</th>
        <th>Preco</th>
        <th>Quantidade</th>
    </thead>
    <tbody>

    </tbody>

</table>

<h3>Total da Venda R$ <label id="totalVenda">0,00</label></h3><br/>
<button onclick="finalizarVenda()">Finalizar Venda</button>
<c:import url="footer.jsp"/>
</body>
</body>

</html>
