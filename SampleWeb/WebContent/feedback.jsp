<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<html><body>
<%
String name=request.getParameter("name");
String feedback=request.getParameter("des");

try{
	String connectionUrl="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
	PreparedStatement ps=connection.prepareStatement("insert into feedback values(?,?)");
	ps.setString(1,name);
	ps.setString(2,feedback);
	ps.executeUpdate();
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Thankyou for the feedback');");
	   out.println("location='feed_out.jsp'");
	   out.println("</script>");
}
catch(Exception e){
	System.out.println(e);
}
%>
</body></html>