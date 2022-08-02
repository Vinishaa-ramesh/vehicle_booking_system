<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
</head>

<%@page import="java.util.*" %>
<body>
<link href="form.css" rel="stylesheet">
<link href="template.css" rel="stylesheet">
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" style="margin-top: -3%;"/></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="book.html">Booking</a></li>
			<li><a href="service.jsp" style="background-color: #05156E;">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
<div class="form"><h1>Add service</h1></div>
<div class="inner">
<%Random number= new Random(); %>
	<form action="insert.jsp" method="post">
	<div id="topic">
		<label for="name"><b>Name</b></label><br>
		<input type="text" placeholder="User name" name="name" required><br>
		<label for="email"><b>Email</b></label><br>
		<input type="text" placeholder="Email Address" name="email" required><br>
		<label for="phone"><b>Mobile Number</b></label><br>
		<input type="text" name="phone" placeholder="Mobile" required><br>
		<label for="mod"><b>Model</b></label><br>
		<input type="text" name="mod" placeholder="brand-model" required ><br>
		<label for="id"><b>Service ID(save for future <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;reference)</b></label><br>
		<input type="text" value=<%=Math.abs(number.nextInt()) %> name="id" required readonly><br>
		<label for="des"><b>Problem</b></label><br><br>
		<input type="text" name="des" style="width:300px; overflow:hidden;"><br>&emsp;&emsp;
		&emsp;&emsp;<button type="submit" name="pay">Submit</button>&emsp;&emsp;&emsp;&emsp;
		<button type="reset" name="cancel" onclick="location.reload()">Cancel</button>
	</div></form>
</div>
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