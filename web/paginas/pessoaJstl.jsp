<%-- 
    Document   : pessoa
    Created on : 20/06/2018, 21:00:00
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Estilos/estiloListas.css" rel="stylesheet" type="text/css"/>
        <link href="../Estilos/xx.css" rel="stylesheet" type="text/css"/>
        <title>UEL</title>
    </head>
    <body>
         <ul>
            <li><a class="active" href="#home">Home</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/curso">CURSOS</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/titulacao">TITULACOES</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/pessoaJstl.jsp">PESSOAS</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/materiaScriplet.jsp">MATERIAS</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/aluno">ALUNOS</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/professor">PROFESSORES</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/pessoacad.jsp">CADASTREPESSOA</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/alunocad.jsp">CADASTROALUNO</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/titulacaocad.jsp">CADASTROTITULACAO</a></li>
            <li><a href="http://localhost:8084/GabiDuminelli_UniversidadeEstadualDeLondrina_segundobim/paginas/materiacad.jsp">CADASTROMATERIA</a></li>

        </ul>
        <div style="margin-left:25%;padding:1px 16px;height:1000px;">
        <jsp:useBean id="dao" class="DAOs.DAOPessoa"/>
        <form>
            <table id="customers">
                <tr>
                    <th>CPF</th>
                    <th>Nome</th>
                    <th>Idade</th>
                    <th>E-mail</th>
        
                </tr>
        <c:forEach var="cat" items="${dao.listInOrderNomePessoa()}">
            
            <tr>
                <td>${cat.getCpf()}</td>
                <td>${cat.getNomePessoa()}</td>
                <td>${cat.getIdadePessoa()}</td>
                <td>${cat.getEmail()}</td>
            </tr>
            </c:forEach>
             </table>
        </form>   
        </div>
    </body>
</html>
