%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <h2>
        Bem Vindo!!!!!
        Deseja consultar e requisitar emprestimo de livros, apenas login para ter acesso ao nosso acervo
    </h2>
    <body>
    <br><br>
               <a href="<%=request.getContextPath()%>/login/doLoginAdm">Fazer Login ADM</a>
               <br><br>
               <a href="<%=request.getContextPath()%>/login/doLogin">Fazer Login</a>
               <br><br>
                <a href="<%=request.getContextPath()%>/usuario/criacao">Criar Usuario</a>
    </body>
</html>