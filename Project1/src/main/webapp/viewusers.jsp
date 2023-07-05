
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.mtica.dao.UserDao, com.mtica.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h1>Student Details</h1>
	<%
	List<User> list = UserDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<table border="1" width=90%>
		<tr>
			<th>RollNo</th>
			<th>Student_Name</th>
			<th>Gender</th>
			<th>Student_AadharNo</th>
			<th>Mother_Name</th>
			<th>Mother_Aadhar</th>
			<th>Father_Name</th>
			<th>Father_Aadhar</th>
			<th>Occupation</th>
			<th>Income</th>
			<th>Date Of Birth</th>
			<th>Blood_Group</th>
			<th>Nationality</th>
			<th>Category Of Reservation</th>
			<th>Caste</th>
			<th>Address</th>
			<th>Mobile Number</th>
			<th>E-Mail</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getRollno()}</td>
				<td>${u.getStuname()}</td>
				<td>${u.getGender()}</td>
				<td>${u.getStuaadharno()}</td>
				<td>${u.getMname()}</td>
				<td>${u.getMaadharno()}</td>
				<td>${u.getFname()}</td>
				<td>${u.getFaadharno()}</td>
				<td>${u.getOccupation()}</td>
				<td>${u.getIncome()}</td>
				<td>${u.getDob()}</td>
				<td>${u.getBloodgroup()}</td>
				<td>${u.getNationality()}</td>
				<td>${u.getCor()}</td>
				<td>${u.getCaste()}</td>
				<td>${u.getAddress()}</td>
				<td>${u.getMobileno()}</td>
				<td>${u.getEmail()}</td>



				<td><a href="editform.jsp?id=${u.getRollno()}">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getRollno()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="application.html">Add New User</a>
</body>
</html>