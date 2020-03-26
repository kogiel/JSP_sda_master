<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: hotpink; margin:10px">
        <jsp:useBean id="pigeon" class="foo.bar.Pigeon" scope="session">
        </jsp:useBean>
        <jsp:setProperty property="*" name="pigeon"/>
        <p>Message:
            <jsp:getProperty name = "pigeon" property = "message"/>

        </p>
         <p>Author:
            <jsp:getProperty name = "pigeon" property = "author"/>
        </p>
    </body>
</html>
