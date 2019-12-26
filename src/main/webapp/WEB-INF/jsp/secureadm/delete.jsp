<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
        <c:if test="${message != null}">
            <h3>
                <c:out value="${message}" />
                <c:if test="${success == true}">
                    <br>
                    <a href="<%=request.getContextPath()%>/secure/main">Volte a pagina principal</a>
                </c:if>
            </h3>

        </c:if>
        <c:if test="${success == false}">

    <br> <br>


    <form method="post" action="<%=request.getContextPath()%>/secureadm/delete" class="form-horizontal">


        <input type="hidden" name="id_autor" value="${autor.id}"  >
        <input type="hidden" name="id_livro" value="${livro.id}"  >
    <br> <br>
    <input type="submit" value="Save" />
    </form>

    <br> <br>

    <br><br>
    <a href="<%=request.getContextPath()%>/login/logout">Logout</a>

    <br> <br>

    </p>

</div>
</c:if>
</body>
</html>
