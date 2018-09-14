<%-- 
    Document   : alunocad
    Created on : 12/09/2018, 23:27:42
    Author     : Gabi
--%>
<%@page import="Entidades.Pessoa"%>
<%@page import="java.util.List"%>
<%@page import="DAOs.DAOPessoa"%>

<%
    DAOPessoa daoPessoa = new DAOPessoa();
    List<Pessoa> pessoa = daoPessoa.listInOrderCpf();

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <jsp:useBean id="dao" class="DAOs.DAOAluno"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UEL</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../Estilos/xx.css" rel="stylesheet" type="text/css"/>
        <link href="../Estilos/form.css" rel="stylesheet" type="text/css"/>
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
        <div class="w3-card-4">
            <div class="w3-container w3-green">
                <h1>Cadastro de Aluno</h1>
            </div>
            

            <form  class="w3-container" action="${pageContext.request.contextPath}/cadastroAlunos"  method="POST">


                <p>
                    <input class="w3-input" type="text" value="" name="ra" placeholder="Ra" id="ra_aluno" required/>
                    <input class="w3-input" type="text" value="" name="data" placeholder="Data Ingresso" id="data_ingresso" required/>
                    <label class="w3-input">Pessoa Cpf</label>
                    <select class="w3-check" id="pessoa" name="pessoaCpf" >
                            <option value="">SELECIONE</option>
                            <%                       
                                for (Pessoa p : pessoa) {
                            %>                    
                            <option value="<%=p.getCpf()%>"><%=p.getCpf()+"-"+p.getNomePessoa()%></option>
                            <%}%>
                    </select>
                </p>
                <button class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Enviar</button>
            </form>
            </div>
                            
</html>
