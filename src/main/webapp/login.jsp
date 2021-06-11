<%-- 
    Document   : login
    Created on : 07/06/2021, 19:14:14
    Author     : Dell i5
--%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/login.css"/>
        <title>Login</title>
    </head>
    <c:import url="nav.jsp"/>
    <body>
 
         
        
        
 <div class="row">
  <div class="col-md-4"></div>
  
  
  
  
  
  <div class="col-md-4"> <c:if test="${param.loginInvalido}" >
            <div class="alert alert-danger" role="alert">
                Login inválido!
            </div>
         </c:if>
         <form action="LoginServlet" method="POST">
                <label class="form-label">Usuario</label><br/>
                <input type="text" name="login" required="true" class="form-control" required/> <br/><br/>
                <label class="form-label">Senha</label><br/>
                <input type="password" name="senha" required="true" class="form-control" required/><br/><br/>
               
                <button type="submit" class="btn btn-primary" >Enviar</button>
            </form>
  </div>
  
  
  
  
  <div class="col-md-4"></div>
  

</div>
        
       
    </body>
</html>