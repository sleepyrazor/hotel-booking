<%-- 
    Document   : admin
    Created on : 02-jun-2024, 13:19:14
    Author     : agarc
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
        <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <a href="<s:url action='logout'/>">Logout</a>
        <s:a action="listarReservasCliente">Mostrar tus reservas</s:a>
        <h1>Cuenta administradora <s:property value="#session.username"/></h1>
        <h2>Listado de Hoteles</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Dirección</th>
                <th>Estrellas</th>
                <th>Accion</th>
                <th>Habitaciones</th>
            </tr>
            <s:action name="listarHoteles" var="accionListarHoteles" />
            <s:iterator value="#accionListarHoteles.hoteles">
                <tr>
                    <td><s:property value="idHotel" /></td>
                    <td><s:property value="nombre"/></td>
                    <td><s:property value="direccion"/></td>
                    <td><s:property value="estrellas"/></td>
                    <s:if test="#session.esAdmin">
                        <td>
                            <s:form action="modificarHotelPantalla" method="POST">
                                <s:hidden name="idHotel" value="%{idHotel}"/>
                                <s:submit name="modificarHotel" value="Modificar" />
                            </s:form>
                        </td>
                    </s:if>
                    <td><s:form method="POST" action="accionListarHabitaciones">
                    <s:hidden name="idHotel" id="idHotel" value="%{idHotel}"></s:hidden>
                    <s:submit id="Submit" name="reservar" value="Ver habitaciones"></s:submit>
                        </s:form></td>
                </tr>
            </s:iterator>
        </table>

     
        <s:url var="crearHotelUrl" value="/Vistas/registroHotel.jsp"/>
        <s:a href="%{crearHotelUrl}">Crear Hotel</s:a>
        <div class="footer">


        </div>
    </body>
</html>