<%-- 
    Document   : login
    Created on : 27-06-2021, 03:56:55 PM
    Author     : MILTON
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-6 offset-3">
                    <h1 class="text-info bg-dark p-2 text-center">BIBLIOTECA</h1>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="nombre">USUARIO</label>
                            <input type="text" class="form-control" name="user" placeholder="ingrese usuario" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">PASSWORD</label>
                            <input type="password" class="form-control" name="password" placeholder=" ingrese contraseña" required="required">
                        </div>
                        <button type="submit" name="login" class="btn btn-outline-dark w-100">INGRESAR</button>
                    </form>
                </div>
            </div>
              <%
            if (request.getParameter("login") != null) {
                String user = request.getParameter("user");
                String password = request.getParameter("password");
                HttpSession sesion = request.getSession();
                if(user.equals("admin")&& password.equals("admin")){
                    sesion.setAttribute("logueado", "1");
                    sesion.setAttribute("user", user);
                    response.sendRedirect("index.jsp");
                }else{
                    out.print("usuario o contraseña invalida");
                }
            }
        %>
        </div>
    </body>
  
</html>
