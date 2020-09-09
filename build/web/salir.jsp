<%-- 
    Document   : salir
    Created on : 03-abr-2019, 23:55:11
    Author     : henry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="assets/images/icono.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>D'Bruno</title>
    </head>
    <body>
        <%
            if (session.getAttribute("user") == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
                response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                response.setHeader("Expires", "0"); // Proxies.
        %>
        <h1>Usted ha cerrado sesión</h1>
        <br>
        <a href="login.jsp">Iniciar Sesión</a>
    </body>
</html>
