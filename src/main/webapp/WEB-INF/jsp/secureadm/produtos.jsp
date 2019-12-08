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
        Cadastro de livro
    </h2>



            <c:if test="${message != null}">
                <h3>
                    <c:out value="${message}" />
                    <c:if test="${success == true}">
                        <br>
                        <a href="<%=request.getContextPath()%>secure/main">Volte a pagina principal</a>
                    </c:if>
                </h3>

            </c:if>
            <c:if test="${success == false}">

    <br>

    <form method="post" action="<%=request.getContextPath()%>/secureadm/lista" class="form-horizontal">
        <div class="form-group form-group-lg">
            <label for="titulo" class="col-sm-2 control-label">Titulo :</label>
            <div class="col-sm-10">
                <input type="text" name="titulo" id="titulo" class="form-control" required >
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="ano" class="col-sm-2 control-label">Ano de Lançamento:</label>
            <div class="col-sm-10">
                <input type="text" id="ano" class="form-control" name="ano"  >
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="editora" class="col-sm-2 control-label">Editora:</label>
            <div class="col-sm-10">
                <input type="text" id="editora" class="form-control" name="editora"  >
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="descricao" class="col-sm-2 control-label">Descrição:</label>
            <div class="col-sm-10">
                <textarea rows="10" cols="20" id= "descricao" name="descricao"></textarea>
            </div>
        </div>

        <h2>
            Autor

        </h2>
        <div class="form-group form-group-lg">
            <label for="nome" class="col-sm-2 control-label">Nome:</label>
            <div class="col-sm-10">
                <input type="text" id="nome" class="form-control" name="nome" pattern="[a-z\s]+$" required
                       title="Somente letras">
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="sobrenome" class="col-sm-2 control-label">Sobrenome:</label>
            <div class="col-sm-10">
                <input type="text" id="sobrenome" class="form-control" name="sobrenome" pattern="[A-z\s]+$" required
                       title="Somente letras">
            </div>
        </div>
        <h2>
            Localização

        </h2>
        <div class="form-group form-group-lg">
            <label for="setor" class="col-sm-2 control-label">Setor:</label>
            <div class="col-sm-10">
                <input type="text" id="setor" class="form-control" name="setor" pattern="[A-z\s]+$"
                       title="Somente letras">
            </div>
        </div>
        <div class="form-group form-group-lg">
            <label for="tema" class="col-sm-2 control-label">Estilo:</label>
            <div class="col-sm-10">
                <input type="text" id="tema" class="form-control" name="tema" pattern="[A-z\s]+$"
                       title="Somente letras">
            </div>
        </div>

        <h2>
            Unidades no estoque

        </h2>
        <div class="form-group form-group-lg">
            <label for="quantidade" class="col-sm-2 control-label">Unidades:</label>
            <div class="col-sm-10">
                <input type="number" id="quantidade" class="form-control" name="quantidade">
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