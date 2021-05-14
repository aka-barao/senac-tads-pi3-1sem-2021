<%-- 
    Document   : listaProdutos
    Created on : 07/05/2021, 19:53:43
    Author     : Beto
--%>

<%@page import="java.util.List"%>
<%@page import="entidade.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    ProdutoDAO dao = new ProdutoDAO();
    List<Produto> lista;
    lista = dao.getProdutos();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Produto</title>
        <link rel="stylesheet" href="assets/css/listaProdutos.css"/>
         <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="assets/img/pinterest_profile_image.png" />
        
    </head>
    <body>
       
         <c:import url="nav.jsp"/>
          
        <h1>Produtos:</h1>
        
        <table class="table table-dark table-striped">
            <th>ID</th>
            <th>Nome</th>
            <th>Data de Fabricação</th>
            <th>Data de Vencimento</th>
            <th>Preço</th>
            <th></th>
            <th></th>
            
            <%
            for (Produto registro: lista){
           
            %>
                <tr>
                    
                    <td><%=registro.getId()%></td>
                    <td><%=registro.getNome()%></td>
                    <td><%=registro.getDataFabricacao()%></td>
                    <td><%=registro.getDataVencimento()%></td>
                    <td><%=registro.getPreco()%></td>
                    
                    
                    <td><button id="botao1" type="button" class="btn btn-outline-primary"><a href="AlterarProdutoServlet$nome=${produto.nome}">Alterar</a></button></td>
                    <td><button id="botao2" type="button" class="btn btn-outline-primary"><a href="ExcluirProdutoServlet?nome=${produto.nome}">Excluir</a></button></td>
                    
                </tr>
            
             <%
            
            }
            %>
        </table>
      
         <c:import url="footer.jsp"/>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>
