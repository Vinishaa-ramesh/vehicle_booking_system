<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*" %>
<title>Vehicles</title>
</head>
<link href="desc.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="template.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<div>
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" /></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="vehicles.jsp" style="background-color: #05156E;">Vehicles</a></li>
			<li><a href="booking.jsp">Booking</a></li>
			<li><a href="service.jsp">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
	<br>
	<div>
	<%try{
		String vehicle=request.getParameter("vehicle");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","password");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from products where name='"+vehicle+"'");
		while(rs.next()){ %>
			<h1 class="title" ><%=rs.getString("name") %></h1><br>
			<img src="<%=rs.getString("image")%>" width= "auto" height="200px" class="vehicle"><br>
			<h3>Stocks available</h3>&nbsp;<h4 style="color: red; border: solid 1px red; border-radius:10px; width: 30px;">&nbsp;<%=rs.getString("stocks") %></h4><br>
			<a href="booking.jsp?model=<%=rs.getString("name")%>&stocks=<%=rs.getString("stocks") %>"><button type="submit">Book now</button></a><br>
			<h3>Cost</h3>&nbsp;&nbsp;<h4>&#8377;<%=rs.getString("cost") %></h4><br>
			<h3>Brand</h3>&nbsp;&nbsp;<h4><%=rs.getString("brand") %></h4><br>
			<h3>Mileage</h3>&nbsp;&nbsp;<h4><%=rs.getBigDecimal("mileage") %></h4><br>
			<h3>Engine</h3>&nbsp;&nbsp;<h4><%=rs.getString("engine") %></h4><br>
			<h3>Power</h3>&nbsp;&nbsp;<h4><%=rs.getString("max_power") %></h4><br>
			<h3>Fuel type</h3>&nbsp;&nbsp;<h4><%=rs.getString("fuel_type") %></h4><br>
			<h3>Wheels</h3>&nbsp;&nbsp;<h4><%=rs.getString("wheels_type") %></h4><br>
			<h3>Tyres</h3>&nbsp;&nbsp;<h4><%=rs.getString("tyre_type") %></h4><br>
			<h3>Year launched</h3>&nbsp;<h4><%=rs.getString("year") %></h4><br>
			<h3>Gear box</h3>&nbsp;&nbsp;<h4><%=rs.getString("gear_box") %></h4><br>
	<%}
	con.close();
	}catch(Exception e){System.out.println(e);}
	%>
	</div>
	<div>
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
