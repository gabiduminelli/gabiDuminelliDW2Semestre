<%-- 
    Document   : cursocad
    Created on : 13/09/2018, 09:04:33
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <div class="w3-card-4">
                <div class="w3-container w3-green">
                    <h1>Cadastro Curso</h1>
                </div>
                <form  class="w3-container" action="${pageContext.request.contextPath}/cadastrocurso"  method="POST">


                    <p>
                        <input class="w3-input" type="number" value="" name="idCurso" placeholder="Codigo" id="codigo_curso" required/>
                        <input class="w3-input" type="text" value="" name="nomeCurso" placeholder="Nome Curso" id="nome_curso" required/>
                        <select class="w3-input" name="ativo">
                            <option value="">--SELECIONE--</option>
                            <option value="0">nao ativo</option>
                            <option value="1">ativo</option>
                        </select>
                    </p>
                    <button class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Enviar</button>
                </form>

            </div>
        </div>

    </body>
</html>
