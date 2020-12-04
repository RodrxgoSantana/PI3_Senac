<%-- 
    Document   : cadastro_produto
    Created on : 08/10/2020, 18:57:07
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
        <div class="container-fluid row mt-5 justify-content-around">
            <div class="col-6 mt-4">
                <h1 class=" display-4 font-italic text-white">Cadastrar Produto</h1>
            </div>
        </div>
        <form class="container-fluid mt-5" action="<c:url value="/CadastrarProduto"/>" method="POST">
            <div class="form-group row justify-content-center">
                <label class="col-2 align-self-center font-italic h3 ml-n4 text-white">Produto</label>
                <input name="nomeProduto" class="form-control-lg col-8" type="text">
            </div>
            <div class="form-group row justify-content-center">
                <div class="row col-4 justify-content-between">
                    <label class="col-5 align-self-center font-italic h3 text-white">Preço</label>
                    <input name="precoProduto" class="form-control-lg col-4" type="number">
                </div>
                <div class="row col-4 justify-content-around">
                    <label class="col-3 align-self-center font-italic h3 text-white">Categoria</label>

                    <select class="form-control-lg col-4" name="categoria" type="text">
                       <option value="Default">----></option>
                        <option value="Destilados">Destilados</option>
                        <option value="Vinhos">Vinhos</option>
                        <option value="Cervejas">Cervejas</option>
                        <option value="Refrigerantes">Refrigerantes</option>
                        <option value="Sucos">Sucos</option>

                    </select>   
                </div>
                <div class="row col-3 justify-content-between">
                    <label class="col-5 align-self-center font-italic h3 text-white">Quantidade</label>
                    <input name="quantidade" class="form-control-lg col-4" type="number">
                </div>
            </div>
            <div class="form-group row justify-content-start">
                <div class="row col-12 justify-content-center">
                    <label class="col-3 align-self-start font-italic h3 text-white">Descrição</label>
                    <textarea name="descricao" class="col-8" rows="9"></textarea>
                </div>

            </div>

            <div class="container-fluid">
                <div class="row mt-3 justify-content-around">
                    <div class="row col-12 mt-5 justify-content-around">
                        <button class="btn btn-lg btn-danger col-2 font-italic h4 pb-2 pt-2" 
                                type="submit">Concluir</button>
                        <a class="btn btn-lg btn-danger col-2 font-italic h4 pb-2 pt-2"  
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
