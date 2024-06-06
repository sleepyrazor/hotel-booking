<%-- 
    Document   : modificarReserva
    Created on : 04-jun-2024, 18:41:44
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Reserva</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <h2>Modificar Reserva</h2>
        <s:form action="actualizarReserva" method="post">
            <s:hidden name="idReserva" value="%{reserva.id}" />
            <s:textfield name="habitacion" label="Habitacion" value="%{reserva.habitacion}" />
            <s:textfield name="coste" label="Coste" value="%{reserva.coste}" />
            < <s:textfield name="duracion" label="Duracion" value="%{reserva.duracion}"/>
            <s:submit value="Actualizar" />
        </s:form>
    </body>
</html>