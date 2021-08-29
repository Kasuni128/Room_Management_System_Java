<%@page import="com.oop.model.Booking"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.BookingServiceImpl"%>
<%@page import="com.oop.service.IBookingService"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "list.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "home.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>Room</title>
	<style>
		body{
		
	background:url("image/home.jpg");
	background-repeat: no-repeat;
    background-size: cover;

		}
		.list-button {
    background-color: green; 
    color: white;
    width: 100%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius:36px;
    font-size: 20px;
}
			
		#data{
		height: 700px;
		background:white;
		}
		
		ul li{
		padding:15px; white;
		border-bottom:  red;
		}
	
		ul li:hover{
		background: black;
		colour: white;
		text-decoration: none;
		}
	
		button {
		
		padding:4px;
		background-color:white;
		font-size:16px;
		color:black;
		}
		
		form{
			width:400px;
			background-color:black;
		}
		
		#sidebar{
			
			width: 250px;
			height: 350px;
			background:white;
			opacity:0.9;
			float:left;
			color:white;
		}
		
		#main{
		margin-left:5px;
		}
		
		
		#footer{
	background-color:black;
	opacity:.8;
	margin:20px;
	 margin-top:25px;
	height:50px;
	border-radius:10px;
	color:white;
	
	
}
#footer a{
	text-decoration:none;
	color:white;
}
#footer p{
	color:white;
}
	</style>
	
</head>
<body>


<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
			<td><h1 style="font-size:80px"> Royal Hotel</h1></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="Login.jsp" style="text-decoration:none"><h3 style="color: #e8daef">
			<form method="POST" action="afterhome.jsp" style="color:white; width:60px; border-color:black">Logout</form></h3></a></center></td>
		</tr>
		</table>
	
	</div>
	
	<div id="nav">	
		
		<table style="width:100%">
		<tr>
			<td><center><a href ="afterhome.jsp"><b> Home </b></a></center></td>
			
			<td><a href ="search.jsp"><b>Room </b></a></td>
			
			<td><a href ="gallery.jsp"><b>Gallery </b></a></td>
			
			<td><center><a href ="aboutus.jsp"><b> About US </b></a></center></td>
			
	
			
			<td><a href ="userprofile.jsp"><b>User Profile </b></a></td>
			
		</tr>
		</table>
	</div>

 <center>
 
		<table  style="width:100%">
	
		
	 
	  <table border="1" cellpadding="12">
	<center><h2 class="h2" style="font-size:36px; color:black;"><b>View Booking</b></h2></center>
	
		 
		 <a href="bookingc.html" style="text-decoration:none"><h2 style="color:black">+ Add Booking</h2></a>
		  <tr>
                <th><b>Booking ID</b></th>
                <th><b>Customer Name</b></th>
                <th><b>No Of Room</b></th>
                <th><b>Booking Date</b></th>
                <th><b>Booking Price</b></th>
                <th><b>Select</b></th>
            </tr>
            <%
            IBookingService iBookingService = new BookingServiceImpl();
			ArrayList<Booking> arrayList = iBookingService.getBookings();
			
			for(Booking booking : arrayList){
			%>
			 <tr>
				<td> <%=booking.getBookingID() %> </td>
				<td> <%=booking.getName() %> </td>
				<td> <%=booking.getNoRoom() %> </td>
				<td> <%=booking.getBookingDate() %> </td>
				<td> <%=booking.getPrice() %> </td>
				<td> 
				<form method="POST" action="GetBookingServletC">
				<input type="hidden" name="bookingID" value="<%=booking.getBookingID()%>"/>
				 <input type="submit" value= "Select Booking" class="select-button" /> 
				 </form>
				 </td>	
				</tr>			
			<%	
			   }
            %>     
		</table>
			</table>
		
<div id="footer">
		<table style="width:100%">
		<tr>
			<td><center><b>Hotline : </b></center></td>
			
			<td><b>071 6528117 </b></td>
			
			<td><center><b>Fax : </b></center></td>
			
			<td><b>086 6518 662</b></td>
			
			<td><center><b>Email :</b></center></td>
			
			<td><b>royalhotel@gmail.com </b></td>
			
			
  
</table>
</center>
	</div>			
		
</body>
</html>