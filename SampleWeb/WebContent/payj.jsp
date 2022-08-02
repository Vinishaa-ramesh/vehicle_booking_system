<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<html><body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String pay=request.getParameter("pay");
String model=request.getParameter("mod");
String trans=request.getParameter("trans");
String cost=request.getParameter("cost");

try{
	String connectionUrl="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
	PreparedStatement ps=connection.prepareStatement("insert into payment values(?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,trans);
	ps.setString(4,model);
	ps.setString(5,cost);
	ps.setString(6,pay);
	ps.setString(7,phone);
	ps.executeUpdate();
	response.sendRedirect("bill.jsp?email="+email+"");
}
catch(Exception e){
	System.out.println(e);
}
%>
</body></html>