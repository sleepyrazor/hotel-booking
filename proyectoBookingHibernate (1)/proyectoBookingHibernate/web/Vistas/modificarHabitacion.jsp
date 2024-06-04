<%-- 
    Document   : modificarHabitacion
    Created on : 04-jun-2024, 18:41:35
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Habitación</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <h2>Modificar Habitación</h2>
        <s:form action="actualizarHabitacion" method="post">
            <s:hidden name="idHabitacion" value="%{habitacion.id}" />
            <s:textfield name="hotel.nombre" label="Nombre" value="%{hotel.nombre}" />
            <s:textfield name="hotel.direccion" label="Dirección" value="%{hotel.direccion}" />
            <s:textfield name="hotel.estrellas" label="Estrellas (1-5)" value="%{hotel.estrellas}" />
            <s:submit value="Actualizar" />
        </s:form>
    </body>
</html>
