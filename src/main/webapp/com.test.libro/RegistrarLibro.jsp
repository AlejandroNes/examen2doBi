<%-- 
    Document   : RegistrarLibro
    Created on : 30-06-2021, 01:19:44 AM
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
        <title>Proyecto Tarjetas</title>
    </head>
    <body> 
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <h1>REGISTRAR LIBRO</h1>
                    <form action="RegistrarLibro.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">TITULO</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">EDICION</label>
                            <input type="text" class="form-control" id="compra" name="compra" placeholder=" costo compra" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">NRO EJEMPLARES</label>
                            <input type="text" class="form-control" id="venta" name="venta" placeholder="costo venta" required="required">
                        </div>
                        <div class="form-group">
                            
                        </div>
                         <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/prestamo?user=root&password=");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM autor;");
                            while (rs.next()) {
                    %>
                            <label for="direccion">AUTOR</label>
                            <select id="id">
                                  <option <%=rs.getString(2)%>></option>
                            </select>

                           
                             <%}%>
                        <button type="submit" name="guardar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
