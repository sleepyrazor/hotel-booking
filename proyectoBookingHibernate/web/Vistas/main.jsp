<%-- 
    Document   : main
    Created on : 30-may-2024, 12:01:23
    Author     : Manuel Revuelta
--%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>

        <a href="logout">Logout</a>
        <h2>Listado de Hoteles</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Dirección</th>
                <th>Estrellas</th>
            </tr>
            <s:iterator value="hoteles">
                <tr>
                    <td><s:property value="idHotel"/></td>
                    <td><s:property value="nombre"/></td>
                    <td><s:property value="direccion"/></td>
                    <td><s:property value="estrellas"/></td>
                </tr>
            </s:iterator>
        </table>

        <s:form action="">
            <s:submit id="Submit" value="Reservar" action="reservarHabitacion"></s:submit>
        </s:form>
    

    <div class="footer"></div>
</body>
</html>
