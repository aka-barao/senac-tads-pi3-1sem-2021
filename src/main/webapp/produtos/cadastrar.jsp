<%-- 
    Document   : cadastrar
    Created on : 01/05/2021, 12:47:11
    Author     : Beto
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
    </head>
    <body>
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
        
    </body>
</html>
