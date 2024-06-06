<%-- 
    Document   : modificarHabitacion
    Created on : 04-jun-2024, 18:41:35
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Habitación</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <h2>Modificar Habitación</h2>
        <s:form action="modificarHabitacion" method="post">
            <s:textfield name="numero" label="Numero" value="%{#session.habitacionActual.numero}" requiredLabel="true"/>
            <s:textfield name="piso" label="Piso" value="%{#session.habitacionActual.piso}" requiredLabel="true"/>
            <s:textfield name="categoria" label="Categoria" value="%{#session.habitacionActual.categoria}" requiredLabel="true"/>
            <s:textfield name="precioxnoche" label="Precio por noche" value="%{#session.habitacionActual.precioxnoche}" requiredLabel="true" />
            <s:submit value="Actualizar" />
        </s:form>
    </body>
</html>
