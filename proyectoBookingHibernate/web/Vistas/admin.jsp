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
    </head>
    <body>
        <a href="<s:url action='logout'/>">Logout</a>
        <h1>Cuenta administradora!</h1>
        <h2>Listado de Hoteles</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Dirección</th>
                <th>Estrellas</th>
            </tr>
            <s:action name="listarHoteles" var="accionListarHoteles" />
            <s:iterator value="#accionListarHoteles.hoteles">
                <tr>
                    <td><s:property value="idHotel" /></td>
                <td><s:property value="nombre"/></td>
                <td><s:property value="direccion"/></td>
                <td><s:property value="estrellas"/></td>
                </tr>
            </s:iterator>
        </table>

    <s:form action="reservarHabitacion">
        <s:submit id="Submit" value="Reservar" />
    </s:form>
 <s:form action="registrarHotel">
        <s:submit id="Submit" value="Crear Hotel" />
    </s:form>
    <div class="footer"></div>
</body>
</html>