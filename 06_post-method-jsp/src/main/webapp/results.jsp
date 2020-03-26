<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Movie earch params:</h2>

        <ul>
            <li>Search title: <b><%=request.getParameter("title")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
            <li>Search category: <b><%=request.getParameter("category")%></b></li>
            <li>Search rating: <b><%=request.getParameter("rating")%></b></li>
            <li>Is for adult:  <b><%=request.getParameter("isForAdult") == null ? false : true %></b></li>
        </ul>

    </body>
</html>
