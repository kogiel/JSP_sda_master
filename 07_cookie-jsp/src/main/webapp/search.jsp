<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="java.util.UUID" %>

<%
    // Create
    Cookie searchId = new Cookie("searchId", UUID.randomUUID().toString());
    // Set expiry date after 24 Hrs for both the cookies.
    searchId.setMaxAge(60*60*24);
    response.addCookie(searchId);
%>

<html>
<%
    String colorFromCookie = null;
    if(request.getCookies() != null) {
        for (Cookie c : request.getCookies()) {
            if (c.getName().equals("backgroundColor")) {
                colorFromCookie = c.getValue();
            }
        }
    }
%>
<%
    String color;
    if(colorFromCookie != null) {
        //ustawić color na backgroundColor
        color = colorFromCookie;
    } else {
        //ustawiamy kolor domyślny
        color = "orange";
    }
%>
<body style="background-color: <%=color%>">


        <h2>Search params:</h2>

        <form action="results.jsp" method="POST" >
            Title: <input type="text" name="title"/><br/>
            Sorting:
            <select name="sort">
                <option value="asc">ascending</option>
                <option value="desc">descending</option>
            </select><br/>
            <button type="submit">Search</button>
            <li><a href="index.jsp">MENU</a></li>

        </form>
    </body>
</html>
