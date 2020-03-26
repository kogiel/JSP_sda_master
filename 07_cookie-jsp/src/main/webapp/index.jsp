<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<html>
<%
    String colorFromCookie = null;
    if(request.getCookies() != null) {
    for(Cookie c : request.getCookies()){
        if(c.getName().equals("backgroundColor")){
            colorFromCookie = c.getValue();
         }
      }
    }
%>
<%
    String color = request.getParameter("backgroundColor");
    if(color != null) {
        //zapisujemy color do ciasteczka
        Cookie cookie = new Cookie("backgroundColor", color);
        response.addCookie(cookie);
    } else if(colorFromCookie != null) {
        //ustawić color na backgroundColor
        color = colorFromCookie;
    } else {
        //ustawiamy kolor domyślny
        color = "orange";
    }
%>
<body style="background-color: <%=color%>">
<h2>Menu:</h2>
<ul>
    <li><a href="readCookies.jsp">See your cookies</a></li>
    <li><a href="search.jsp">Search for movie</a></li>
</ul>
<form action="index.jsp" method="POST">
    <select name="backgroundColor">
        <option value="red">Red</option>
        <option value="beige">Beige</option>
    </select>
    <input type="submit" value="Zmień kolor" />
</form>
</body>
</html>