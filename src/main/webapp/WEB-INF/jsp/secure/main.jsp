<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css" integrity="sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <br> <br>

    <br> <br>

    <p class="text-success">
        Welcome ${usuario.name}!
    </p>
    <br> <br>

    <p class="text-success">
        Livro ${bibliotec.tituloEmprestado}!
        Dia da Retirada ${biblioteca.dataInicio}!
        Data da Entrega ${biblioteca.dataFinal}!
        Prazo para entrega ${biblioteca.prazo}!
    </p>
    <br> <br>

    <a href="<%=request.getContextPath()%>/secure/edicao">Edicao </a>
    <br><br>
    <a href="<%=request.getContextPath()%>/secure/lista">Buscar Livro</a>
    <br><br>
    <a href="<%=request.getContextPath()%>/login/logout">Logout</a>

    <br> <br>


    </p>

</div>

</body>
</html>
