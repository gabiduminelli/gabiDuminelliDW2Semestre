<%-- 
    Document   : materia
    Created on : 20/06/2018, 22:01:25
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,
        DAOs.DAOMateria,
        Entidades.Materia"%>
<%
    Locale ptBR =new Locale("pt","BR");
    DAOMateria dao = new DAOMateria();
    List<Materia> materias = dao.listInOrderIdMateria();
    %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Estilos/estiloListas.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UEL</title>
        <link href="../Estilos/xx.css" rel="stylesheet" type="text/css"/>
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
        <form>
            <table id="customers">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>                    
                    
        
                </tr>
                <tbody>
                    <%
                        for (Materia m : materias) {
                        %>
                        <tr>
                            <td><%=m.getIdMateria()%></td>
                            <td><%=m.getNomeMateria()%></td>
                        </tr>
                        <%}%>
                </tbody>
                    
    
    
                </table>
        </form>   
        </div>
    </body>
</html>
