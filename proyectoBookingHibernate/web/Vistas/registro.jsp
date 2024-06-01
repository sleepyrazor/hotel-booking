<%-- 
    Document   : registro
    Created on : 30-may-2024, 11:45:52
    Author     : agarc
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>
   
        <h2>Registro</h2>
        <s:form id="registerform" method="POST" action="register">
            <s:textfield name="nombre" label="Nombre de usuario" />
            <s:password name="contrasena" label="Contraseña" />
            <s:textfield name="email" label="Email" />
            <s:textfield name="telefono" label="Teléfono" />
            <s:submit value="Registrar" />
        </s:form>
        <p>¿Ya tienes una cuenta? <s:a href="Vistas/login.jsp">Iniciar Sesión</s:a></p>
    
</body>
</html>
