
<%-- 
    Document   : login
    Created on : 30-may-2024, 11:45:44
    Author     : agarc
--%>

<html>
<head>
    <title>Login</title>
    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
  
    <%@ taglib prefix="s" uri="/struts-tags" %>
</head>
<body>
        <h2>Login</h2>
        <s:form id="loginform" method="POST" action="login">
            <s:textfield name="nombre" label="Nombre de usuario" />
            <s:password name="contrasena" label="Contraseña" />
            <s:submit value="Iniciar Sesión" />
        </s:form>
        <s:actionerror/>
        <s:fielderror/>
        <p>¿No tienes una cuenta? <s:a href="Vistas/registro.jsp">Registrar</s:a></p>
  
</body>
</html>
