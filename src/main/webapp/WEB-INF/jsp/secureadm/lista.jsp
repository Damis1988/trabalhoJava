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
<center>
    <h1>
        ${message}
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
         <th>
            Descrição
     </th>
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

          <c:forEach var="autor" items="${autorLista}">

       <tr>
            <td>
                <a href="<%=request.getContextPath()%>/secureadm/edicao?id_livro=${autor.livro.id}">Editar</a>
            </td>
            <td>
                <a href="<%=request.getContextPath()%>/secureadm/delete?id_livro=${autor.livro.id}&id_autor=${autor.id}">Deletar</a>
            </td>
           <td>
                   ${autor.id}
           </td>
            <td>
                ${autor.livro.titulo}
            </td>
            <td>
                ${autor.livro.ano}
            </td>
           <td>
                   ${autor.livro.editora}
           </td>
            <td>
           <td>
                ${autor.livro.descricao}
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
     </table>

      <br><br>

      <a href="<%=request.getContextPath()%>/secureadm/produtos">Adicionar livro</a>

       <br><br>
       <a href="<%=request.getContextPath()%>/login/logout">Sair</a>


</center>
</body>
</html>