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
    List<Materia> materias = dao.listInOrderNomeMateria();
    %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Estilos/estiloListas.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UEL</title>
        <link href="../Estilos/xx.css" rel="stylesheet" type="text/css"/>
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
