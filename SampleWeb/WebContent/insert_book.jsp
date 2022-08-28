<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<html><body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String cost=request.getParameter("cost");
String model=request.getParameter("mod");
String id=request.getParameter("id");
String description=request.getParameter("des");

try{
	String connectionUrl="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection(connectionUrl,"root","password");
	PreparedStatement ps=connection.prepareStatement("insert into booking values(?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,phone);
	ps.setString(4,model);
	ps.setString(5,cost);
	ps.setString(6,id);
	ps.setString(7,description);
	ps.executeUpdate();
	response.sendRedirect("payment.jsp?mod="+model+"");
}
catch(Exception e){
	System.out.println(e);
}
%>
</body></html>
