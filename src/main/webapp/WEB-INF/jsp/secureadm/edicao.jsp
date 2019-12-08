<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<center>
    <h1>
         Edicao de Livro
    </h1>

     ${message}

    <br><br>
    <form method="post" action="<%=request.getContextPath()%>/secureadm/edicao">
        Name:

        <input type="text" name="titulo" value="${livro.titulo}"  >

        <br><br>
        <input type="text" name="ano" value="${livro.ano}"  >

        <br><br>
        <input type="text" name="editora" value="${livro.editora}"  >

        <br><br>
        <textarea rows="10" cols="20" id= "descricao" name="descricao" value="${livro.descricao}"></textarea> 

        <br><br>
        <input type="text" name="nome" value="${autor.nome}"  >

        <br><br>
        <input type="text" name="sobrenome" value="${autor.sobrenome}"  >

        <br><br>
        <input type="text" name="nome" value="${estoque.quantidade}"  >
        
        <input type="submit" value="Save" />
    </form>

     <br><br>
     <a href="<%=request.getContextPath()%>/livro/lista">Biblioteca Lista</a>
     <br><br>
     <a href="<%=request.getContextPath()%>/login/logout">Logout</a>

</center>
</body>
</html>