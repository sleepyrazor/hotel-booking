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
        <div class="top">
            <h1 class="container">Book-IT-ing</h1>
        </div>
        <h1>Alta reserva</h1>
         <s:form action="crearReserva" method="post">
            <s:textfield name="duracion" label="Duracion de la Reserva:" />
            <s:textfield name="comentario" label="¿Algun comentario que dejarnos?" value="Niguno"/>
            <s:submit value="Registrar" />
        </s:form>
    
    </body>
</html>
