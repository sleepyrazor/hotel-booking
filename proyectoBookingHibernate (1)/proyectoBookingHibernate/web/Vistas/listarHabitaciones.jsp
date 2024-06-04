<%-- 
    Document   : reservar
    Created on : 02-jun-2024, 17:40:08
    Author     : Manuel Revuelta
--%>
<%@page import="modelo.Hotel"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Habitaciones</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <a href="logout">Logout</a>
        <h2>Listado de Habitaciones del <s:property value="#session.hotelActual.nombre"/></h2>
        <table border="1">
            <tr>
                <th>Numero</th>
                <th>Piso</th>
                <th>Categoria</th>
                <th>ID Hotel</th>
                <th>Ocupado</th>
            </tr>
            <s:iterator value="listadoHabitaciones" var="habitacion">
                <tr>
                    <td><s:property value="numero"/></td>
                    <td><s:property value="piso"/></td>
                    <td><s:property value="categoria"/></td>
                    <td><s:property value="idHotel"/></td>
                    <td><s:property value="ocupado"/></td>
                </tr>   
            </s:iterator>
        </table>


        <!-- Mostrar botón solo si el usuario es administrador -->
        <s:if test="#session.esAdmin">
            <s:url var="crearHabitacionUrl" value="/Vistas/crearHabitacion.jsp"/>
            <s:a href="%{crearHabitacionUrl}">Crear habitación en este Hotel</s:a>
        </s:if>
    </body>
</html>
