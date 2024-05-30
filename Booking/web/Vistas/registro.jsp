<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Cliente</title>
        <link href="../css/main.css" rel="stylesheet" type="text/css"/>
        <s:head/>
    </head>
    <body>
        <h2>Registre sus datos:</h2>
     
    <s:form action="register" method="post">
            <s:textfield property="username" styleId="username" placeholder="Nombre de usuario"/>
             <s:textfield name="email" id="email" label="Correo Electronico"></s:textfield>
             <s:textfield name="contrasena" id="contrasena" label="Contraseña"></s:textfield>
        </div>
            <s:submit name="enviar" id="enviar" label="Registrarse"/>
        
    </s:form>
</body>
</html>
