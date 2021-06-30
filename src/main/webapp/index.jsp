<%-- 
    Document   : index
    Created on : 20-06-2021, 07:28:28 PM
    Author     : MILTON
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<body>
     <%
            HttpSession sesion=request.getSession();
            if(sesion.getAttribute("logueado")==null || sesion.getAttribute("logueado").equals("0")){
              response.sendRedirect("login.jsp");
            }
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
           <li class="nav-item dropdown">
      <a class="nav-link " href="#" id="navbardrop" data-toggle="dropdown">
        LIBROS
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="com.test.libro/listaLibro.jsp">LISTA LIBROS</a>
        <a class="dropdown-item" href="com.test.libro/ListaLibro.jsp">REGISTRAR LIBRO</a>
      </div>
    </li>
     <li class="nav-item dropdown">
      <a class="nav-link " href="#" id="navbardrop" data-toggle="dropdown">
        AUTORES
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="com.test.autor/listaAutor.jsp">LISTA AUTORES</a>
        <a class="dropdown-item" href="com.test.autor/registrarAutor.jsp">REGISTRAR AUTORES</a>
      </div>
    </li>
          </ul>
              
        </div>  
      </nav>
    <div class="jumbotron text-center" style="height: 100vh">
        <h1 class="text-danger border border-danger p-3 d-inline-block"><center><b>EXAMEN 2do BIMESTRE</b></center></h1>
        <h3 class="text-secondary">PROGRAMACION III</h3>
      </div>

</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>