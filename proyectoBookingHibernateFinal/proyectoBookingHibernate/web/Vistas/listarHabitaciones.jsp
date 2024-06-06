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
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <a href="logout">Logout</a>

        <h2>Listado de Habitaciones del <s:property value="#session.hotelActual.nombre"/></h2>
        <table border="1">
            <tr>
                <th>Numero</th>
                <th>Piso</th>
                <th>Categoria</th>
                <th>Precio por noche</th>
                <th>Disponibilidad</th>
                    <s:if test="#session.esAdmin">
                    <th>Modificar</th>
                    </s:if>
                    <s:if test="!#session.esAdmin">
                    <th>Reservar</th>
                    </s:if>
            </tr>
            <s:iterator value="listadoHabitaciones" var="habitacion">
                <tr>
                    <td><s:property value="numero"/></td>
                    <td><s:property value="piso"/></td>
                    <td><s:property value="categoria"/></td>
                    <td><s:property value="precioxnoche"/></td>
                    <td>
                        <s:if test="%{#habitacion.ocupado == 0}">
                            Libre
                        </s:if>
                        <s:else>
                            Ocupado
                        </s:else>
                    </td>
                    <s:if test="#session.esAdmin">
                        <td>
                            <s:form action="modificarHabitacionPantalla" method="POST">
                                <s:hidden name="idHabitacion" value="%{idHabitacion}"/>
                                <s:submit name="modificarHabitacion" value="Modificar" />
                            </s:form>
                        </td>
                    </s:if>
                    <s:if test="!#session.esAdmin">
                        <s:if test="%{#habitacion.ocupado == 0}">

                            <td>
                                <s:form action="crearReservaPantalla" method="POST">
                                    <s:hidden name="idHabitacion" value="%{idHabitacion}"/>
                                    <s:submit name="crearReserva" value="Reservar" />
                                </s:form>
                            </td>
                        </s:if>
                        <s:else>
                            <td>
                                Habitacion ya reservada.
                            </td>
                        </s:else>

                    </s:if>
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
