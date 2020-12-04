<%-- 
    Document   : listarProdutos
    Created on : 15/10/2020, 20:59:28
    Author     : santa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FiveTech</title>
    </head>
    <body>
        <div class="container-fluid row mt-5 justify-content-around">
            <div class="col-6 mt-4">
                <h1 class=" display-4 font-italic text-white">Produtos</h1>
            </div>
        </div>
        <table class="table table-bordered mt-3 table-dark">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Preço</th>
                    <th>Estoque</th>
                    <th>Categoria</th>
                    <th>Descrição</th>
                        <c:if test="${sessionScope.usuario.admin}">
                        <th colspan="2" style="text-align: center">Selecionar</th>
                        </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProdutos}" var="produto">
                    <tr style="text-align: center">
                        <td>${produto.id_produto}</td>
                        <td>${produto.nomeProduto}</td>
                        <td>${produto.precoProduto}</td>
                        <td>${produto.quantidade}</td>
                        <td>${produto.categoria}</td>
                        <td>${produto.descricao}</td>
                        <c:if test="${sessionScope.usuario.admin}">
                            <td><a class="btn btn-lg btn-danger font-italic h4 pb-2 pt-2" href="AlterarProduto?id_produto=${produto.id_produto}">Atualizar</a></td>
                            <td><a class="btn btn-lg btn-danger font-italic h4 pb-2 pt-2" href="DeletarProduto?id_produto=${produto.id_produto}">Excluir</a></td>
                        </c:if>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
   <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>


    </body>
    <style>
        
       body{
           background-color: #1f1f1f;
          opacity: 0.8;
        }
        
            footer {
        position: absolute;
        bottom: 0;
        background-color: black;
        width: 100%;
        height: 100px;
        text-align: center;
        line-height: 100px;
    }

    footer p {
        font-size: 1rem;
        margin-bottom: 1.5rem;
        color: white;
        font-weight: 100;
    }
    </style>
</html>
