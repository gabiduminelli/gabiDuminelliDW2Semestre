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
                <link href="../Estilos/form.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
         <ul>
            <li><a class="active" href="${pageContext.request.contextPath}/paginas/pgum.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/curso">CURSOS</a></li>
            <li><a href="${pageContext.request.contextPath}/titulacao">TITULACÕES</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/pessoaJstl.jsp">PESSOAS</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/materiaScriplet.jsp">MATÉRIAS</a></li>
            <li><a href="${pageContext.request.contextPath}/aluno">ALUNOS</a></li>
            <li><a href="${pageContext.request.contextPath}/professor">PROFESSORES</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/pessoacad.jsp">CADASTRAR PESSOA</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/alunocad.jsp">CADASTRAR ALUNO</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/titulacaocad.jsp">CADASTRAR TITULACÃO</a></li>
            <li><a href="${pageContext.request.contextPath}/paginas/materiacad.jsp">CADASTRAR MATÉRIA</a></li>


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
