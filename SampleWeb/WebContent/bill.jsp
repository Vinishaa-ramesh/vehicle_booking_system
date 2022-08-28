<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<link rel="stylesheet" href="template.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
button{
width: 25%;
  padding: 12px 20px;
  margin: 8px 0;
  background-image:linear-gradient(to bottom right,#13C6DB,#003295);
  border-radius:10px;
  color:white;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<div>
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" /></div>
		</div>
<p style="text-align:center; font-size:20px;"><b>
Vishal Motors<br><br>
9842310011<br><br>
No. 98, Vellore Main Road,<br><br>
Tharapadavedu,(opp. Aascars theatre),<br><br>
Katpadi,Vellore-632007<br><br>
</b></p>
<%
	
	String email=request.getParameter("email");
	try{
		String connectionUrl="jdbc:mysql://localhost:3306/project";
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection=DriverManager.getConnection(connectionUrl,"root","password");
	Statement st=connection.createStatement();
	ResultSet rs1=st.executeQuery("select * from payment where email='"+email+"'");
	while(rs1.next()){
	%>
<p style="text-align:center;">
	Name:<%=rs1.getString("name") %><br>
	Email:<%=rs1.getString("email") %><br>
	Phone:<%=rs1.getString("phone") %><br>
	Method of payment:<%=rs1.getString("payment") %><br>
	Transaction id:<%=rs1.getString("transaction") %><br>
	Model:<%=rs1.getString("model") %><br> 
	Total:<%=rs1.getInt("total") %><br></p>
 <%break;}
	}
	catch(Exception e){System.out.println(e);}
	%>
<form action="index.html" method="post"><a onclick="window.print();"><button type="button" style="margin-left: 25%";">Print bill</button></a>
<button type="submit">Home</button></form>

</body>

</html>
