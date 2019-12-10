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
       Bem Vindo a Biblioteca
    </h2>

    <c:if test="${message != null}">
        <h3>
            <c:out value="${message}" />
        </h3>

    </c:if>


     <form:form servletRelativeAction="/login/dologin" method="post">
        <div class="form-group form-group-lg">
            <label> Email </label>
            <div class="col-sm-10">
                <input type="text" name="username"  class="form-control" placeholder="Username">
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label>Password:</label>
            <div class="col-sm-10">
                <input type="password"  class="form-control" name="password" placeholder="Password"  >
            </div>
        </div>
         <div class="form-group form-group-lg">
             <label>Perfil:</label>
             <div class="col-sm-10">
                 <input type="admin"  class="form-control" name="admin"  >
             </div>
         </div>

        <div style="float:right">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
     </form:form>

    <br ><br >
    <a href="<%=request.getContextPath()%>/usuario/criacao">Cria sua conta</a>

</div>

</body>
</html>