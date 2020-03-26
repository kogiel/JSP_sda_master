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


        <h2>All cookies:</h2>

        <ul>
            <%
                Cookie cookie = null;
                Cookie[] cookies = null;

                // Get an array of Cookies associated with the this domain
                cookies = request.getCookies();

                if( cookies != null ) {
                    for (int i = 0; i < cookies.length; i++) {
                        cookie = cookies[i];
                        out.print("<li>Name : " + cookie.getName( ) + ",  ");
                        out.print("Value: " + cookie.getValue( )+" </li>");
                    }
                } else {
                    out.println("<li>No cookies founds</li>");
                }
            %>
            <li><a href="index.jsp">MENU</a></li>
        </ul>

    </body>
</html>
