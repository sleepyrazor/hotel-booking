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
    <h2>Modificar Hotel</h2>
    <s:form action="actualizarHotel" method="post">
        <s:hidden name="id" value="%{hotel.id}" />
        <s:textfield name="nombre" label="Nombre" value="%{hotel.nombre}" />
        <s:textfield name="direccion" label="Dirección" value="%{hotel.direccion}" />
        < <s:textfield name="estrellas" label="Estrellas" value="%{hotel.estrellas}"/>
        <s:submit value="Actualizar" />
    </s:form>
</body>
</html>