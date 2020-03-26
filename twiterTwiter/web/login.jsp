<%--
  Created by IntelliJ IDEA.
  User: Nutzer
  Date: 16/02/2020
  Time: 09:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona logowania</title>
</head>
<body>
<%
    boolean wrongCredentials = Boolean.TRUE.equals(request.getAttribute("wrongCredentials"));
%>
<%if (wrongCredentials){ %>
<p>Wpisano niepoprawne dane logowania</p>
<% } %>
<form action="login" method="post">
    <%--    Poniewaz teraz zaczelismy uzywac kod z LoginController to to co jest ponizej <form action="main.jsp" method="POST">
    zmieniamy na to co jest powyzej <form action="login" method="post">--%>
    <%--<form action="main.jsp" method="POST">--%>
    <input type="text" placeholder="Login" name="login"/>
    <input type="password" placeholder="Password" name="password"/>
    <button type="submit">Zaloguj</button>
</form>
</body>
</html>