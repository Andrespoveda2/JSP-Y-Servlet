<%-- 
    Document   : registro
    Created on : 2/05/2025, 11:26:56 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <div class="container">
                <h1>Registro de Usuario</h1>
                <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
                <% } %>
         
            <form action="registro" method="POST">
                <label>Nombre:</label>
                <input type="text" name="nombre" required><br>
                <label>Apellido:</label>
                <input type="text" name="apellido" required><br>
                <label>Email:</label>
                <input type="email" name="email" required><br>
                <label>Contraseña:</label>
                <input type="password" name="password" required><br>
                <button type="submit">Registrar</button>
            </form>

            
            </div>
    </body>
</html>
