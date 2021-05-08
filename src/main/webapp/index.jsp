<%-- 
    Document   : index
    Created on : 30/04/2021, 23:30:49
    Author     : Beto
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Esperaça</title>
        <link rel="stylesheet" href="assets/css/home.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="assets/img/pinterest_profile_image.png" />
    </head>
    <body>
        <c:import url="nav.jsp"/>
        <div class="cointainer">

    <div class="parallax"></div>

 <!--  -->
 <!-- PASSO A PASSO DA COMPRA E CHEGADA DO PRODUTO -->
<div  class="container-ls m-5">
    <div class="row">
        <div class="col col-md-6 col-lg-3 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <img src="https://i.imgur.com/lUXYNKE.png" class="img-fluid imagens-card" style="border-radius: 60%;" alt="..." />
                <div class="card-body align-center">
                    <p class="card-title text-center" style="font-weight: bold;">CADASTRO</p>
                    <p class="card-text text-center">
                        Faça o seu cadastro e tenha acesso a descontos.
                    </p>
                </div>
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <img class="img1" src="https://i.imgur.com/tRawFyr.png" class="img-fluid imagens-card" style="border-radius: 60%;" alt="..." />
                <div class="card-body align-center">
                    <p class="card-title text-center" style="font-weight: bold;">PRODUTOS</p>
                    <p class="card-text text-center">
                        Escolha os produtos essenciais para você.
                    </p>
                </div>
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <img class="img1" src="https://i.imgur.com/cw9HbrT.png" class="img-fluid imagens-card" style="border-radius: 60%;" alt="..." />
                <div class="card-body align-center">
                    <p class="card-title text-center " style="font-weight: bold;">ENTREGA</p>
                    <p class="card-text text-center">Escolha a melhor forma de entrega para você.
                        <br> Envio rápido e sem estresse!</p>
                </div>
            </div>
        </div>

        <div class="col col-md-6 col-lg-3 border-0 d-flex justify-content-around">
            <div class="card border-0 mx-auto" style="width: 12rem;">
                <img src="https://i.imgur.com/Fgk8Poq.png" class="img-fluid imagens-card" style="border-radius: 60%;" alt="..." />
                <div class="card-body align-center">
                    <p class="card-title text-center " style="font-weight: bold;">SUA COMPRA CHEGOU</p>
                    <p class="card-text text-center">
                       Eba! Aproveite seus produtos e envie seu feedback para a gente! &#10084;
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--  -->
<div class="parallax2"></div>

 
</div>

        <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
 <c:import url="footer.jsp"/>
    </body>
</html>
