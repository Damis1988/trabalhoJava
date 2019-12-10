<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
                Id
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
                Nome
            </th>
            <th>
                Sobrenome
            </th>
            <th>
                Estoque
            </th>
        </tr>
        <c:forEach var="livro" items="${livroLista}">
            <c:forEach var="autor" items="${autorLista}">
                <c:forEach var="estoque" items="${estoqueLista}">
                    <tr>

                        <td>
                                ${livro.id}
                        </td>
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
                                ${autor.nome}
                        </td>
                        <td>
                                ${autor.sobrenome}
                        </td>
                        <td>
                                ${estoque.quantidade}
                        </td>
                    </tr>
                </c:forEach>
            </c:forEach>
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
