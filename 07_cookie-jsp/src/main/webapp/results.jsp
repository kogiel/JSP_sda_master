<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

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


        <h2>Movie search params:</h2>

        <ul>
            <li>Search title: <b><%=request.getParameter("title")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
            <li><a href="index.jsp">MENU</a></li>
            <li><a href="index.jsp">Search again</a></li>
        </ul>
    <% Cookie searchId = new Cookie("lastTitleSearch", request.getParameter("title"));
    searchId.setMaxAge(30);
    response.addCookie(searchId);
    %>

    </body>
</html>
