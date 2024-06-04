
<%-- 
    Document   : login
    Created on : 30-may-2024, 11:45:44
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Login</title>
    <link href="<s:url value='/css/login.css'/>" rel="stylesheet" type="text/css"/>
</head>
<body>
        <h2>Login</h2>
        <s:form name="loginform" method="POST" action="login">
            <s:textfield name="nombre" label="Nombre de usuario" value="pepe" />
            <s:password name="contrasena" label="Contraseña" value="1234" />
            <s:submit value="Iniciar Sesión" />
        </s:form>
        <s:actionerror/>
        <s:fielderror/>
      <p>¿No tienes una cuenta? <a href="register">Registrar</a></p>
</body>
</html>
