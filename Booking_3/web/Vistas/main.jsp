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
        <h3>Listado de hoteles</h3>

        <div class="hotel">
            <p>Hotel: Trivago</p>
            <p>Dirección: C:\Romualdo 23</p>
            <p>Habitaciones libres: 25</p>

            <s:form action="">
                <s:submit id="Submit" value="Reservar" action="reservarHabitacion"></s:submit>
            </s:form>
        </div>

        <div class="footer"></div>
    </body>
</html>
