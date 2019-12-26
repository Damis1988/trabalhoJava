%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css" integrity="sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR" crossorigin="anonymous">

</head>
<body>
<center>
    <h1>
         Editar Usuario
    </h1>

    <c:if test="${message != null}">
        <h3>
            <c:out value="${message}" />
            <c:if test="${success == true}">
                <br>
                <a href="<%=request.getContextPath()%>/secure/main">Bem vindo de volta</a>
            </c:if>
        </h3>

    </c:if>
    <c:if test="${success == false}">

    <br><br>
    <form method="post" action="<%=request.getContextPath()%>/usuario/secure/edicaousuario" class="form-horizontal">
        Usuario email:
        <input type="email" name="email" value="${usuario.email}"  >
        <br><br>
        Nome:
        <input type="text" name="nome" value="${usuario.nome}"  >
        <br><br>
        Sobrenome
        <input type="text" name="sobrenome" value="${usuario.sobrenome}"  >
        <br><br>
        Idade
        <input type="text" name="idade" value="${usuario.idade}"  >
        <br><br>
        Rua
        <input type="text" name="rua" value="${usuario.rua}"  >
        <br><br>
        Numero
        <input type="text" name="numero" value="${usuario.numero}"  >
        <br><br>
        Complemento
        <input type="text" name="complemento" value="${usuario.complemento}"  >
        <br><br>
        Bairro
        <input type="text" name="bairro" value="${usuario.bairro}"  >
        <br><br>
        Cidade
        <input type="text" name="cidade" value="${usuario.cidade}"  >
        <br><br>
        Cep
        <input type="text" name="cep" value="${usuario.cep}" onkeypress="$(this).mask('00000-000')"  >

        <input type="submit" value="Save" />
    </form>

     <br><br>
     <a href="<%=request.getContextPath()%>/secure/main">Pagina Principal</a>
     <br><br>
     <a href="<%=request.getContextPath()%>/login/logout">Logout</a>
    </c:if>
</center>
</body>
</html>