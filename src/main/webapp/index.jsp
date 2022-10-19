<%-- 
    Document   : index
    Created on : 11 oct. 2022, 20:54:14
    Author     : Dreick Lap1
--%>
<%@page import="pra_emegentes.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("Tareas") == null)
    {
        ArrayList<Tarea> lisTareas = new ArrayList<Tarea>();
        session.setAttribute("Tareas", lisTareas);
    }
    ArrayList<Tarea> tareas = (ArrayList<Tarea>)session.getAttribute("Tareas");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tarea</title>
        
  
    <body>
        <div class="container">
                    <h1>Tareas Pendientes </h1>
        <a href="MainServlet?op=nuevo">Nuevo -></a>
        <table>
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>Opciones</th>
            </tr>
            <%
                if(tareas !=null)
                {
                    for(Tarea T : tareas){
             
            %>
            <tr>
                <td><%=T.getId() %></td>
                <td><%=T.getDescripcion()%></td>
                <td><input type="checkbox"></td>
                <td><button><a href="MainServlet?op=eliminar&id=<%=T.getId()%>">Eliminar</a></button></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
