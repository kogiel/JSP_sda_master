<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: yellow">
   <h2>Twitter Pigeon:</h2>
  <form action="pigeon-details.jsp" method="post" >
       Author: <input type="text" name="author"> </br>
       Message: <input type="text"  style="line-height:10" maxlenght="160" name="message">   </br>
             <input type="submit" value="Apply message">
        </form>
    </body>
</html>
