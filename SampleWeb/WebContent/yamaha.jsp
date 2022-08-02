<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*" %>
<title>Vehicles</title>
</head>
<link href="produc.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="template.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<div>
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" /></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="vehicles.jsp" style="background-color: #05156E;">Vehicles</a></li>
			<li><a href="book.html">Booking</a></li>
			<li><a href="service.jsp">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
		<div class="search">
			<form action="">
				<input type="text" placeholder="Search..." name="search-info">
				<button type="submit" class="btn" onclick="MyCon.java"><i class="fa fa-search"></i></button>
			</form></div>
	<br>
	<%try{
		String brand=request.getParameter("brand");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Omkr786#");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from products where brand='"+brand+"'");
		%><h2 style="color: red; margin-left:100px;"><%=brand%></h2><div class="row"><%while(rs.next()){ %>
		<div class="card">
			<div class="bar"><div><img src="<%=rs.getString("image")%>" ></div><br><form action="desc.jsp" action="post">
			<div >
			&nbsp;&nbsp;<input type="text" name="vehicle" class="model" value="<%=rs.getString("name") %>" readonly><br>
			<p class="desc">
			&nbsp;&nbsp;<span class="d">Cost:&nbsp;</span>&#8377;<%=rs.getBigDecimal("cost") %>&nbsp;&nbsp;&nbsp;
			<span class="d">Mileage:&nbsp;</span><%=rs.getBigDecimal("mileage") %> kmpl<br>
			&nbsp;&nbsp;<span class="d">Year launched:&nbsp;</span><%=rs.getInt("year") %><br>
			&nbsp;&nbsp;<span class="d">Brand:&nbsp;</span><%=rs.getString("brand") %><br>
			&nbsp;&nbsp;<span class="d">Stocks in hold:</span><span class="r"><%=rs.getInt("stocks") %></span></p></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="View more" class="decription" >
			</form>
		</div></div>
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