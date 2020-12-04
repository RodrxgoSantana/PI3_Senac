
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FiveTech</title>
    </head>
    <body>

        <div class="card text-center" style="width: 20rem;">
        <h3 class="card-header">Login</h3>
        <div class="card-body">
            <form action="LoginServlet" method="POST">
                <p class="card-text"><input class="form-control" name="login" placeholder="Usuário" required></p>
                <p class="card-text"><input type="password" name="senha" id="senha" class="form-control"
                        placeholder="Senha" required></p>
                <p class="card-text"><input type="checkbox" onclick="verSenha()"> Ver Senha</p>
                <button type="submit" class="btn btn-danger">Entrar</button>

            </form>
        </div>
        
        <c:if test="${not empty param.erro}">
            <div class="container alert alert-danger" role="alert">
                Usuario/Senha Invalida!
            </div>

        </c:if>

    </div>
        <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>
    </body>
    
    <style>
    body {
        margin: 0;
        padding: 0;
        color: black;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url("img/logo.png");
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
