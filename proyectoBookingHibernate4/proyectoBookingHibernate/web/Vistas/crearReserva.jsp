<%-- 
    Document   : crearReserva
    Created on : 05-jun-2024, 18:40:07
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Reserva</title>
    </head>
    <body>
        <h1>Alta reserva</h1>
         <s:form action="crearReserva" method="post">
            <s:textfield name="habitacion" label="Habitación" />
            <s:textfield name="coste" label="Coste" />
            <s:textfield name="duracion" label="Duracion" />
            <s:submit value="Registrar" />
        </s:form>
    
    </body>
</html>
