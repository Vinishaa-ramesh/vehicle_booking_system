<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<html>
<title>Feedback</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="template.css" rel="stylesheet">
<link rel="stylesheet" href="feed.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<body>
	<div>
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" /></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html" style="background-color: #05156E;">Home</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="book.html">Booking</a></li>
			<li><a href="service.jsp">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
		
<div class="title" ><br><h2>Look what others say:</h2><br>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from feedback");
	while(rs.next()){ %>
	<br>
	<span style="font-size: 20px; width:70%; color: white; border-radius:10px; border-bottom: #fff 2px solid; background-width: 50%;"><%=rs.getString("feedback")%></span><br>
	<%}
}
catch(Exception e){
	System.out.println(e);
}
%>
</div>
<form action="feedback.jsp" method="post">
	<div class="title">
<br><br><br><h1>Say Hello</h1><br><br>
<br><h2>We are always ready to serve you</h2><br><br></div>
<div class="feed">
	<label for="name"><b>Name</b></label><br>
	<input type="text" placeholder="Full name" class="input" name="name" required><br>
	<label for="name"><b>Message</b></label><br>
	<textarea name="des" class="input" placeholder="Message" rows="5" style="height:150px;" required></textarea><br>
	<input type="submit" class="input submit" value="send">
</div>
</form>
</div>
</body>
</html>
