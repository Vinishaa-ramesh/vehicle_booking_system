<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Check</title>
</head>
<body>
<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<%
	String user=request.getParameter("name1");
	String password=request.getParameter("pass1");
	String connectionUrl="jdbc:mysql://localhost:3306/project";
    Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from userdetails where username='"+user+"'");
	if(rs.next())
	{
		if(rs.getString(3).equals(password))
		{ 
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Welcome!!!!!!');");
			   out.println("location='profile.jsp?user="+user+"'");
			   out.println("</script>");
		   }
		else
		{
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('User or password incorrect');");
			   out.println("location='login.html'");
			   out.println("</script>");
		}
	}
	else
%>
</body>
</html>