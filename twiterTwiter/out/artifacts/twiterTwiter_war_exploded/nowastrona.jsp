<%--
  Created by IntelliJ IDEA.
  User: Nutzer
  Date: 16/02/2020
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Testowa strona</title>
</head>
<body>
<%
    String login = null;
/*for(Cookie cookie: request.getCookies()){
    if (cookie.getName().equals("login")){
        login= cookie.getValue();
    }
}
to co jest powyzej zmieniamy na to rozwiazanie z sesja*/
    login = (String) request.getSession().getAttribute("login");
%>
<%--<%=login%>--%>
<%--teraz jak zmienilismy na usera(obiektowo to zmieniamy <%=login%> na:--%>
<p> Zalogowany jako ${sessionScope.user.login}. Gratulacje:) </p>
<%--Ten kod ponizej ${sessionScope.login} wyswietli login z sesji, jest najkrotszy, moze zastapic to co te dwa kody powyzej--%>
<%--${sessionScope.login}--%>
<%--nowe logout code:--%>
<form action="logout" method="get">
    <button type="submit">Log out</button>
</form>
</body>
</html>