

<html>
<title>Today is...</title>
<body>
<p>Today is <%= java.time.Instant.now().toString() %></p>
<%-- Note no semicolon in end of expression! --%>
</body>
</html>
