<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<center>
    <h1>
        Biblioteca
    </h1>


    <table>
        <tr>
            <th>
                Edicao Livros
            </th>
            <th>
                Deletar Livros
            </th>
            <th>
                Titulo
            </th>
            <th>
                Ano
            </th>
            <th>
                Editora
            </th>
            <th>
                Descrição
            </th>
            <th>
                Nome autor
            </th>
            <th>
                Sobrenome
            </th>
            <th>
                Unidades
            </th>
            <th>
                Id
            </th>
        </tr>
        <c:forEach var="livro" items="${livroLista}">
            <tr>
                <td>
                        ${livro.titulo}
                </td>
                <td>
                        ${livro.ano}
                </td>
                <td>
                        ${livro.editora}
                </td>
                <td>
                        ${livro.descricao}
                </td>
                <td>
                        ${livro.nome}
                </td>
                <td>
                        ${livro.sobrenome}
                </td>
                <td>
                        ${livro.quantidade}
                </td>

            </tr>
        </c:forEach>
    </table>

    <br><br>

    <br><br>
    <a href="<%=request.getContextPath()%>/secure/main">Voltar a pagina inicial</a>

    <br><br>
    <a href="<%=request.getContextPath()%>/login/logout">Logout</a>

</center>
</body>
</html>
