<%-- 
    Document   : modificarHotel
    Created on : 04-jun-2024, 18:41:11
    Author     : agarc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Hotel</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <h2>Modificar <s:property value="%{#session.hotelActual.nombre}" /></h2>
        <s:form action="modificarHotel" method="post">
            <s:textfield name="nombre" label="Nombre" value="%{#session.hotelActual.nombre}" />
            <s:textfield name="direccion" label="Dirección" value="%{#session.hotelActual.direccion}" />
            < <s:textfield name="estrellas" label="Estrellas" value="%{#session.hotelActual.estrellas}"/>
            <s:submit value="Actualizar" />
        </s:form>
    </body>
</html>