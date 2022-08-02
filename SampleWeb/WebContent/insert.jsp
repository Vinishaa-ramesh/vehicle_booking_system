<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<html><body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String payment=request.getParameter("pay");
String model=request.getParameter("mod");
String id=request.getParameter("id");
String problem=request.getParameter("des");

try{
	String connectionUrl="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
	PreparedStatement ps=connection.prepareStatement("insert into service values(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(7,"n");
	ps.setString(8,"0.0");
	ps.setString(3,phone);
	ps.setString(6,problem);
	ps.setString(4,model);
	ps.setString(5,id);
	ps.executeUpdate();
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Service booked - login to confirm');");
	   out.println("location='login.html'");
	   out.println("</script>");
}
catch(Exception e){
	System.out.println(e);
}
%>
</body></html>