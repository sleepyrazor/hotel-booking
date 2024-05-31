
<%-- 
    Document   : login
    Created on : 30-may-2024, 11:45:44
    Author     : agarc
--%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login - Reserva de Hotel</title>
    </head>
    <body>
       

        <div class="container">
            <h2>Login</h2>
            <s:form id="loginform" method="POST" action="login">
                <s:textfield name="username" label="Nombre de usuario" />
                <s:password name="password" label="Contraseña" />
                <s:submit value="Iniciar Sesión" />
            </s:form>
            <p>¿No tienes una cuenta? <a href="<s:url action='register' />">Regístrate</a></p>
            

        </div>


    </body>
</html>