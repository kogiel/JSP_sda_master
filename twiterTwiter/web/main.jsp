<%@ page import="pl.sda.services.UserService" %>
<%@ page import="pl.sda.models.User" %><%--
  Created by IntelliJ IDEA.
  User: Nutzer
  Date: 16/02/2020
  Time: 09:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona Glowna</title>
</head>
<body>
<%--  Teraz caly scriplet komentujemy bo prawie toi samo napisalismy w LoginController--%>
<%--<%
  String login = request.getParameter("login");
  String password = request.getParameter("password");
/*    tutaj teraz po stworzeniu methody loginUser i enuma UserService badamy
  czy login i haslo naszego usera sie zgadzaja z nasza "baza danych"- arrayList users:*/
 User user = UserService.INSTANCE.loginUser(login, password);
  if (user == null){
    response.sendRedirect("login.jsp");
  } else {
    request.getSession().setAttribute("user", user);
  }
%>--%>
<%--  /*  Cookie cookie = new Cookie("login", login);
  cookie.setMaxAge(60*5);
  response.addCookie(cookie);
  to co jest tutaj z cookie zmieniamy na rozwiazanie z session ponizej*/
//  request.getSession().setAttribute("login", login);
//    a teraz zmianiamy ta linie powyzej na setAttribute("user",user), teraz juz zajmujemy sie calymi obiektami
//    i dajemy to do else powyzej--%>
<%--  sa dwa sposoby na to :Zalogowany jako <%=request.getParameter("login")%> i ten ponizej:--%>
Zalogowany jako ${sessionScope.user.login}.
<%--  powyzej ${sessionScope.user.login}  nie musimy pisac .getLogin() takie udogodnienie w servletach,
inaczej jest w javie, ale tak tez dziala:
 Zalogowany jako ${sessionScope.user.login}.--%>
<%--  <a href="/form_login3_war_exploded/nowastrona.jsp">link</a>--%>
<a href="nowastrona.jsp">link</a>
</body>
</html>