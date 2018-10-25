<%-- 
    Document   : newjsp
    Created on : 26/04/2018, 20:09:33
    Author     : Gabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <head>
        <title>UEL</title>
        <link href="../Estilos/xx.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                <link href="../Estilos/form.css" rel="stylesheet" type="text/css"/>

        
        <style>


            body,h1 {font-family: "Raleway", sans-serif}
            body, html {height: 100%}
            .bgimg {
                background-image: url('/imagens/lala.jpg');
                min-height: 100%;
                background-position: center;
                background-size: cover;
            }
            


        </style>
        
    </head>
    <body>
        <!-- Navbar (sticky bottom) -->

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
        <div style="margin-left:15%;padding:1px 1px;height:1000px;">
            <div >

                <bgimg><img src="../Imagens/ujj.jpg" alt=""/> </bgimg>



            </div>
        </div>
    </body>
</html>
