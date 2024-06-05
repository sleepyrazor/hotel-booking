<%-- 
    Document   : registroHotel
    Created on : 02-jun-2024, 17:36:07
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <title>Registro de Hotel</title>
    </head>
    <body>
        <h2>Registro de Hotel</h2>
        <s:form action="registrarHotel" method="post">
            <s:textfield name="nombre" label="Nombre" />
            <s:textfield name="direccion" label="Dirección" />
            <s:textfield name="estrellas" label="Estrellas" />
            <s:submit value="Registrar" />
        </s:form>
    </body>
</html>

