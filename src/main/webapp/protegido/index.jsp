
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../header.jsp" %>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Five Tech</title>
    </head>
    <body>
            <nav class="navbar-expand-lg navbar-dark" style="background-color:black;">
                <a class="navbar-brand" href="#">
                    FiveTech
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cliente
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<c:url value="/ListarClientes"/>">Listar Clientes</a>
                                <a class="dropdown-item" href="cadastro_cliente.jsp">Cadastrar
                                Cliente</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Produto
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<c:url value="/ListarProdutos"/>">Listar Produtos</a>
                                <c:if test="${sessionScope.usuario.admin}">
                                    <a class="dropdown-item"  href="admin/cadastro_produto.jsp">Cadastrar
                                Produto</a>
                                     </c:if>
                                
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Venda
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<c:url value="/ListaDeCliente"/>">Realizar Venda</a>
                                <c:if test="${sessionScope.usuario.admin}">
                                    <a class="dropdown-item" href="admin/escolha_relatorios.jsp">Relatorios</a>
                                </c:if>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav navbar-right">
                        <li class="nav-item">
                            <a class="nav-link">Seja bem-vindo(a) ${user.nomeFunc}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">|</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/LogoutServlet"/>">Sair</a>
                        </li>
                    </ul>
                </div>
            </nav>
                        <div class="fundoIndex">
                            <img src="../img/logo.png">
                        </div>
                            
                                <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>
    </body>
    <style>
        
        .fundoIndex{
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            margin-top: 220px;
        }
        body{
            background-color: #1f1f1f; 
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
