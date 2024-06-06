<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <link href="<s:url value='/css/login.css'/>" rel="stylesheet" type="text/css"/>
    <title>Registro de Usuario</title>
    
</head>
<body>
    <div class="login-container">
    <h2>Registro de Usuario</h2>
    <s:form action="register" method="POST">
        <s:textfield name="nombre" label="Nombre" />
        <s:textfield name="email" label="Email" />
        <s:textfield name="telefono" label="Tel�fono" />
        <s:password name="contrasena" label="Contrase�a" />
        <s:select name="idRol" label="Rol" list="roles" listKey="idRol" listValue="nombreRol" />
        <s:submit value="Registrar" />
    </s:form>
    <s:fielderror />
    </div>
</body>

</html>
