<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<img src="image/ps2.png">
<% String name=(String)session.getAttribute("uname");
out.print("welcome"+name);
session.setAttribute("user",name);
%>
<%@ page import="java.util.Date" %> 
 Today is:<%=new Date() %>
</body>
</html>