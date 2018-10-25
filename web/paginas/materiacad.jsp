<%-- 
    Document   : materiacad
    Created on : 13/09/2018, 01:03:42
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UEL</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
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
       <div class="w3-card-4">
        <div class="w3-container w3-green">
            <h1>Cadastro Materia</h1>
        </div>

        <form  class="w3-container" action="${pageContext.request.contextPath}/cadastromateria"  method="POST">


            <p>
                
                <input class="w3-input" type="text" value="" name="nomeMateria" placeholder="Nome Materia" id="nome_materia" required/>
            </p>
            <button class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">Enviar</button>
        </form>

    </div>
</div>
</body>
</html>
