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
    <form method="post" action="<%=request.getContextPath()%>/secureadm/edicao" class="form-horizontal">
        Titulo:

        <input type="text" name="titulo" value="${livro.titulo}"  >

        <br><br>
        Ano :
        <input type="text" name="ano" value="${livro.ano}"  >

        <br><br>
        Editora :
        <input type="text" name="editora" value="${livro.editora}"  >

        <br><br>
        Descrição :
        <textarea rows="10" cols="20" id= "descricao" name="descricao" value="${livro.descricao}"></textarea> 

        <br><br>
        Nome :
        <input type="text" name="nome" value="${autor.nome}"  >

        <br><br>
        Sobrenome :
        <input type="text" name="sobrenome" value="${autor.sobrenome}"  >

        <input type="hidden" name="id_autor" value="${autor.id}"  >
        <input type="hidden" name="id_livro" value="${livro.id}"  >
        <input type="submit" value="Save" />
    </form>

     <br><br>
     <a href="<%=request.getContextPath()%>/livro/lista">Biblioteca Lista</a>
     <br><br>
    <<a href="<%=request.getContextPath()%>/login/logout">Sair</a>



</center>
</body>
</html>