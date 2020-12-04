<%-- 
    Document   : relatorios
    Created on : 08/10/2020, 18:57:56
    Author     : yurin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FiveTech</title>
    </head>
    <body>
        <div class="container-fluid row mt-5 justify-content-around">
            <div class="col-6 mt-4">
                <h1 class=" display-5 font-italic text-white">Relatorio de P/Filial</h1>
            </div>
        </div>
        <div class="table-reponsive container-fluid mt-3">
            <table class="table table-bordered mt-3 table-dark">
                <thead>

                    <tr>
                        <th class="font-italic text-white text-center h5">Filial</th>                       
                        <th class="font-italic text-white text-center h5">Vendedor</th>
                        <th class="font-italic text-white text-center h5">Produto</th>
                        <th class="font-italic text-white text-center h5">Quantidade</th>
                        <th class="font-italic text-white text-center h5">Data</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${relatorioPorFilial}" var="relatorio">
                        <tr>
                            <td>${relatorio.filial}</td>
                            <td>${relatorio.vendedor}</td>
                            <td>${relatorio.produto}</td>
                            <td>${relatorio.qtdVenda}</td>
                            <td>${relatorio.data_venda}</td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>

        </div>
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
