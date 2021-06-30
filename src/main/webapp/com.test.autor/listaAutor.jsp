<%-- 
    Document   : listarAutor
    Created on : 30-06-2021, 01:09:50 PM
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
    <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" colspan="9"><center><h2>LISTA LIBROS</h2></center></th>
        </tr>
        <tr>
            <th scope="col" colspan="9">
            <center>
                    <form action="listaLibro.jsp" method="post">
                        <div class="input-group">
                            <a class="btn btn-primary" href="RegistrarLibro.jsp"><i class="fas fa-user-plus"></i></a>
                            <input class="form-control float-left ml-7 " type="text" name="nombre" placeholder="Buscar..." aria-label="Search" aria-describedby="basic-addon2" />
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-danger float-left " name="buscar" type="button"><i class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </center></th>
        </tr>
            
                      <tr>
                        <th>CODIGO</th>
                        <th>PATERNO</th>
                        <th>MATERNO</th>
                        <th>NACIONALIDAD</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            String nomBuscar=request.getParameter("nombre");
                    if(nomBuscar!=null){
                        Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/prestamo?user=root&password=");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT L.*,A.nombre,A.paterno FROM libro L JOIN autor A ON L.autor_cod_autor=A.cod_autor WHERE A.nombre LIKE"+"'%"+nomBuscar+"%'");
                    }else{
                   
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/prestamo?user=root&password=");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT A.* FROM autor A");
                            
                             }
                            while (rs.next()) {
                    %>
                    <tr>
                        <th scope="row"><%=rs.getString(1)%></th>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><a href="EditarTarjeta.jsp?id=<%=rs.getString(1)%>&nombre=<%=rs.getString(2)%>&compra=<%=rs.getString(3)%>&venta=<%=rs.getString(4)%>&stock=<%=rs.getString(5)%>"><i class="fas fa-user-edit"></i></a>
                            <a  href="EliminarTarjeta.jsp?id=<%=rs.getString(1)%>" class="ml-1 text-danger " ><i class="fas fa-trash-alt"></i></a></td>

                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.print("error myql " + e);
                        }
                    %>

                </tbody>
            </table>
        </div>
    </body>
</html>

