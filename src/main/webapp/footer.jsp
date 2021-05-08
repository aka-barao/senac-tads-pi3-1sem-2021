<%-- 
    Document   : footer
    Created on : 07/05/2021, 22:44:55
    Author     : monteiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="assets/css/home.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    </head>
    <body>
       <div id="footer" class="container-fluid shadow mx-auto text-center">


        <div class="row">
    
            <div class="col-md-3 col-sm-6 col-xs-12 md-mb-30 sm-mb-30 mt-4">
                <h5><b>INSTITUCIONAL</b> </h5>
                <ul class="list-unstyled text-center py-1 border:none ">
    
                    <li>
                        <a routerLink="/sobre-nos">Quem somos</a>
                    </li>
    
                    <li>
                        <a routerLink="/termos-de-uso">Termo de uso</a>
                    </li>
    
                    <li>
                        <a routerLink="/politicas">Políticas</a>
                    </li>
    
                </ul>
            </div>
    
            <div class="col-md-3 col-sm-6 col-xs-12 md-mb-30 sm-mb-30 mt-4">
                <h5><b>ATENDIMENTO</b></h5>
                <ul class="list-unstyled text-center py-1 border:none ">
                    <li>
                        <!-- <i class="fa fa-phone mb-2 fa-fw"></i> -->
                        <a routerLink="/faq">Tire suas dúvidas</a>
                    </li>
                    <li>
                        <!-- <i class="fa fa-envelope fa-fw"></i>-->
                        <li>
                            <a routerLink="/contato">Onde estamos localizados</a>
                        </li>
    
                        <li>
                            <a href="mailto:jefimpjjn@gmail.com">esperança@gmail.com</a>
                        </li>
    
                </ul>
            </div>
    
    
            <div class="col-md-3 col-sm-6 col-xs-12 md-mb-30 sm-mb-30 mt-4">
                <h5><b>CONHEÇA MAIS A ESPERANÇA:</b></h5>
                <a id="btBox" class="btn d-md-inline-block mt-3" routerLink="/cadastrar-usuarios"> Registre-se!</a>
            </div>
    
    
    
            <div class="col-md-3 col-sm-6 col-xs-12 sm-mb-30 mt-4">
                <h5 class="pb-1"><b>SIGA-NOS NAS REDES SOCIAIS!</b></h5>
                <a target="_blank" href="https://www.facebook.com/">
                    <fa-icon [icon]="faFacebook" class="faFacebook fa-2x p-3"></fa-icon>
                </a>
    
                <a target="_blank" href="https://www.instagram.com/fancyboxbrasil/">
                    <fa-icon [icon]="faInstagram" class="faInstagram fa-2x p-3"></fa-icon>
                </a>
    
                <a target="_blank" href="https://youtu.be/NyVbolLobrY">
                    <fa-icon [icon]="faYoutube" class="faYoutube fa-2x p-3"></fa-icon>
                </a>
            </div>
    
    
        </div>
        <div id="footer"  class="footer-copyright  w-100 text-center py-3">&copy; 2020 Copyright <a routerLink="/home"> Esperança</a> </div>
    </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
 
    </body>
</html>
