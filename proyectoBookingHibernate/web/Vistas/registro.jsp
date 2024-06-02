<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Registro de Usuario</title>
    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h2>Registro de Usuario</h2>
    <s:form action="register" method="POST">
        <s:textfield name="nombre" label="Nombre" />
        <s:textfield name="email" label="Email" />
        <s:textfield name="telefono" label="Teléfono" />
        <s:password name="contrasena" label="Contraseña" />
        <s:select name="idRol" label="Rol" list="roles" listKey="idRol" listValue="nombreRol" />
        <s:submit value="Registrar" />
    </s:form>
    <s:fielderror />
</body>
</html>

