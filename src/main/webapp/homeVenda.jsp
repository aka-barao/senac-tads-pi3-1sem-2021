<%-- 
    Document   : homeVenda
    Created on : 09/05/2021, 20:10:59
    Author     : monteiro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Esperaça</title>
        <link rel="stylesheet" href="assets/css/homeVendas.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="assets/img/pinterest_profile_image.png" />
    </head>
    <body>
        <c:import url="nav.jsp"/>
     
       <div class="parallaxHomeVendas"></div>
       <div  class="container-ls m-5">
    <div class="row">
        <div class="col col-md-6 col-lg-3 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <!-- DIV VAZIA PRA DAR ESPAÇAMEENTO AOS BOTÔES -->
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <button disabled="disabled" id="botao1" type="button" class="btn btn-outline-primary"><a href="" style="color: white">Venda</a></button>
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <button id="botao2" type="button" class="btn btn-outline-primary"><a href="relatorioVenda.jsp" style="color: white">Relatório de Vendas</a></button>
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <!-- DIV VAZIA PRA DAR ESPAÇAMEENTO AOS BOTÔES -->
            </div>
        </div>
    </div>
</div>
       
        <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
 <c:import url="footer.jsp"/>
    </body>
</html>