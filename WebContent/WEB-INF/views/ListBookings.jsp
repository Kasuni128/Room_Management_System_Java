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
<title>Manage Booking</title>
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
		padding:15px;
		color: black;
		border-bottom:  red;
		}
	
		ul li:hover{
		background: red;
		colour: red;
		text-decoration: none;
		}
	
		button {
		
		padding:4px;
		background-color:white;
		font-size:16px;
		color:black;
		}
		
		form{
			width:300px;
			background-color:black;
		}
		
		#sidebar{
			
			width: 250px;
			height: 350px;
			background:white;
			opacity:0.9;
			float:left;
			color:black;
		}
		
		#main{
		margin-left:5px;
		}
		
		#header h1{
	
	font-family:Brush script ;
	color:yellow;
	margin-top:0px;
	float:lest;
}
		
	</style>
	
</head>
<body>
	<div id="header">
	
		<table style="width:100%" >
		<tr>
			<td><img src="image/logo1.jpg" width="200" height="100" align="left" style="float:left"/></td>
	<td><h1 style="font-size:60px">Royal Hotel</h1><h3 style="font-size:36px;margin-left:85px;color:yellow;">Admin Panel</h3></td>
			<td><center><a href ="afterhome.jsp"><img src="image/logout.jpg" width="100" height="80"/></a><a href ="afterhome.jsp" style="text-decoration:none"><h3 style="color: #e8daef">Log Out</h3></a></center></td>
			
		</tr>
		</table>
	
	</div>
	
	<br><br>
	<div id="sidebar">
		
		<ul>	
			<li><b> <a href="admin.jsp" style="text-decoration:none; color:black;" >Dashborad</a></b></li>
			<li><b> <a href="homeView.jsp" style="text-decoration:none; color:black;" >Manage Room</a></b></li>
			<li><b><a href="Booking.jsp" style="text-decoration:none; color:black;">Manage Booking</a></b></li>
			<li><b><a href="manageuser.jsp" style="text-decoration:none; color:black;">Manage User</a></b></li>
		</ul>
	
	</div>


	
		
	 
	  <table border="1" cellpadding="12">

	<h2 class="h2"><b>View Booking</b></h2>
	
		 
		 <a href="Booking.jsp" style="text-decoration:none"><h2>+ Add Booking</h2></a>
		  <tr>
                <th><b>Booking ID</b></th>
                <th><b>Customer Name</b></th>
                <th><b>No Of Room</b></th>
                <th><b>Booking Date</b></th>
                <th><b>Booking Price</b></th>
                <th><b>Action</b></th>
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
				<form method="POST" action="GetBookingServlet">
				<input type="hidden" name="bookingID" value="<%=booking.getBookingID()%>"/>
				 <input type="submit" value= "Select Booking" class="select-button" /> 
				 </form>
				 </td>	
				</tr>			
			<%	
			   }
            %>     
		</table>
		
	
		
</body>
</html>