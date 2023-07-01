<!DOCTYPE html>
<html>
<title>marquee Tag</title>
<body bgcolor=red>
<form action=abc.jsp>
<marquee width="50%">
You are welcomed to jsp
</marquee>
<%String name=request.getParameter("uname");
out.print("welcome"+name);
%>
Current Time;
<%=java.util.Calendar.getInstance().
getTime()%>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime());%>
<%! int data=50; %>
<%= "Value of the variable is:"+data %>
<%!
int cube(int n){
return n*n*n;
}
%>
<%= "Cube of 3 is:"+cube(3) %>
<input type="submit" value="go"><br/>
</form>
</body>
</html>