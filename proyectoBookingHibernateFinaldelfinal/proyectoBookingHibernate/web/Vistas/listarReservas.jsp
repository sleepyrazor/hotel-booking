<%-- 
    Document   : listarReservas
    Created on : 04-jun-2024, 20:35:01
    Author     : agarc
--%>


<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservas </title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <a href="logout">Logout</a>
        
        <h2>Listado de reservas</h2>
        <table border="1">
            <tr>
                <th>Hotel</th>
                <th>Habitacion</th>
                <th>Coste</th>
                <th>Duración</th>
                <th>Comentario</th>
                
            </tr>
            <s:iterator value="listadoReservas" var="reservas">
                <tr>
                    <td><s:property value="habitacion.hotel.nombre"/></td>
                    <td><s:property value="habitacion.numero"/></td>
                    <td><s:property value="coste"/></td>
                    <td><s:property value="duracion"/></td>
                    <td><s:property value="comentario"/></td>
                </tr>   
            </s:iterator>
        </table>

    </body>
</html>

