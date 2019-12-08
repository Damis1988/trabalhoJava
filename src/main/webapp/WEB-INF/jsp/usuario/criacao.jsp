<%@ page language="java" pageEncoding="UTF-8"%>
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
<div class="container">
    <h2>
        Crie sua conta
    </h2>



            <c:if test="${message != null}">
                <h3>
                    <c:out value="${message}" />
                    <c:if test="${success == true}">
                        <br>
                        <a href="<%=request.getContextPath()%>/login/doLogin">Login here</a>
                    </c:if>
                </h3>

            </c:if>
            <c:if test="${success == false}">

    <br>
    <h2>Personal information:</h2>
    <form method="post" action="<%=request.getContextPath()%>/usuario/criacao" class="form-horizontal">
        <div class="form-group form-group-lg">
            <label for="nome" class="col-sm-2 control-label">Nome:</label>
            <div class="col-sm-10">
                <input type="text" name="nome" id="nome" class="form-control" >
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="sobrenome" class="col-sm-2 control-label">Sobrenome:</label>
            <div class="col-sm-10">
                <input type="text" id="sobrenome" class="form-control" name="sobrenome"  >
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="rua" class="col-sm-2 control-label">Endereço:</label>
            <div class="col-sm-10">
                <input type="text" id="rua" class="form-control" name="rua" >
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="numero" class="col-sm-2 control-label">Numero:</label>
            <div class="col-sm-10">
                <input type="number" id="numero" class="form-control" name="numero">
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="complemento" class="col-sm-2 control-label">Complemento:</label>
            <div class="col-sm-10">
                <input type="text" id="complemento" class="form-control" name="complemento">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="bairro" class="col-sm-2 control-label">Bairro:</label>
            <div class="col-sm-10">
                <input type="text" id="bairro" class="form-control" name="bairro" >
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="cidade" class="col-sm-2 control-label">Cidade:</label>
            <div class="col-sm-10">
                <input type="text" id="cidade" class="form-control" name="cidade"  >
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="cep" class="col-sm-2 control-label">Cep:</label>
            <div class="col-sm-10">
                <input type="text" id="cep" class="form-control" name="cep" >
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="email" class="col-sm-2 control-label">E-mail:</label>
            <div class="col-sm-10">
                <input type="email" id="email" class="form-control" name="email"  >
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="password" class="col-sm-2 control-label">Password:</label>
            <div class="col-sm-10">
                <input type="password" id="password" class="form-control" name="password" >
            </div>
        </div>

        <div style="float:right">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>

    </c:if>

</div>

<br><br>
</body>
</html>