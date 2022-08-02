<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Profile</title>
<link rel="stylesheet" href="profile.css">
</head>
<body>
<div class="center">
	<div class="avatar">
	<img src="images/profile.png"></div>
	<div class="content">
<%@page import="java.sql.*" %>
<body style="text-align: center; padding:0px 200px;"><%String user=request.getParameter("user");%>
<h2>Logged in as <%=user %></h2>
<h3>Service status</h3><br><br><br>
<table width="80%">
<tr><td>Name</td><td>Model</td><td>Status</td><td>Cost</td></tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Omkr786#");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from service where username='"+user+"'");
	while(rs.next()){
%>
<tr>
<td><%=user %></td>
<td><%=rs.getString("model") %></td>
<td><%=rs.getString("completed") %></td>
<td><%=rs.getBigDecimal("cost") %></td>
</tr>
<%}
}
catch(Exception e){
	System.out.println(e);
}
%>
</table>
<br><a href="index.html"><button style="background-color: red; color: #fff; border-radius:5px; width: 10%; height: 40px;"><b>Logout</b></button></a> 
</body>
</html>
