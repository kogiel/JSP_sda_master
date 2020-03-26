<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">

        <h2>Search params:</h2>

        <ul>

            <li>Search phrase: <b><%=request.getParameter("query")%></b></li>
            <li>Search page: <b><%=request.getParameter("page")%></b></li>
            <li>Search sort: <b><%=("desc".equals(request.getParameter("sort")) ? "desc" : "asc")%></b></li>
            <li>Search author: <b><%=request.getParameter("author")%></b></li>
     <li>Search rating: <b><%
                     String rating = request.getParameter("rating");
                     if(rating == null){
                         out.print(0);
                     } else {
                         int ratingAsNumber = Integer.parseInt(rating);
                         if (ratingAsNumber < 1 || ratingAsNumber > 9) {
                             out.print(0);
                         } else {
                             out.print(ratingAsNumber);
                         }
                     }
                     catch { (NumberFormatExeption e) {
                      out.print(0);
                      }
                 %></b></li>
            <li>Search category: <b><%=request.getParameter("category")%></b></li>
            <li>Search adultContent: <b><%=("true".equals(request.getParameter("adultContent")) ? "false" : "true")%></b></li>
            <li>Search includedAd: <b><%=("true".equals(request.getParameter("includedAd")) ? "false" : "true")%></b></li>

        </ul>
    </body>
</html>
