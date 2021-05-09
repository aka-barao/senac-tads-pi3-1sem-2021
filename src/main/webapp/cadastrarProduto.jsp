<%-- 
    Document   : cadastrar
    Created on : 01/05/2021, 12:47:11
    Author     : Beto
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../assets/css/cadastrar.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="../assets/img/pinterest_profile_image.png" />
        <title>Produto</title>
    </head>
    <body>
        <c:import url="nav.jsp"/>
        <h1>Cadastrar Produto:</h1>
        
        <form action="CadastrarProdutoServlet" method="POST">
            <label>Nome</label><br/>
            <input type="text" name="nome" required="true"/><br/><br/>
            <label>Data Fabricação</label><br/>
            <input type="date" name="data_fabricacao" required="true"/><br/><br/>
            <label>Data Vencimento</label><br/>
            <input type="date" name="data_vencimento" required="true"/><br/><br/>
            <label>Preço</label><br/>
            <input type="text" name="preco" required="true"/><br/><br/>
            
            <button type="submit">Cadastrar</button>
        </form>
        <c:import url="footer.jsp"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>
