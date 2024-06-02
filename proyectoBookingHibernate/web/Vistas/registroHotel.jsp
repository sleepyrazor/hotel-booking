<%-- 
    Document   : registroHotel
    Created on : 02-jun-2024, 17:36:07
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <s:form action="registroHotel">
            <s:textfield key="hotel.nombre" label="Nombre del hotel" />
            <s:textfield key="hotel.direccion" label="Dirección" />
            <s:select name="idRol" label="Rol" list="roles" listKey="idRol" listValue="nombreRol" />
            <!-- Otros campos del formulario -->
            <s:submit value="Registrar" />
        </s:form>

    </body>
</html>