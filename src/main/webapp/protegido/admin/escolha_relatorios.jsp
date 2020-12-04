<%-- 
    Document   : escolha_relatorios
    Created on : 28/10/2020, 09:59:10
    Author     : santa
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
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">FiveTech</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active text-white" href="<c:url value="/RelatorioPorCliente"/>">Relatorio P/Cliente</a>
      <a class="nav-link text-white" href="<c:url value="/RelatorioPorFilial"/>">Relatorio P/Filial</a>
      <a class="nav-link text-white" href="<c:url value="/RelatorioCategoriaProduto"/>">Relatorio P/Categoria</a>
     <a class="nav-link text-white" href="<c:url value="/protegido/index.jsp"/>">Voltar</a>
    </div>
  </div>
</nav>
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
