<%-- 
    Document   : erro
    Created on : 30/04/2021, 13:45:07
    Author     : Beto
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>erro</title>
        <link rel="stylesheet" href="assets/css/erro.css"/>
    </head>
    <body>
        <c:import url="nav.jsp"/>
        
        
        <div class="row">
    <div class="col-md-12">
        
        <div class="alert alert-danger" role="alert">
  Ops, algo deu errado
        </div>
        
        <div class="cards-list">
        <a href="index.jsp" style="color: black">
            <div class="card ">
              
                <div class="card_image"> <img src="assets/img/logo.png" /> </div>
              <div class="card_title title-white"> <p>Voltar ao Início</p> </div>
              </div>
        </a>
            
            </div>
        
        
    </div>
         
 </div>
        <c:import url="footer.jsp"/>
    </body>
</html>
