<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>

<%@taglib prefix="s" uri="/struts-tags"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
        <title>Registro Nueva Cuenta - Reserva de Hotel</title>
    </head>
    <body>
       

        <div class="container">
            <h2>Registro Nueva Cuenta</h2>
            <s:form id="registerform" method="POST" action="register">
                <s:textfield name="nombre" label="Nombre" />
                <s:textfield name="email" label="Email" />
                <s:password name="password" label="Contraseña" />
                <s:submit value="Registrarse" />
            </s:form>
            <p>¿Ya tienes una cuenta? <a href="<s:url action='login'/>">Login</a></p>
        </div>


    </body>
</html>
