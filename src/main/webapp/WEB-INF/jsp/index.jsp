<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

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
               <a href="<%=request.getContextPath()%>/login/doLogin">Fazer Login</a>
               <br><br>
                <a href="<%=request.getContextPath()%>/usuario/criacao">Criar Usuario</a>
    </body>
</html>