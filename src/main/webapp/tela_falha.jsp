
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
        <div class="container">
            <div class="row justify-content-center mt-5 mb-5">
                <span class="col-12  display-3 text-black font-weight-bold">Ocorreu um erro!</span>
            </div>
            <div class="row justify-content-center mt-5 mb-5">
                <a class="btn btn-lg btn-danger col-3  font-italic h4 pb-2 pt-2"  
                   href="<c:url value="/protegido/index.jsp"/>">VOLTAR</a>
            </div>
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
