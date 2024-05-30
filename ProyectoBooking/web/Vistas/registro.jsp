<%-- 
    Document   : registro
    Created on : 28-may-2024, 20:21:24
    Author     : agarc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de registro</title>
        <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
        <s:head/>
    </head>
    <body>
        <div style='margin: 0;
             position: absolute;
             top: 50%;
             left: 50%;
             -ms-transform: translate(-50%, -50%);
             transform: translate(-50%, -50%);'>
            <s:i18n name="Actions.RegisterUserAction">

                <s:form action="signUp">
                    <s:textfield name="username" label="username"/>
                    <s:textfield name="email" label="email"/>
                    <s:password name="password" label="password"/>

                    <s:submit value="sign up"></s:submit>
                </s:form>
                <h2><s:property value="message"/></h2>
            </s:i18n>
            <p class="text-center">Already have an account?
                <s:a href="/ProyectoBooking/Vistas/login.jsp">Sign In!</s:a>
            </p>
        </div>

    </body>
</html>