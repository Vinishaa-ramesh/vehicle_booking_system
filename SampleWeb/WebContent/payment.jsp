<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<%@page import="java.util.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" href="pay.css">
<link rel="stylesheet" href="template.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
if(window.history.forward(1)!=null)
	window.history.forward(1)</script>
</head>
<body>
<div>
		<div class="main"><img class="banner" src="images/VISHAL MOTORS logo.png" /></div>
		<div class="nav-bar"><nav><ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="vehicles.jsp">Vehicles</a></li>
			<li><a href="book.html">Booking</a></li>
			<li><a href="service.jsp">Service</a></li>
			<li><a href="gallery.html">Gallery</a></li>
			<li><a href="login.html">Signup/Login</a>
		</ul></nav></div>
	</div>
<%
	String model=request.getParameter("mod");
	int total=0;
	try{
		String connectionUrl="jdbc:mysql://localhost:3306/project";
		Connection connection=null;
		Class.forName("com.mysql.jdbc.Driver");
		connection=DriverManager.getConnection(connectionUrl,"root","Omkr786#");
	Statement st=connection.createStatement();
	ResultSet rs1=st.executeQuery("select cost from products where name='"+model+"'");
	Random number= new Random();
	while(rs1.next()){
	%>

	
	<div class="container2">
	<div class="box">
	<form action="payj.jsp" method="post">
			<div class="split left">
				<p style="font-size:40px; text-shadow: 2px 2px #1F85DE;"><b>Checkout</b></p><br><br>
				<label for="name"><b>Name</b></label><br>
				<input type="text" placeholder="Full name" name="name" required><br><br>
				<label for="Email"><b>Email Address</b></label><br>
				<input type="text" placeholder="Email address" name="email" required><br><br>
				<label for="phone"><b>Mobile number</b></label><br>
				<input type="text" placeholder="Mobile number" name="phone" required><br><br>
				<label for="pay"><b>Payment Method:</b></label>
				<select name="pay" id="pay">
				<option value="Netbanking">Netbanking</option>
				<option value="Credit-card">Credit-card</option>
				<option value="Debit-card">Debit-card</option>
				<option value="Paypal">Paypal</option></select><br><br>
				<label for="trans"><b>Transaction ID:&nbsp;</b></label><input type="text" value=<%=Math.abs(number.nextInt()) %> name="trans" readonly><br><br>
				<label for="cost"><b>Cost:&nbsp;<input type="text" name="cost" readonly value=<%=rs1.getString("cost")%> /></b></label><br><br>
				<label for="mod"><b>Model:&nbsp;<input type="text" name="mod" readonly value=<%=model %> /></b></label><br><br>
				<button type="submit" class="button">Pay Now</button><br><br>
			</div>
		</form>
		<div class="split right">
		</div>
		</div>
		
		
<%}
}
catch(Exception e){
System.out.println(e);}%>
</div>
</body>
</html>