<%-- 
    Document   : sucesso
    Created on : 27/04/2021, 18:26:12
    Author     : Dell i5
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERRO!</title>
    </head>
    <body>
        <h1 style="color:red">Ops, algo deu errado!</h1>
        <p>${msgErro}<p/>
        <br/>
        <c:import url="footer.jsp"/>
    </body>
</html>
