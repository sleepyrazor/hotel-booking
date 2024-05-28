
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de login</title>
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
            <s:i18n name="Actions.LoginCheck">
                <h1><s:text name="loginTitle" /></h1>
                <s:form action="LoginCheck">
                    <s:textfield name="username" key="username"/>
                    <s:password name="password" label="Password"/>
                    <s:submit value="login"></s:submit>

                </s:form>
                <h2><s:property value="message"/></h2>
            </s:i18n>
            <p>No account yet?
                <s:a href="/ProyectoBooking/Vistas/login/registro.jsp">Register now!</s:a>

            </p>

        </div>

    </body>
</html>
