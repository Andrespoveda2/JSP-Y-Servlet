<%-- 
    Document   : consulta
    Created on : 2/05/2025, 11:27:27 a. m.
    Author     : SENA
--%>

<%@page import="java.util.List"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
<div class="container">
    <h1>Consulta de Usuarios</h1>

    <!-- Formulario de búsqueda (puede ir vacío por ahora o tener input para filtrar) -->
    <form action="consulta" method="GET">
        <label for="buscar">Buscar por nombre o email:</label>
        <input type="text" name="buscar" id="buscar">
        <button type="submit">Buscar</button>
    </form>

    <!-- Aquí va la tabla fuera del form -->
    <%
        List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
        if (usuarios != null && !usuarios.isEmpty()) {
    %>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
        </tr>
    <%
            for (Usuario u : usuarios) {
    %>
        <tr>
            <td><%= u.getNombre() %></td>
            <td><%= u.getApellido() %></td>
            <td><%= u.getEmail() %></td>
        </tr>
    <%
            }
        } else {
    %>
    <p>No hay usuarios registrados.</p>
    <%
        }
    %>
</div>
</body>
</html>
