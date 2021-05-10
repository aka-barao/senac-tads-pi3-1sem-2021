<%-- 
    Document   : index
    Created on : 27/04/2021, 16:02:43
    Author     : Dell i5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="container">
        <c:import url="header.jsp"/>
        <h1>Menu</h1>
        
        <br/>
        <a href="listaClientes.jsp">Listar Clientes</a>
        <br/>
        <a href="cadastrar.jsp">Cadastrar Clientes</a>
        
        <c:import url="footer.jsp"/>
    </body>
</html>
