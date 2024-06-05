<%-- 
    Document   : crearReserva
    Created on : 05-jun-2024, 18:34:10
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta reserva</title>
    </head>
    <body>
        <h1>Alta reserva</h1>
         <s:form action="crearReserva" method="post">
            <s:textfield name="numero" label="Numero" />
            <s:textfield name="piso" label="Piso" />
            <s:textfield name="categoria" label="Categoria" />
            <s:submit value="Registrar" />
        </s:form>
    </body>
</html>
