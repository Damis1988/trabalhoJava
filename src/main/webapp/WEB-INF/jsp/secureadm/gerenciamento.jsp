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
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
    <script type="text/javascript">
        $(function(){
            var itens = $("#quantidade li").replaceWith("<h4>atualizado</h4>");
        });
    </script>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css" integrity="sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h2>
        Gerenciamento de Entrada e Saida do Livro
    </h2>

    <c:if test="${message != null}">
        <h3>
            <c:out value="${message}" />
            <c:if test="${success == true}">
                <br>
                <a href="<%=request.getContextPath()%>/secureadm/main">Login here</a>
            </c:if>
        </h3>

    </c:if>
    <c:if test="${success == false}">

    <form method="post" action="<%=request.getContextPath()%>/gerenciamento" class="form-horizontal">
        <div class="block">
            <label for="dataInicial">From:</label>
            <input type="date" class="date" name="dateInicial" id="dataInicial" value="" />

        </div>

        <div class="block">
            <label for="dataFinal">To:</label>
            <input type="date" class="date" name="dataFinal" id="dataFinal" value="" />

        </div>

        <h2>Prazo:</h2>

        <dl id="prazo">
        </dl>
        <h3>Lista de itens</h3>
        <ul id="quantidade">
            <li>Primeiro item</li>
        </ul>



        <div style="float:right">
            <button type="submit" class="btn btn-primary">Submeter</button>
        </div>
    </form>
    </c:if>

    <br ><br >
    <a href="<%=request.getContextPath()%>secureadm/lista"></a>

</div>

</body>
</html>