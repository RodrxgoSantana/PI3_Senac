<%-- 
    Document   : alterarProduto
    Created on : 17/10/2020, 21:04:08
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
            <div class="col-4 ">
                <a href="<c:url value="/protegido/index.jsp"/>"/> <img class="" src="<c:url value="/img/logo.PNG"/>" alt=""> </a>
            </div>
            <div class="col-7 mt-4">
                <h1 class=" display-5 font-italic text-white">Alterar Produto: ${produto.id_produto}</h1>
            </div>
        </div>
        <form class="container-fluid mt-5" action="<c:url value="/AlterarProduto"/>" method="POST">
            <div class=" form-group row justify-content-center">
                <div class=" row col-8 justify-content-around">
                    <label class="col-3 align-self-center font-italic h3 text-white">Nome</label>
                    <input name="nomeProduto" value="${produto.nomeProduto}" class="form-control-lg col-8" type="text">
                </div>
                <div class="row col-3 justify-content-center">
                    <label class="col-8 align-self-center font-italic h3 text-white">ID</label>
                    <input name="id_produto" value="${produto.id_produto}" class="form-control-lg col-3" readonly=“true”>
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <div class="row col-6 justify-content-around">
                    <label class="col-3 align-self-center font-italic h3 text-white">Preço</label>
                    <input name="precoProduto" value="${produto.precoProduto}" class="form-control-lg col-4" type="number">
                </div>
                <div class="row col-6 justify-content-start">

                    <label class="col-4 align-self-center font-italic h3 text-white">Categoria</label>
                    <select class="form-control-lg col-4" name="categoria" value="${produto.categoria}">
                        <option value="Default">--></option>
                        <option value="Destilados">Destilados</option>
                        <option value="Vinhos">Vinhos</option>
                        <option value="Cervejas">Cervejas</option>
                        <option value="Refrigerantes">Refrigerantes</option>
                        <option value="Sucos">Sucos</option>

                    </select>
                </div>
            </div>
            <div class="form-group row justify-content-start">
                <div class="row col-12 justify-content-center">
                    <label class="col-3 align-self-start font-italic h3 text-white">Descrição</label>
                    <textarea name="descricao" value="${produto.descricao}" class="col-8" rows="9"></textarea>
                </div>

            </div>

            <div class="container-fluid">
                <div class="row mt-5 justify-content-around">
                    <div class="row col-12 mt-5 justify-content-around">
                        <button class="btn btn-lg btn-danger col-5 font-italic h4 pb-2 pt-2" 
                                type="submit">Alterar</button>

                        <a class="btn btn-lg btn-danger col-5 font-italic h4 pb-2 pt-2" 
                           href="<c:url value="/protegido/index.jsp"/>">Cancelar</a>
                    </div>
                </div>
            </div>
        </form>
                    
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