<%-- 
    Document   : cadastrar
    Created on : 01/05/2021, 12:47:11
    Author     : Beto
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/cadastrar.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="icon" type="imagem/png" href="../assets/img/pinterest_profile_image.png" />
        <title>Produto</title>
    </head>
    <body>
        <c:import url="nav.jsp"/>
        
        <c:if test="${empty produto}">
            <div class="parallaxProd"></div>
                <div class="container">
                    <br><br>
                    <h1>Cadastrar Produto:</h1>
                    <br><br>

                <form action="CadastrarProdutoServlet" method="POST">
                    <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Nome</span>
                <input type="text" class="form-control" name="nome" required="true" >

                </div>
                </div>
           </div>


             <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Data Fabricação</span>
                <input type="date" class="form-control" name="data_fabricacao" required="true" >

                </div>
                </div>
           </div>      

            <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Data Vencimento</span>
                <input type="date" class="form-control" name="data_vencimento" required="true" >

                </div>
                </div>
           </div>  

           <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Preço $</span>
                <input type="text" class="form-control" name="preco" required="true" >
                <span class="input-group-text">.00</span>
                </div>
                </div>
           </div>
                <br><br>

                <button id="botaoCadastrar" type="submit" class="btn btn-outline-primary">Cadastrar</button>
                </form>
            </div>

                <br><br><br>
        </c:if>
        
        <c:if test="${not empty produto}">
            <div class="parallaxProd"></div>
                <div class="container">
                    <br><br>
                    <h1>Atualizar Produto:</h1>
                    <br><br>

                <form action="AtualizarProdutoServlet" method="POST">
                    <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Nome</span>
                <input type="text" class="form-control" name="nome" required="true" value="${produto.nome}" >

                </div>
                </div>
           </div>


             <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Data Fabricação</span>
                <input type="date" class="form-control" name="data_fabricacao" required="true" value="${produto.dataFabricacao}">

                </div>
                </div>
           </div>      

            <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Data Vencimento</span>
                <input type="date" class="form-control" name="data_vencimento" required="true" value="${produto.dataVencimento}">

                </div>
                </div>
           </div>  

           <div class="row">
                <div class="col-md-5">
                <div class="input-group mb-3">
                <span class="input-group-text">Preço $</span>
                <input type="text" class="form-control" name="preco" required="true" value="${produto.preco}">
                <span class="input-group-text">.00</span>
                </div>
                </div>
           </div>
                <br><br>

                <button id="botaoCadastrar" type="submit" class="btn btn-outline-primary">Atualizar</button>
                </form>
            </div>

                <br><br><br>   
        </c:if>
              
        
        
        
        <c:import url="footer.jsp"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>
