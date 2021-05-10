<%-- 
    Document   : listaProdutos
    Created on : 07/05/2021, 19:53:43
    Author     : Beto
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Produto</title>
    </head>
    <body>
        <h1>Produtos:</h1>
        
        <table>
            <th>Nome</th>
            <th>Data de Fabricação</th>
            <th>Data de Vencimento</th>
            <th>Preço</th>
            
            <c:forEach items="${listaProdutos}" var="produto">
                <tr>
                    <td>${produto.nome}</td>
                    <td>${produto.dataFabricacao}</td>
                    <td>${produto.dataVencimento}</td>
                    <td>${produto.preco}</td>
                    <td><a href="AlterarProdutoServlet$nome=${produto.nome}">Alterar</a></td>
                    <td><a href="ExcluirProdutoServlet?nome=${produto.nome}">Excluir</a></td>
                </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
