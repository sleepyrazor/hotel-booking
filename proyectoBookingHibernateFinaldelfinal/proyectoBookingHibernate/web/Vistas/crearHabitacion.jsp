<%-- 
    Document   : crearHabitacion
    Created on : 03-jun-2024, 19:42:52
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Habitación</title>
    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <h1>Alta Habitación</h1>
         <s:form action="crearHabitacion" method="post">
            <s:textfield name="numero" label="Numero" />
            <s:textfield name="piso" label="Piso" />
            <s:textfield name="categoria" label="Categoria" />
            <s:textfield name="precioxnoche" label="Precio por noche" />
            <s:submit value="Registrar" />
        </s:form>
    </body>
</html>
