<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">
        <h2>Search params:</h2>

        <form action="results.jsp" method="POST" >
            Title: <input type="text" name="title"/><br/>
            Sorting:
            <select name="sort">
                <option value="asc">ascending</option>
                <option value="desc">descending</option>
            </select><br/>
            <select name="category">
            <%
                for(Category category : Category.values()) {
                %>
             <option value="<%category.getDisplayName()%>"><%category.getDisplayName()%></option>
             <% } %>
             </select>

             <% for (int i=1; i<=9;i++

            <button type="sumbit" >Search</button>
        </form>
    </body>
</html>
