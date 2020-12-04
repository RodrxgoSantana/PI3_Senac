<%-- 
    Document   : realizar_venda
    Created on : 08/10/2020, 18:57:27
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
            <div class="col-5 mt-4">
                <h1 class=" align-self-center font-italic text-white col-10">Venda</h1>
            </div>
        </div>
        <form class="container-fluid mt-5" action="<c:url value="/RealizarVenda"/>" method="POST">
            <div class="form-group row justify-content-center">
                <label class="col-2 align-self-center font-italic h3 mr-n5 text-white">Cliente</label>

                <select name="id_cliente" class="form-control-lg col-8 ml-n5" type="text">
                    <c:forEach items="${listaClientes}" var="cliente">
                        <option value="${cliente.id_cliente}">${cliente.nome_cliente}</option>
                    </c:forEach>
                </select> 
                
            </div>
            <div class="form-group row justify-content-center">
                <label class="col-2 align-self-center font-italic h3 text-white">Vendedor</label>
                <select class="form-control-lg col-8 ml-n5" name="id_vendedor" >
                    <option value="1">Rodrigo Santana</option>
                    <option value="2">Lucas Terto</option>
                    <option value="4">Luiz Eduardo</option>
                    <option value="5">Guilherme Galesso</option>
                    <option value="6">Matheus Alarcon</option>
                </select>
            </div>

            <div class="form-group row justify-content-around">
                <div class="row col-8 justify-content-center">

                    <label class="col-3 align-self-center font-italic text-white h3" >Produto</label>

                    <select class="form-control-lg col-6" name="id_produto">
                        <c:forEach items="${listaProdutos}" var="produto">
                            <option value="${produto.id_produto}">${produto.nomeProduto}</option>
                        </c:forEach>
                    </select>

                </div>
                <div class="row col-4 justify-content-center">
                    <label class="col-6 align-self-center font-italic h3 text-white">Quantidade</label>
                    <input name="qtdVenda" class="form-control-lg col-4" type="number">
                </div>               
            </div>
            &nbsp;   
            <div class="container-fluid">
                <div class="row mt-5 justify-content-around">
                    <input class="btn btn-lg btn-danger col-5 font-italic h3 pb-2 pt-2" type="submit"
                           value="Concluir">
                    <a href="<c:url value="protegido/index.jsp"/>" class="btn btn-lg btn-danger col-5  font-italic h3 pb-2 pt-2"
                       >Cancelar</a>
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
