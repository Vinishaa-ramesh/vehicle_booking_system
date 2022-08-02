<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
</head>
<body>
<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<%
String user=request.getParameter("name2");
String email=request.getParameter("mail");
String pass=request.getParameter("pass2");
String conpass=request.getParameter("pass3");
if(pass.equals(conpass))
{
try{
    String connectionUrl="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    Class.forName("com.mysql.jdbc.Driver");
connection=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
Statement st=connection.createStatement();
String strQuery="select count(*) from userdetails where email='"+email+"'";
ResultSet rs=st.executeQuery(strQuery);
rs.next();
String Countuser=rs.getString(1);
if(Countuser.equals("0")){
PreparedStatement ps=connection.prepareStatement("insert into userdetails (userName,email,password) values(?,?,?)");
ps.setString(1,user);
ps.setString(2,email);
ps.setString(3,pass);
int x=ps.executeUpdate();
if(x!=0){
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Congragulations on signing up');");
	out.println("location='index.html';");
	out.println("</script>");
}else{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Something Went Wrong');");
	out.println("location='login.html';");
	out.println("</script>");
}}
else{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Email already exists');");
	out.println("location='login.html';");
	out.println("</script>");}
}
catch (Exception e)
{
    out.println(e);
}
}
else{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Password Not Matching.... Please Check Your Password');");
	out.println("location='login.html';");
	out.println("</script>");

}
%>
</body>
</html>