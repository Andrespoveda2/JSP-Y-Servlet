<%-- 
    Document   : index
    Created on : 2/05/2025, 10:36:06 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <body>
            <div class="container">
                <h1>Registro de Usuario</h1>
                <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
        <% } %>
            <form action="registro" method="POST"> </form>
            </div>
        </body>
</html>
