<%-- 
    Document   : reservar
    Created on : 02-jun-2024, 17:40:08
    Author     : Manuel Revuelta
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
        <s:form action="registroHotel">
            <p>Hotel: <%=  %></p>
            <s:textfield key="nombre" label="Nombre del hotel" />
            <s:textfield key="hotel.direccion" label="Dirección" />
            <s:select name="idRol" label="Rol" list="roles" listKey="idRol" listValue="nombreRol" />
            <!-- Otros campos del formulario -->
            <s:text name="idHotel" var="idHotel" />
            
            <s:submit value="Registrar" />
        </s:form>
    </body>
</html>
