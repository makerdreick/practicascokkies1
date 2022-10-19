<%-- 
    Document   : form
    Created on : 11 oct. 2022, 20:54:05
    Author     : Dreick Lap1
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>actividad </title>
   
    </head>
    <body>
        <div class="container">
                  <h1>Ingrese una Nueva Actividad</h1>
        <form action="MainServlet" method="POST">
        <table>
            <tr>
              
                <td>ID</td>
                <td><input type="text" placeholder="Ingrese un ID" name="id"></td>
            </tr>
           
            <tr>
                <td>Tarea</td>
                <td><input type="text" placeholder="Ingrese la Descripcion" name="descripcion"></td>
            </tr>    
        </table>
            <button type="submit">
                Registrar La Tarea
            </button>
        </form>
        <a href="index.jsp"><- Volver</a>
        </div>
    </body>
</html>