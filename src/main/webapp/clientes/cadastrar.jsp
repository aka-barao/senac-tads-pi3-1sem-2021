<%-- 
    Document   : cadastrar
    Created on : 27/04/2021, 17:06:24
    Author     : Dell i5
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body class="container">
        <c:import url="header.jsp"/>
        
        <c:if test="${empty cliente}">
        <form action="CadastrarClienteServelet.java" method="POST">
            <label class="form-label">Nome</label>
            <input type="text" name="nome" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">RG</label>
            <input type="text" name="rg" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">CPF</label>
            <input type="text" name="cpf" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Cep</label>
            <input type="text" name="cep" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Endereço</label>
            <input type="text" name="endereco" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Telefone</label>
            <input type="text" name="telefone" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Celular</label>
            <input type="text" name="celular" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Email</label>
            <input type="text" name="email" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Estado Civil</label>
            <input type="text" name="estado_civil" required="true" class="form-control" required/><br/><br/>
            <label class="form-label">Data_nascimento</label>
            <input type="date" name="data_nascimento" required="true" class="form-control" required/><br/><br/>
            
            <button type="submit" class="btn btn-primary">Cadastrar</button> 
        </form>
        </c:if>
        <c:if test="${not empty cliente}">
        <form action="AlterarClienteServelet" method="POST">
            <label>Nome</label>
            <input type="text" name="nome" required="true" value="${cliente.nome}"/><br/><br/>
            
            <label>RG</label>
            <input type="text" name="rg" required="true" value="${cliente.rg}"/><br/><br/>
            <label>CPF</label>
            <input type="text" name="cpf" required="true" value="${cliente.cpf}" readonly="true"/><br/><br/>
            <label>Cep</label>
            <input type="text" name="cep" required="true" value="${cliente.cep}"/><br/><br/>
            <label>Endereço</label>
            <input type="text" name="endereco" required="true" value="${cliente.endereço}"/><br/><br/>
            <label>Telefone</label>
            <input type="text" name="telefone" required="true" value="${cliente.telefone}"/><br/><br/>
            <label>Celular</label>
            <input type="text" name="celular" required="true" value="${cliente.celular}"/><br/><br/>
            <label>Email</label>
            <input type="text" name="email" required="true" value="${cliente.email}"/><br/><br/>
            <label>Estado Civil</label>
            <input type="text" name="estado_civil" required="true" value="${cliente.estado_civil}"/><br/><br/>
            <label>Data_nascimento</label>
            <input type="date" name="data_nascimento" required="true" value="${cliente.data_nascimento}"/><br/><br/>
            
            <button type="submit">Atualizar</button> 
        </form>
        </c:if>
        <c:import url="footer.jsp"/>
        
    </body>
</html>
