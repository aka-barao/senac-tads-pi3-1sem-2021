<%-- 
    Document   : nav
    Created on : 07/05/2021, 23:18:11
    Author     : monteiro
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="assets/css/home.css"/>
           
       <!-- CSS only -->
       
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
       <script src="${pageContext.request.contextPath}/lib/jquery-3.6.0.min.js" type="text/javascript"></script>
    </head>
    <body>
         <nav class="navbar navbar-light">
        <div id="ulNav" class="container-fluid">
         
            <a class="navbar-brand" rel="home" href="index.jsp">
                <img id="navLogo" style="max-width:100px; margin-top: -7px;"
                     src="assets/img/facebook_cover_photo_2.png">
            </a>
            <a href="homeCliente.jsp">Clientes</a> 
            <a href="homeProdutos.jsp">Produtos</a> 
            <a href="homeVenda.jsp">Vendas</a> 
            <a href="homeRelatorios.jsp">Relatórios</a> 
            <a style="color:red;" href="DeslogarServlet">Logout</a> 
              
          
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Pesquisar" aria-label="Search">
            <button id="botaoPesquisar" class="btn btn-outline-success" type="submit">Pesquisar</button>
          </form>
        </div>
      
      </nav>
        <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>  
    </body>
</html>
