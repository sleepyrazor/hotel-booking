<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro de Cliente</title>
    </head>
    <body>
        <h2>Introduzca sus datos:</h2>
        <form action="register" method="post">
            <label for="username">Nombre de usuario:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="email">Correo electrónico:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Registrar">
        </form>
    </body>
</html>

