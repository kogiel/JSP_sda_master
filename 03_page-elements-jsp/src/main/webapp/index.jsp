<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: #A1D303">
        <h2>Hello from index.jsp! </h2>

       <%--  <jsp:forward page="forward-destination.jsp" /> --%>

        <jsp:include page="indexx.jsp"/>

        <%-- <jsp:forward page="forward-destination.jsp" > --%>
        <%-- <jsp:param name="giftFromIndexJsp" value="gold" /> --%>
        <%-- </jsp:forward>--%>
        <%-- <jsp:include page="included-section.jsp"> --%>
        <%-- <jsp:param name="giftFromIndexJsp" value="silver" /> --%>


        <h2>Good bye from index.jsp! </h2>

    </body>
</html>
