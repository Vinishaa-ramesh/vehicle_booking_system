<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>
</head>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<body>
<link href="form.css" rel="stylesheet">
<link href="template.css" rel="stylesheet">
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" style="margin-top: -3%;"/></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="booking.html" style="background-color: #05156E;">Booking</a></li>
			<li><a href="service.jsp">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
<div class="form"><h1>Confirm Booking</h1></div>
<div class="inner">
<%try{
		String model=request.getParameter("model");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from products where name='"+model+"'");
		Random number= new Random();
		while(rs.next()){ %>
	<form action="payment.jsp" method="post">
	<div id="topic">
		<label for="name"><b>Name</b></label><br>
		<input type="text" placeholder="User name" name="name" required><br>
		<label for="email"><b>Email</b></label><br>
		<input type="text" placeholder="Email Address" name="email" required><br>
		<label for="phone"><b>Mobile Number</b></label><br>
		<input type="text" name="phone" placeholder="Mobile" required><br>
		<label for="mod"><b>Model</b></label><br>
		<input type="text" name="mod" value="<%=rs.getString("name")%>" required readonly><br>
		<label for="cost"><b>Cost</b></label><br>
		<input type="text" value="&#8377;<%=rs.getString("cost") %>" name="cost" required readonly><br>
		<label for="id"><b>Id</b></label><br>
		<input type="text" value=<%=Math.abs(number.nextInt()) %> name="id" required readonly><br>
		<label for="des"><b>Description</b></label><br><br>
		<textarea name="des" rows="5" cols="5" style="width:300px; height:150px;"></textarea><br>&emsp;&emsp;
		&emsp;&emsp;<button type="submit" name="pay">Pay Now</button>&emsp;&emsp;&emsp;&emsp;
		<button type="reset" name="cancel" onclick="location.reload()">Cancel</button>
	</div></form></form>
	<%}
	con.close();
	}catch(Exception e){System.out.println(e);}
	%>
</div><div>		
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col">
						<h5>Shopping</h5>
						<ul>
							<li><a href="index.html">Search</a></li>
							<li><a href="yamaha.jsp?brand=Hero">Hero</a></li>
							<li><a href="yamaha.jsp?brand=Honda">Honda</a></li>
							<li><a href="yamaha.jsp?brand=Yamaha">Yamaha</a></li>
							<li><a href="yamaha.jsp?brand=Bajaj">Bajaj</a></li>
							<li><a href="yamaha.jsp?brand=tvs">TVS</a></li>
						</ul>
					</div>
					<div class="col">
						<h5>Booking</h5>
						<ul>
							<li><a href="booking.jsp">Book now</a></li>
							<li><a href="payment.jsp">Payment</a></li>
							<li><a href="cancel.jsp">Cancel booking</a></li>
						</ul>
					</div>
					<div class="col">
						<h5>Services</h5>
						<ul>
							<li><a href="login.html">Check status</a></li>
							<li><a href="service.jsp">New entry</a></li>
							<li><a href="feed_out.jsp">Feedback</a></li>
						</ul>
					</div>
					<div class="col">
						<h5>Contact Us</h5>
						<ul>
							<li>9842310011</li>
							<li>No. 98, Vellore Main Road,<br>Tharapadavedu,(opp. Aascars theatre),<br>Katpadi,Vellore-632007</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>
