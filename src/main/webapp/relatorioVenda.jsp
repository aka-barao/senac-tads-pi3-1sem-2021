<%-- 
    Document   : venda
    Created on : 08/05/2021, 00:08:20
    Author     : monteiro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Esperaça</title>
        <link rel="stylesheet" href="assets/css/venda.css"/>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="assets/img/pinterest_profile_image.png" />
    </head>
    <body>
        <c:import url="nav.jsp"/>
        <div class="parallax3"></div>
        <div class="container">

        <table class="table">
  <thead>
    <tr>
      <th scope="col">Foto Produto</th>
      <th scope="col">Nome</th>
      <th scope="col">Tipo</th>
      <th scope="col">Qtd</th>
      <th scope="col">Valor</th>
      <th scope="col">Desconto</th>
      <th scope="col">Valor Final</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
     <tr>
      <th scope="row">4</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
       <div class="col-lg-12" style="text-align: right;">
    <button type="button" class="btn btn-outline-success">Confirmar</button>
</div>
</div>
        
        <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
 <c:import url="footer.jsp"/>
    </body>
</html>
