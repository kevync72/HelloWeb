<%-- 
    Document   : response
    Created on : 17/09/2021
    Author     : Kevyn Alexander Chaves Castañeda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="com.mycompany.helloweb.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <jsp:setProperty name="mybean" property="birth" />
        <h1> ¡Hola <jsp:getProperty name="mybean" property="name"  /> 
            !
            Su edad es: <jsp:getProperty name="mybean" property="edad"  />
            años,
            <c:choose>
                <c:when test="${mybean.time>0 && mybean.time<12}">
                    Buenos Dias
                </c:when>
                <c:when test="${mybean.time<18 && mybean.time>12}">
                    Buenas Tardes
                </c:when>
                <c:otherwise>
                    Buenas noches
                </c:otherwise>
            </c:choose>

            
        </h1>
        
    </body>
</html>